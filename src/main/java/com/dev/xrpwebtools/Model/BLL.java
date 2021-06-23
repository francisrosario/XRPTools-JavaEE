package com.dev.xrpwebtools.Model;

import com.fasterxml.jackson.databind.JsonNode;
import com.google.common.collect.ImmutableSet;
import com.google.common.primitives.UnsignedInteger;
import io.ipfs.api.IPFS;
import io.ipfs.api.MerkleNode;
import io.ipfs.api.NamedStreamable;
import okhttp3.HttpUrl;
import org.apache.commons.lang3.StringUtils;
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
import org.xrpl.xrpl4j.model.transactions.Address;
import org.xrpl.xrpl4j.model.transactions.Hash256;
import org.xrpl.xrpl4j.model.transactions.Payment;
import org.xrpl.xrpl4j.model.transactions.XrpCurrencyAmount;
import org.xrpl.xrpl4j.wallet.DefaultWalletFactory;
import org.xrpl.xrpl4j.wallet.SeedWalletGenerationResult;
import org.xrpl.xrpl4j.wallet.Wallet;
import org.xrpl.xrpl4j.wallet.WalletFactory;

import javax.xml.bind.DatatypeConverter;
import java.io.IOException;
import java.math.BigDecimal;
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


    private void doConn(){
        WalletFactory walletFactory = DefaultWalletFactory.getInstance();
        wallet = walletFactory.fromSeed(walletseed, false);
        xrplClient = new XrplClient(HttpUrl.get(URL));
    }

    //////////////////////
    // Getters and Setters

    //Wallet
    private String walletseed;
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


    public static class xrpledger implements XrplResult {
        @Override
        public Optional<String> status() {
            return Optional.empty();
        }
    }
    //////////////////////
    // Wallet related data
    public boolean isActive() throws  JsonRpcClientErrorException{
        doConn();
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
    public String createXRPAccount(DefaultWalletFactory walletFactory){
        SeedWalletGenerationResult seedResult = walletFactory.randomWallet(true);
        // Perform wallet activation if current network is TESTNET
        if(URL.equals("https://s.altnet.rippletest.net:51234/")){
            FaucetClient faucetClient = FaucetClient.construct(HttpUrl.get("https://faucet.altnet.rippletest.net"));
            faucetClient.fundAccount(FundAccountRequest.of(seedResult.wallet().classicAddress()));
        }
        //Example of usage in JSP: <%=xrpconn.createXRPAccount((DefaultWalletFactory) DefaultWalletFactory.getInstance())%>
        return "Classic Address : " + seedResult.wallet().classicAddress() + "Seed Key : " + seedResult.seed();
    }
    public Hash256 sendXRP(String transfermount, int transactiontag, String transferaddress) throws JsonRpcClientErrorException {
        FeeResult feeResult = xrplClient.fee();
        AccountInfoRequestParams params = AccountInfoRequestParams.builder()
                .account(wallet.classicAddress())
                .ledgerIndex(LedgerIndex.VALIDATED)
                .build();
        xrplClient.accountInfo(params);
        AccountInfoResult accountInfo = xrplClient.accountInfo(params);

        XrpCurrencyAmount amount = XrpCurrencyAmount.ofXrp(BigDecimal.valueOf(Long.parseLong(transfermount)));
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
        System.out.println("Payment successful: https://testnet.xrpl.org/transactions/" +
                result.transactionResult().transaction().hash()
                        .orElseThrow(() -> new RuntimeException("Result didn't have hash."))
        );
         **/
        // We just need the Transaction Hash, Below this is optional
        /**
        TransactionResult<Payment> transactionResult = xrplClient.transaction(
                TransactionRequestParams.of(Hash256.of(String.valueOf(result.transactionResult().transaction().hash().get()))),
                Payment.class
        );
         **/
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
    public String NFTHash(byte[] data) throws IOException {
        //Base64.getEncoder().encodeToString(fileAsByteArray) - for Base64;
        IPFS ipfs = new IPFS("/ip4/127.0.0.1/tcp/5001");
        NamedStreamable.ByteArrayWrapper file = new NamedStreamable.ByteArrayWrapper(" ", data);
        MerkleNode addResult = ipfs.add(file).get(0);
        return StringUtils.removeEnd(addResult.toString(), "- ");
    }
}
