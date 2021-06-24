package com.dev.xrpwebtools.Model;

import com.fasterxml.jackson.databind.JsonNode;
import com.google.common.collect.ImmutableSet;
import com.google.common.primitives.UnsignedInteger;
import io.ipfs.api.IPFS;
import io.ipfs.api.MerkleNode;
import io.ipfs.api.NamedStreamable;
import io.ipfs.multihash.Multihash;
import okhttp3.HttpUrl;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.tuple.ImmutablePair;
import org.xrpl.xrpl4j.client.JsonRpcClient;
import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;
import org.xrpl.xrpl4j.client.JsonRpcRequest;
import org.xrpl.xrpl4j.client.XrplClient;
import org.xrpl.xrpl4j.client.faucet.FaucetClient;
import org.xrpl.xrpl4j.client.faucet.FundAccountRequest;
import org.xrpl.xrpl4j.model.client.XrplMethods;
import org.xrpl.xrpl4j.model.client.XrplResult;
import org.xrpl.xrpl4j.model.client.accounts.*;
import org.xrpl.xrpl4j.model.client.common.LedgerIndex;
import org.xrpl.xrpl4j.model.client.fees.FeeResult;
import org.xrpl.xrpl4j.model.client.transactions.SubmitResult;
import org.xrpl.xrpl4j.model.transactions.*;
import org.xrpl.xrpl4j.wallet.DefaultWalletFactory;
import org.xrpl.xrpl4j.wallet.SeedWalletGenerationResult;
import org.xrpl.xrpl4j.wallet.Wallet;
import org.xrpl.xrpl4j.wallet.WalletFactory;

import javax.xml.bind.DatatypeConverter;
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Optional;
import java.util.logging.Logger;

@SuppressWarnings({"UnstableApiUsage", "DanglingJavadoc"})
public class BLL {

    //////////////////////
    //Utils
    private final Logger logger = Logger.getLogger(BLL.class.getName());

    //////////////////////
    //XRP4j
    final String URL = "https://s.altnet.rippletest.net:51234/";
    private Wallet wallet;
    private XrplClient xrplClient;

    //////////////////////
    // Getters and Setters

    //Wallet
    private String walletseed;
    private Optional<String> walletSeed;

    public void setWalletseed(String walletseed) {
        this.walletseed = walletseed;
    }
    private int nftcounter;
    public int getNftcounter() {
        return nftcounter;
    }

    //Wallet Transaction
    private Hash256 transactionHASH;
    public Hash256 getTransactionHASH() {
        return transactionHASH;
    }

    //Others
    private String errorString;
    public void setErrorString(String errorString) {
        this.errorString = errorString;
    }
    public String getErrorString() {
        return errorString;
    }

    //One-Click NFT Wallet Based Creator
    private String contentType;
    public void setContentType(String contentType) {
        this.contentType = contentType;
    }
    private String domainValue = "";
    public String getDomainValue() {
        return domainValue;
    }
    public void setDomainValue(String domainValue) {
        this.domainValue = domainValue;
    }

    public static class xrpledger implements XrplResult {
        @Override
        public Optional<String> status() {
            return Optional.empty();
        }
    }

    //////////////////////
    // Wallet related data

    private WalletFactory walletFactory(){
        WalletFactory walletFactory = DefaultWalletFactory.getInstance();
        xrplClient = new XrplClient(HttpUrl.get(URL));
        return walletFactory;
    }

    public boolean isActive() throws  JsonRpcClientErrorException{
        wallet = walletFactory().fromSeed(walletseed,true);
        AccountInfoRequestParams params = AccountInfoRequestParams.builder()
                .account(wallet.classicAddress())
                .ledgerIndex(LedgerIndex.VALIDATED)
                .build();
        return xrplClient.accountInfo(params).validated();
    }

