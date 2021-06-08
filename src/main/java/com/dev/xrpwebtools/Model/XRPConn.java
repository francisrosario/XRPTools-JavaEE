package com.dev.xrpwebtools.Model;

import okhttp3.HttpUrl;
import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;
import org.xrpl.xrpl4j.client.XrplClient;
import org.xrpl.xrpl4j.client.faucet.FaucetClient;
import org.xrpl.xrpl4j.client.faucet.FundAccountRequest;
import org.xrpl.xrpl4j.model.client.accounts.*;
import org.xrpl.xrpl4j.model.client.common.LedgerIndex;
import org.xrpl.xrpl4j.model.transactions.Address;
import org.xrpl.xrpl4j.wallet.DefaultWalletFactory;
import org.xrpl.xrpl4j.wallet.SeedWalletGenerationResult;
import org.xrpl.xrpl4j.wallet.Wallet;
import org.xrpl.xrpl4j.wallet.WalletFactory;
import java.math.BigDecimal;
import java.util.logging.Logger;

@SuppressWarnings("UnstableApiUsage")
public class XRPConn {
    //////////////////////
    //Utils
    private final Logger logger = Logger.getLogger(XRPConn.class.getName());
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
    private String createdwalletData;

    //Others
    private String errorString;

    public String getCreatedwalletData() {
        return createdwalletData;
    }
    public void setErrorString(String errorString) {
        this.errorString = errorString;
    }
    public String getErrorString() {
        return errorString;
    }
    public void setWalletseed(String walletseed) {
        this.walletseed = walletseed;
    }


    public XRPConn() {

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
    public Address classicAddress() throws JsonRpcClientErrorException{
        return wallet.classicAddress();
    }
    //////////////////////
    // XRP Account Modification / Transaction
    public String createXRPAccount(DefaultWalletFactory walletFactory){
        SeedWalletGenerationResult seedResult = walletFactory.randomWallet(true);
        // Perform wallet activation if current network is TESTNET
        if(URL == "https://s.altnet.rippletest.net:51234/"){
            FaucetClient faucetClient = FaucetClient.construct(HttpUrl.get("https://faucet.altnet.rippletest.net"));
            faucetClient.fundAccount(FundAccountRequest.of(seedResult.wallet().classicAddress()));
        }
        //Example is JSP: <%=xrpconn.createXRPAccount((DefaultWalletFactory) DefaultWalletFactory.getInstance())%>
        return createdwalletData = "Classic Address : " + seedResult.wallet().classicAddress() + "Seed Key : " + seedResult.seed();
    }
}
