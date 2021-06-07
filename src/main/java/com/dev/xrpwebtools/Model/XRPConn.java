package com.dev.xrpwebtools.Model;

import okhttp3.HttpUrl;
import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;
import org.xrpl.xrpl4j.client.XrplClient;
import org.xrpl.xrpl4j.model.client.accounts.*;
import org.xrpl.xrpl4j.model.client.common.LedgerIndex;
import org.xrpl.xrpl4j.wallet.DefaultWalletFactory;
import org.xrpl.xrpl4j.wallet.Wallet;
import org.xrpl.xrpl4j.wallet.WalletFactory;

import java.math.BigDecimal;
import java.util.concurrent.atomic.AtomicReference;

public class XRPConn {
    //////////////////////
    //XRP4j
    final AtomicReference<String> testnetURL = new AtomicReference<>("https://s.altnet.rippletest.net:51234/");
    private Wallet wallet;
    private XrplClient xrplClient;

    private void doConn(){
        WalletFactory walletFactory = DefaultWalletFactory.getInstance();
        wallet = walletFactory.fromSeed(walletseed, false);
        xrplClient = new XrplClient(HttpUrl.get(testnetURL.get()));
    }

    //////////////////////
    // Getters and Setters
    private String walletseed;
    private String errorString;

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
    public boolean isActive() throws  JsonRpcClientErrorException{
        doConn();
        AccountInfoRequestParams params = AccountInfoRequestParams.builder()
                .account(wallet.classicAddress())
                .ledgerIndex(LedgerIndex.VALIDATED)
                .build();
        return xrplClient.accountInfo(params).validated();
    }
    public BigDecimal accountBalance() throws JsonRpcClientErrorException {
        doConn();
        AccountInfoResult accountInfoResult = xrplClient.accountInfo(AccountInfoRequestParams.of(wallet.classicAddress()));
        return accountInfoResult.accountData().balance().toXrp();
    }
}