    public BigDecimal accountBalance() throws JsonRpcClientErrorException {
        AccountInfoResult accountInfoResult = xrplClient.accountInfo(AccountInfoRequestParams.of(wallet.classicAddress()));
        return accountInfoResult.accountData().balance().toXrp();
    }

    public Address classicAddress() {
        return wallet.classicAddress();
    }

    //////////////////////
    // XRP Account Modification / Transaction

    public <classicAddress, walletSeed> ImmutablePair<classicAddress, walletSeed> createXRPAccount(){
        SeedWalletGenerationResult seedResult = walletFactory().randomWallet(true);
        // Perform wallet activation if current network is TESTNET
        if(URL.equals("https://s.altnet.rippletest.net:51234/")){
            FaucetClient faucetClient = FaucetClient.construct(HttpUrl.get("https://faucet.altnet.rippletest.net"));
            faucetClient.fundAccount(FundAccountRequest.of(seedResult.wallet().classicAddress()));
        }
        return (ImmutablePair<classicAddress, walletSeed>) ImmutablePair.of(seedResult.wallet().classicAddress(), seedResult.seed());
    }

    public Hash256 sendXRP(String transferamount, int transactiontag, String transferaddress) throws JsonRpcClientErrorException {
        FeeResult feeResult = xrplClient.fee();
        AccountInfoRequestParams params = AccountInfoRequestParams.builder()
                .account(wallet.classicAddress())
                .ledgerIndex(LedgerIndex.VALIDATED)
                .build();
        xrplClient.accountInfo(params);
        AccountInfoResult accountInfo = xrplClient.accountInfo(params);

        XrpCurrencyAmount amount = XrpCurrencyAmount.ofXrp(BigDecimal.valueOf(Long.parseLong(transferamount)));
        Payment payment = Payment.builder()
                .account(wallet.classicAddress())
                .fee(feeResult.drops().openLedgerFee())
                .sequence(accountInfo.accountData().sequence())
                .destination(Address.of(transferaddress))
                .destinationTag(UnsignedInteger.valueOf(transactiontag))
                .amount(amount)
                .signingPublicKey(wallet.publicKey())
                .build();

        SubmitResult<Payment> result = xrplClient.submit(wallet, payment);
        return transactionHASH = result.transactionResult().transaction().hash().get();
        /**
         *   We just need the Transaction Hash, Below this is optional
        System.out.println("Payment successful: https://testnet.xrpl.org/transactions/" +
                result.transactionResult().transaction().hash()
                        .orElseThrow(() -> new RuntimeException("Result didn't have hash."))
        );
        TransactionResult<Payment> transactionResult = xrplClient.transaction(
                TransactionRequestParams.of(Hash256.of(String.valueOf(result.transactionResult().transaction().hash().get()))),
                Payment.class
        );
         **/
    }

    public Hash256 domainSet(String domainSet, Optional<String> walletSeed) throws JsonRpcClientErrorException {
        this.walletSeed = Optional.ofNullable(walletseed);
        String hex = DatatypeConverter.printHexBinary(domainSet.getBytes());
        wallet = walletFactory().fromSeed(walletSeed.get(),true);

        AccountInfoResult accountInfoResult = xrplClient.accountInfo(AccountInfoRequestParams.of(wallet.classicAddress()));
        FeeResult feeResult = xrplClient.fee();
        AccountSet domainset = AccountSet.builder()
                .account(wallet.classicAddress())
                .fee(feeResult.drops().openLedgerFee())
                .domain(hex)
                .setFlag(AccountSet.AccountSetFlag.ACCOUNT_TXN_ID)
                .sequence(accountInfoResult.accountData().sequence())
                .signingPublicKey(wallet.publicKey())
                .build();
        domainValue = "";
        SubmitResult<AccountSet> result = xrplClient.submit(wallet, domainset);
        return transactionHASH = result.transactionResult().transaction().hash().get();
    }

