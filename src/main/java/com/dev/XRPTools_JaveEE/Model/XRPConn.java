package com.dev.XRPTools_JaveEE.Model;

import okhttp3.HttpUrl;
import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;
import org.xrpl.xrpl4j.client.XrplClient;
import org.xrpl.xrpl4j.model.client.accounts.*;
import org.xrpl.xrpl4j.model.client.common.LedgerIndex;
import org.xrpl.xrpl4j.wallet.DefaultWalletFactory;
import org.xrpl.xrpl4j.wallet.Wallet;
import org.xrpl.xrpl4j.wallet.WalletFactory;

import java.math.BigDecimal;

public class XRPConn {
    final String testnetURL = "https://s.altnet.rippletest.net:51234/";
    private WalletFactory walletFactory;
    private Wallet wallet;
    private XrplClient xrplClient;
    //////////////////////
    //XRP4j
    public void doConn(){
        walletFactory = DefaultWalletFactory.getInstance();
        wallet = walletFactory.fromSeed(walletseed, false);
        xrplClient = new XrplClient(HttpUrl.get(testnetURL));
    }

    //////////////////////
    // Getters and Setters
    private String walletseed;
    private BigDecimal accountBalance;
    private String errorString;

    public void setErrorString(String errorString) {
        this.errorString = errorString;
    }
    public String getErrorString() {
        return errorString;
    }
    public BigDecimal getAccountBalance() {
        return accountBalance;
    }
    public void setAccountBalance(BigDecimal accountBalance) {
        this.accountBalance = accountBalance;
    }
    public String getWalletseed() {
        return walletseed;
    }
    public void setWalletseed(String walletseed) {
        this.walletseed = walletseed;
    }

    public XRPConn() {

    }

    public void isActived() throws  JsonRpcClientErrorException{
        doConn();
        AccountInfoRequestParams params = AccountInfoRequestParams.builder()
                .account(wallet.classicAddress())
                .ledgerIndex(LedgerIndex.VALIDATED)
                .build();

    }
    public void accountBalance() throws JsonRpcClientErrorException {
        doConn();
        AccountInfoResult accountInfoResult = xrplClient.accountInfo(AccountInfoRequestParams.of(wallet.classicAddress()));
        accountBalance = accountInfoResult.accountData().balance().toXrp();
        System.out.println(accountBalance);
    }
}
