package com.dev.xrpwebtools.Model;

import com.fasterxml.jackson.databind.JsonNode;
import com.google.common.collect.ImmutableSet;
import com.google.common.primitives.UnsignedInteger;
import com.mgnt.utils.TimeUtils;
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
import org.xrpl.xrpl4j.model.client.ledger.LedgerRequestParams;
import org.xrpl.xrpl4j.model.client.ledger.LedgerResult;
import org.xrpl.xrpl4j.model.client.transactions.SubmitResult;
import org.xrpl.xrpl4j.model.client.transactions.TransactionRequestParams;
import org.xrpl.xrpl4j.model.client.transactions.TransactionResult;
import org.xrpl.xrpl4j.model.ledger.AccountRootObject;
import org.xrpl.xrpl4j.model.transactions.*;
import org.xrpl.xrpl4j.wallet.DefaultWalletFactory;
import org.xrpl.xrpl4j.wallet.SeedWalletGenerationResult;
import org.xrpl.xrpl4j.wallet.Wallet;
import org.xrpl.xrpl4j.wallet.WalletFactory;

import javax.xml.bind.DatatypeConverter;
import java.math.BigDecimal;
import java.util.Optional;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

public class xrp4j {

    //////////////////////
    //Utils
    private final Logger logger = Logger.getLogger(xrp4j.class.getName());

    //////////////////////
    //XRP4j
    final String URL = "https://s.altnet.rippletest.net:51234/";
    private Wallet wallet;
    private XrplClient xrplClient;

    //////////////////////
    // Getters and Setters

    //Wallet
    private String walletseed;
    private byte[] itemByte;
    private Payment result;
    private Object object;

    public void setWalletseed(String walletseed) {
        this.walletseed = walletseed;
    }
    private int nftcounter;
    public int getNftcounter() {
        return nftcounter;
    }

    //Wallet Transaction
    private Hash256 transactionHash;
    public Hash256 gettransactionHash() {
        return transactionHash;
    }
    public void settransactionHash(Hash256 transactionHASH) {
        this.transactionHash = transactionHASH;
    }

    //Others
    private String errorString = "";
    public void setErrorString(String errorString) {
        this.errorString = errorString;
    }
    public String getErrorString() {
        return errorString;
    }
    private String infoString = "";
    public String getInfoString() {
        return infoString;
    }
    public void setInfoString(String infoString) {
        this.infoString = infoString;
    }

    //One-Click NFT Wallet Based Creator
    private String contentType;
    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    //////////////////////
    // Wallet related data

    private WalletFactory walletFactory(){
        WalletFactory walletFactory = DefaultWalletFactory.getInstance();
        xrplClient = new XrplClient(HttpUrl.get(URL));
        return walletFactory;
    }

    public boolean isValidated() {
        boolean isValidated = false;
        try {
            wallet = walletFactory().fromSeed(walletseed, true);
            AccountInfoRequestParams params = AccountInfoRequestParams.builder()
                    .account(wallet.classicAddress())
                    .ledgerIndex(LedgerIndex.VALIDATED)
                    .build();
            isValidated = xrplClient.accountInfo(params).validated();
        }catch (JsonRpcClientErrorException err){
            logger.log(Level.SEVERE, err.getMessage());
        }
        return isValidated;
    }

    public BigDecimal getAccountBalance() {
        BigDecimal accountBalance = null;
        try {
            AccountInfoResult accountInfoResult = xrplClient.accountInfo(AccountInfoRequestParams.of(wallet.classicAddress()));
            accountBalance = accountInfoResult.accountData().balance().toXrp();
        }catch (JsonRpcClientErrorException err){
            logger.log(Level.SEVERE, err.getMessage());
        }
        return accountBalance;
    }

    public Address getClassicAddress() {
        return wallet.classicAddress();
    }

    //////////////////////
    // Ledger related data

    public XrplClient xrpclient(){
        return new XrplClient(HttpUrl.get(URL));
    }

    public Long getledgerCI() throws JsonRpcClientErrorException {
        LedgerResult ledgerResult = xrpclient().ledger(LedgerRequestParams.builder()
                .ledgerIndex(LedgerIndex.CURRENT)
                .build());
        return Long.valueOf(String.valueOf(ledgerResult.ledger().ledgerIndex()));
    }

    public LedgerResult getledgerResult(Long ledgerIndex) throws JsonRpcClientErrorException {
        return xrpclient().ledger(LedgerRequestParams.builder()
                .ledgerIndex(LedgerIndex.of(String.valueOf(ledgerIndex)))
                .transactions(true)
                .build());
    }

    public AccountRootObject getInfo(String account, Long index) throws JsonRpcClientErrorException {
        AccountInfoRequestParams params = AccountInfoRequestParams.builder()
                .account(Address.of(account))
                .ledgerIndex(LedgerIndex.of(String.valueOf(index)))
                .build();
        xrpclient().accountInfo(params);
        AccountInfoResult accountInfo = xrpclient().accountInfo(params);
        return accountInfo.accountData();
    }