    public UnsignedInteger ownerCount() throws JsonRpcClientErrorException {
        AccountInfoResult accountInfoResult = xrplClient.accountInfo(AccountInfoRequestParams.of(wallet.classicAddress()));
        return accountInfoResult.accountData().ownerCount();
    }

    public String nftCoins() throws JsonRpcClientErrorException {
            JsonRpcClient jsonRpcClient = JsonRpcClient.construct(okhttp3.HttpUrl.get(URL));
            ImmutableAccountChannelsRequestParams params = ImmutableAccountChannelsRequestParams.builder()
                    .account(Address.of(String.valueOf(wallet.classicAddress())))
                    .build();
            JsonRpcRequest request = JsonRpcRequest.builder()
                    .method(XrplMethods.ACCOUNT_CURRENCIES)
                    .params(ImmutableSet.of(params))
                    .build();
            jsonRpcClient.send(request, xrpledger.class);
            JsonNode jsonArray = jsonRpcClient.postRpcRequest(request).get("result").get("send_currencies");
            String[] currencies = new String[jsonArray.size()];
            for(int x = 0; x < jsonArray.size(); x++){
                if(jsonArray.get(x).asText().length() == 40){
                    currencies[x] = jsonArray.get(x).asText();
                    byte[] s = DatatypeConverter.parseHexBinary(currencies[x]);
                    currencies[x] = new String(s).replaceAll("\\p{C}", "");
                }else{
                    currencies[x] = jsonArray.get(x).asText();
                }
                nftcounter++;
            }
            StringBuilder nftCoins = new StringBuilder();
            for(int x = 0; x < jsonArray.size(); x++){
                nftCoins.append(currencies[x]+",").append(" ");
            }
            if(nftCoins.length() == 0){
                nftCoins.append("No Tokens/IOU issued to you.");
            }
            return StringUtils.removeEnd(nftCoins.toString(), ", ");
    }

    //////////////////////
    // One-Click NFT Wallet Based Creator

    public Multihash createIPFS(byte[] data, String... path) throws IOException {
        IPFS ipfs = new IPFS("/ip4/127.0.0.1/tcp/5001");
        MerkleNode addResult;
        if(data != null){
            NamedStreamable.ByteArrayWrapper byteArrayWrapper = new NamedStreamable.ByteArrayWrapper(" ", data);
            addResult = ipfs.add(byteArrayWrapper).get(0);
        }else{
            NamedStreamable.FileWrapper fileWrapper = new NamedStreamable.FileWrapper(new File(Arrays.toString(path)));
            addResult = ipfs.add(fileWrapper).get(0);
        }
        return addResult.hash;
    }

    public String domainValue(int type, String key, Optional<String> value){
        StringBuilder sb = new StringBuilder();
        if(domainValue.equals("")){
            sb.append("@xnft:\n");
        }
        if(type == 1){
            sb.append(key+":"+value.get()+"\n");
        }else if(type == 3){
            sb.setLength(0);
        }
        return domainValue += sb.toString();
    }

    public Hash256 NFThtml(byte[] image) throws JsonRpcClientErrorException, IOException {
        Multihash NFTHash = createIPFS(image);

        String METATitle = "testpage";
        String Author = "FRANCIS MICO ROSARIO";
        String AuthorEmail = "francismico.rosario@benilde.edu.ph";
        String Twitter = "@FrancisRosario_";
        String Website = "null";
        String CreatedAt = "https://xrptools-web-dev.herokuapp.com/";
        String NFTBuilder = "https://github.com/francisrosario/XRPTools-JaveEE";

        String photo = "<div id=\"card\">\n" +
                "            <img src=\"https://gateway.pinata.cloud/ipfs/"+NFTHash+"\" width=\"620\">\n" +
                "        </div>";

        StringBuilder sb = new StringBuilder();
        sb.append("<html lang=\"en\">\n" +
                "    <head>\n" +
                "        <title>XRP NFT:"+METATitle+"</title>\n" +
                "    </head>\n" +
                "    <style>\n" +
                "        body,html {\n" +
                "            margin: 0;\n" +
                "            padding: 0;\n" +
                "            font-family: \"Helvetica\", sans-serif;\n" +
                "            background: linear-gradient(-45deg, #d34d24, #ac1d54, #2e8fb3, #40b499);\n" +
                "            background-size: 500% 500%;\n" +
                "            animation: gradient 60s ease infinite;\n" +
                "            height: 100%;\n" +
                "        }\n" +
                "        @keyframes gradient {\n" +
                "            0% {\n" +
                "                background-position: 0% 50%;\n" +
                "            }\n" +
                "            50% {\n" +
                "                background-position: 100% 50%;\n" +
                "            }\n" +
                "            100% {\n" +
                "                background-position: 0% 50%;\n" +
                "            }\n" +
                "        }\n" +
                "        h1 {\n" +
                "            font-size: 36px;\n" +
                "            margin: 10px 0 0 0;\n" +
                "            font-weight: lighter;\n" +
                "            text-transform: uppercase;\n" +
                "            color: #ffffff;\n" +
                "        }\n" +
                "        p {\n" +
                "            font-size: 16px;\n" +
                "            font-family: sans-serif;\n" +
                "            font-weight: bolder;\n" +
                "            color: #f8f8f8;\n" +
                "            max-width: 50%;\n" +
                "            text-align: left;\n" +
                "        }\n" +
                "        #header {\n" +
                "            position: absolute;\n" +
                "            left: 0;\n" +
                "            top: 0;\n" +
                "            padding:10px 20px;\n" +
                "            font-size: 24px;\n" +
                "            width: 100%;\n" +
                "            background-color: #ffffff;\n" +
                "            background: #ffff;\n" +
                "            border-bottom: 1px solid #1f1209;\n" +
                "            box-shadow: 0 10px 20px -10px rgb(0, 0, 0);\n" +
                "            box-sizing:border-box;\n" +
                "            -moz-box-sizing:border-box;\n" +
                "            -webkit-box-sizing:border-box;\n" +
                "            -ms-box-sizing:border-box; \n" +
                "        }\n" +
                "        #canvas {\n" +
                "            min-height: 100%;\n" +
                "            position: absolute;\n" +
                "        }\n" +
                "        #container {\n" +
                "            padding-top: 120px;\n" +
                "            display: flex;\n" +
                "            justify-content: center;\n" +
                "            flex-direction: column;\n" +
                "            align-items: center;\n" +
                "            transform: translatey(0px);\n" +
                "        }\n" +
                "        #card {\n" +
                "            transform: translatey(0px);\n" +
                "            animation: float 5s ease-in-out infinite;\n" +
                "            text-align: center;\n" +
                "            padding: 100px;\n" +
                "            border-radius: 10px;\n" +
                "            background: -webkit-radial-gradient(center center, rgb(35, 37, 38, 0.85) 0%, rgb(65, 67, 69, 0.75) 100%);\n" +
                "        }\n" +
                "        @keyframes float {\n" +
                "            0% {\n" +
                "                box-shadow: 0 5px 15px 0px rgba(0, 0, 0, 0.6);\n" +
                "                transform: translatey(0px);\n" +
                "            }\n" +
                "            50% {\n" +
                "                box-shadow: 0 25px 15px 0px rgba(0, 0, 0, 0.2);\n" +
                "                transform: translatey(-20px);\n" +
                "            }\n" +
                "            100% {\n" +
                "                box-shadow: 0 5px 15px 0px rgba(0, 0, 0, 0.6);\n" +
                "                transform: translatey(0px);\n" +
                "            }\n" +
                "        }\n" +
                "        #content {\n" +
                "            padding-top: 20px;\n" +
                "            text-align: center;\n" +
                "            display: flex;\n" +
                "            justify-content: center;\n" +
                "            flex-direction: column;\n" +
                "            align-items: center;\n" +
                "        }\n" +
                "        .styled-table {\n" +
                "            border-collapse:collapse;\n" +
                "            margin: 25px 0;\n" +
                "            font-size: 16px;\n" +
                "            font-family: sans-serif;\n" +
                "            box-shadow: 0 25px 15px 0px rgba(0, 0, 0, 0.2);\n" +
                "            max-width: 75%;\n" +
                "        }\n" +
                "        .styled-table thead tr {\n" +
                "            background-color: #030833;\n" +
                "            color: #ffffff;\n" +
                "            text-align: center;\n" +
                "            font-size: 18px;\n" +
                "        }\n" +
                "        .styled-table th, .styled-table td {\n" +
                "            padding: 14px 16px;\n" +
                "        }\n" +
                "        .styled-table tbody tr {\n" +
                "            border-bottom: 1px solid #dddddd;\n" +
                "        }\n" +
                "        .styled-table tbody tr:nth-of-type(even) {\n" +
                "            background-color: rgb(255, 255, 255, 0.75);\n" +
                "        }\n" +
                "        .styled-table tbody tr:nth-of-type(odd) {\n" +
                "            background-color: rgb(255, 255, 255, 0.85);\n" +
                "        }\n" +
                "        .styled-table tbody tr.active-row {\n" +
                "            font-weight: bold;\n" +
                "            color: #180141;\n" +
                "\n" +
                "        }\n" +
                "        .styled-table thead {\n" +
                "            display: table-header-group;\n" +
                "            vertical-align: middle;\n" +
                "            border-color: inherit;\n" +
                "            border-collapse: separate;\n" +
                "        }\n" +
                "        th:first-of-type {\n" +
                "            border-top-left-radius: 10px;\n" +
                "        }\n" +
                "        th:last-of-type {\n" +
                "            border-top-right-radius: 10px;\n" +
                "        }\n" +
                "    </style>\n" +
                "    <canvas id=\"canvas\"></canvas>\n" +
                "    <div id=\"header\">\n" +
                "        <svg height=\"36\" viewBox=\"0 0 512 143\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\">\n" +
                "            <g id=\"Canvas\" fill=\"none\">\n" +
                "                <g id=\"xrp-text-mark-black\">\n" +
                "                    <g id=\"Group\">\n" +
                "                        <path id=\"Vector\" d=\"M 143.928 0L 168.372 0L 117.518 51.4245C 99.1086 70.0395 69.2627 70.0395 50.8541 51.4245L 8.30456e-09 0L 24.4431 0L 63.0757 39.0659C 74.7345 50.8554 93.6366 50.8554 105.295 39.0659L 143.928 0Z\" transform=\"translate(0.311646 0)\" fill=\"#23292F\"/>\n" +
                "                        <path id=\"Vector_2\" d=\"M 24.4432 65.7034L 0 65.7034L 51.1682 13.9612C 69.5768 -4.65374 99.4227 -4.65374 117.832 13.9612L 169 65.7034L 144.557 65.7034L 105.61 26.3196C 93.9508 14.53 75.0486 14.53 63.3899 26.3196L 24.4432 65.7034Z\" transform=\"translate(0 77.2965)\" fill=\"#23292F\"/>\n" +
                "                    </g>\n" +
                "                    <path id=\"Union\" fill-rule=\"evenodd\" clip-rule=\"evenodd\" d=\"M 73.1365 0L 73.1637 0.000372426C 79.4083 0.129969 85.2723 1.35704 90.7291 3.69537C 96.275 5.8933 101.147 8.93696 105.324 12.8252C 109.518 16.7277 112.793 21.3388 115.154 26.6325C 117.528 31.8339 118.71 37.3548 118.71 43.1721C 118.71 49.1231 117.457 54.7736 114.946 60.102C 112.58 65.2803 109.236 69.8798 104.928 73.8884C 100.742 77.7837 95.8004 80.8874 90.1272 83.2056L 90.1005 83.2164C 84.5016 85.4307 78.4991 86.5289 72.1193 86.5289L 18.7701 86.5289L 18.7701 142.515L 0 142.515L 0 0.000372426L 73.1365 0ZM 72.1193 69.2464C 75.8827 69.2464 79.4447 68.5705 82.8275 67.2212C 86.2414 65.8594 89.2106 63.9962 91.7548 61.6288C 94.2985 59.2618 96.3007 56.4982 97.7642 53.3212C 99.2095 50.1826 99.9402 46.8071 99.9402 43.1721C 99.9402 39.6704 99.2138 36.356 97.7642 33.2077C 96.3007 30.0307 94.2985 27.2671 91.7548 24.9001C 89.2106 22.5331 86.2414 20.6696 82.8275 19.3077C 79.4447 17.9588 75.8827 17.2829 72.1193 17.2829L 18.7701 17.2829L 18.7701 69.2464L 72.1193 69.2464Z\" transform=\"translate(393.29 0)\" fill=\"#23292F\"/>\n" +
                "                    <path id=\"Union_2\" d=\"M 45.7768 86.8257C 55.1828 86.8257 64.0833 90.7999 69.9857 97.6349L 108.742 142.515L 132.871 142.515L 79.8436 80.2913C 73.9448 73.3694 64.9858 69.3359 55.5094 69.3359L 18.7701 69.3359L 18.7701 17.4902L 72.1198 17.4902C 75.8827 17.4902 79.4447 18.167 82.8275 19.5176C 86.2419 20.8809 89.2111 22.7468 91.7548 25.1172L 91.7976 25.156C 94.315 27.3903 96.3055 30.0792 97.7642 33.2513C 99.2095 36.394 99.9401 39.7731 99.9401 43.4129C 99.9401 47.0474 99.2116 50.422 97.7706 53.5606C 96.8962 55.3918 95.8268 57.0993 94.5605 58.6863L 106.774 72.3171C 106.927 72.1564 107.078 71.9946 107.229 71.8316C 110.84 67.9484 113.623 63.6069 115.572 58.8164C 117.669 53.9875 118.71 48.8462 118.71 43.4129C 118.71 37.5873 117.528 32.06 115.154 26.8519C 112.794 21.5506 109.518 16.9342 105.324 13.026C 101.151 9.13794 96.2879 6.03255 90.7526 3.71021C 85.2895 1.36215 79.418 0.130137 73.1637 0.000745722L 73.1365 0L 9.3853 0C 6.81059 0 4.55556 0.969876 2.69921 2.69932C 0.924157 4.35344 0 6.40953 0 8.74492L 0 142.515L 18.7701 142.515L 18.7701 86.8257L 45.7768 86.8257Z\" transform=\"translate(211.163 0)\" fill=\"#23292F\"/>\n" +
                "                </g>\n" +
                "            </g>\n" +
                "        </svg> NFT\n" +
                "    </div><br><br><br><br><br><br><br><br>" +
                "    \n" + photo +
                "        <div id=\"content\">\n" +
                "            <h1>"+METATitle+"</h1>\n" +
                "                    <table class=\"styled-table\">\n" +
                "                <thead>\n" +
                "                    <tr>\n" +
                "                        <th>Name</th>\n" +
                "                        <th>Value</th>\n" +
                "                    </tr>\n" +
                "                </thead>\n" +
                "                <tbody>\n" +
                "                    <tr>\n" +
                "                        <td>Author</td>\n" +
                "                        <td>"+Author+"</td>\n" +
                "                    </tr>\n" +
                "                    <tr>\n" +
                "                        <td>Author Wallet</td>\n" +
                "                        <td>"+wallet.classicAddress()+"</td>\n" +
                "                    </tr>\n" +
                "                    <tr>\n" +
                "                        <td>Author Email</td>\n" +
                "                        <td>"+AuthorEmail+"</td>\n" +
                "                    </tr>\n" +
                "                    <tr>\n" +
                "                        <td>Author Twitter</td>\n" +
                "                        <td>"+Twitter+"</td>\n" +
                "                    </tr>\n" +
                "                    <tr>\n" +
                "                        <td>Author Website</td>\n" +
                "                        <td>"+Website+"</td>\n" +
                "                    </tr>\n" +
                "                    <tr>\n" +
                "                        <td>Created at</td>\n" +
                "                        <td>"+CreatedAt+"</td>\n" +
                "                    </tr>\n" +
                "                    <tr>\n" +
                "                        <td>NFT Builder</td>\n" +
                "                        <td>"+NFTBuilder+"</td>\n" +
                "                    </tr>\n" +
                "                </tbody>\n" +
                "            </table>\n" +
                "        </div>\n" +
                "    </div>\n" +
                "    <script>\n" +
                "        //Stop video moving on play\n" +
                "        const video = document.querySelector('video');\n" +
                "        video.addEventListener('play', (event) => {\n" +
                "            document.getElementById(\"card\").getAnimations()[0].pause();\n" +
                "        });\n" +
                "        //Start video moving on pause\n" +
                "        video.addEventListener('pause', (event) => {\n" +
                "            document.getElementById(\"card\").getAnimations()[0].play();\n" +
                "        });\n" +
                "\n" +
                "        //Floaters\n" +
                "        var canvas = document.getElementById(\"canvas\");\n" +
                "        var ctx = canvas.getContext(\"2d\");\n" +
                "        canvas.width = window.innerWidth;\n" +
                "        canvas.height = window.innerHeight;\n" +
                "        var particles = [];\n" +
                "\n" +
                "        var Particle = function () {\n" +
                "            this.x = canvas.width * Math.random();\n" +
                "            this.y = canvas.height * Math.random();\n" +
                "            this.vx = 4 * Math.random() - 2;\n" +
                "            this.vy = 4 * Math.random() - 2;\n" +
                "            this.Color = \"rgb(255, 255, 255)\";\n" +
                "        }\n" +
                "        Particle.prototype.Draw = function (ctx) {\n" +
                "            ctx.fillStyle = this.Color;\n" +
                "            ctx.fillRect(this.x, this.y, 2, 2);\n" +
                "        }\n" +
                "        Particle.prototype.Update = function () {\n" +
                "            this.x += this.vx;\n" +
                "            this.y += this.vy;\n" +
                "        \n" +
                "            if (this.x<0 || this.x > canvas.width)\n" +
                "                this.vx = -this.vx;\n" +
                "        \n" +
                "            if (this.y < 0 || this.y > canvas.height)\n" +
                "                this.vy = -this.vy;\n" +
                "        }\n" +
                "        function loop() {\n" +
                "            ctx.clearRect(0, 0, canvas.width, canvas.height);\n" +
                "            for (var i = 0; i < 45; i++) {\n" +
                "                particles[i].Update();\n" +
                "                particles[i].Draw(ctx);\n" +
                "            }\n" +
                "            requestAnimationFrame(loop);\n" +
                "        }\n" +
                "        //Create particles\n" +
                "        for (var i = 0; i < 45; i++)\n" +
                "            particles.push(new Particle());\n" +
                "        loop();\n" +
                "    </script>\n" +
                "</body></html>");
        sb.toString();
        Multihash HTMLHash = createIPFS(sb.toString().getBytes());
        domainValue(1,"ipfs", Optional.ofNullable(String.valueOf(HTMLHash)));
        domainValue(1,"ipfs-img", Optional.ofNullable(String.valueOf(NFTHash)));

        return domainSet(domainValue, Optional.of("sEdSXyBmes961L81tewAsmjVvNXYkWA"));
    }
}