    //////////////////////
    // XRP Account Modification / Transaction

    public <classicAddress, walletSeed> ImmutablePair<classicAddress, walletSeed> createXRPAccount(){
        SeedWalletGenerationResult seedResult = walletFactory().randomWallet(true);
        if(URL.equals("https://s.altnet.rippletest.net:51234/")){
            FaucetClient faucetClient = FaucetClient.construct(HttpUrl.get("https://faucet.altnet.rippletest.net"));
            faucetClient.fundAccount(FundAccountRequest.of(seedResult.wallet().classicAddress()));
        }
        return (ImmutablePair<classicAddress, walletSeed>) ImmutablePair.of(seedResult.wallet().classicAddress(), seedResult.seed());
    }

    @SuppressWarnings("unchecked")
    public Hash256 sendXRP(String transferAmount, int transactionTag, String transferAddress) throws JsonRpcClientErrorException {
            FeeResult feeResult = xrplClient.fee();
            AccountInfoRequestParams params = AccountInfoRequestParams.builder()
                    .account(wallet.classicAddress())
                    .ledgerIndex(LedgerIndex.VALIDATED)
                    .build();
            xrplClient.accountInfo(params);
            AccountInfoResult accountInfo = xrplClient.accountInfo(params);

            XrpCurrencyAmount amount = XrpCurrencyAmount.ofXrp(BigDecimal.valueOf(Long.parseLong(transferAmount)));
            Payment payment = Payment.builder()
                    .account(wallet.classicAddress())
                    .fee(feeResult.drops().openLedgerFee())
                    .sequence(accountInfo.accountData().sequence())
                    .destination(Address.of(transferAddress))
                    .destinationTag(UnsignedInteger.valueOf(transactionTag))
                    .amount(amount)
                    .signingPublicKey(wallet.publicKey())
                    .build();
            SubmitResult<Payment> result = xrplClient.submit(wallet, payment);
            //transactionHash = result.transactionResult().transaction().hash().get();
            getMetadata(result);
        return transactionHash;
    }

    public TransactionMetadata getMetadata(Object transaction) throws JsonRpcClientErrorException {
        TransactionResult<Payment> transactionResult;
        SubmitResult<Payment> casted = (SubmitResult<Payment>) transaction;
        boolean isComplete = false;
        do{
            transactionResult = xrplClient.transaction(
                    TransactionRequestParams.of(casted.transactionResult().transaction().hash().get()),
                    Payment.class
            );
            if(transactionResult.metadata().isPresent()){
                isComplete = true;
            }
            TimeUtils.sleepFor(500, TimeUnit.MILLISECONDS);
        }while(!isComplete);
        return transactionResult.metadata().get();
    }

    public Hash256 setDomain(String domainValue, Optional<String> walletseedValue) throws JsonRpcClientErrorException {
            String hex = DatatypeConverter.printHexBinary(domainValue.getBytes());
            wallet = walletFactory().fromSeed(walletseedValue.get(), true);

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
            //createDomainValue(10, Optional.empty(), Optional.empty());
            SubmitResult<AccountSet> result = xrplClient.submit(wallet, domainset);
            //transactionHash = result.transactionResult().transaction().hash().get();
        return transactionHash;
    }

    public String getCuratedAssets() throws JsonRpcClientErrorException {
        JsonNode jsonArray = null;
            JsonRpcClient jsonRpcClient = JsonRpcClient.construct(okhttp3.HttpUrl.get(URL));
            ImmutableAccountChannelsRequestParams params = ImmutableAccountChannelsRequestParams.builder()
                    .account(Address.of(String.valueOf(wallet.classicAddress())))
                    .build();
            JsonRpcRequest request = JsonRpcRequest.builder()
                    .method(XrplMethods.ACCOUNT_CURRENCIES)
                    .params(ImmutableSet.of(params))
                    .build();
            jsonRpcClient.send(request, curatedAssets.class);
            jsonArray = jsonRpcClient.postRpcRequest(request).get("result").get("send_currencies");

        String[] curatedAssets = new String[jsonArray.size()];
            for(int x = 0; x < jsonArray.size(); x++){
                if(jsonArray.get(x).asText().length() == 40){
                    curatedAssets[x] = jsonArray.get(x).asText();
                    byte[] s = DatatypeConverter.parseHexBinary(curatedAssets[x]);
                    curatedAssets[x] = new String(s).replaceAll("\\p{C}", "");
                }else{
                    curatedAssets[x] = jsonArray.get(x).asText();
                }
                nftcounter++;
            }
            StringBuilder assets = new StringBuilder();
            for(int x = 0; x < jsonArray.size(); x++){
                assets.append(curatedAssets[x]+",").append(" ");
            }
            if(assets.length() == 0){
                assets.append("No Tokens/IOU issued to you.");
            }
            return StringUtils.removeEnd(assets.toString(), ", ");
    }

    public static class curatedAssets implements XrplResult {
        @Override
        public Optional<String> status() {
            return Optional.empty();
        }
    }
}
