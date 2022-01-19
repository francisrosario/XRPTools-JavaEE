package com.dev.xrpwebtools.impl;

import com.google.common.primitives.UnsignedLong;
import okhttp3.HttpUrl;
import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;
import org.xrpl.xrpl4j.client.XrplClient;
import org.xrpl.xrpl4j.model.client.accounts.AccountInfoRequestParams;
import org.xrpl.xrpl4j.model.client.accounts.AccountInfoResult;
import org.xrpl.xrpl4j.model.client.accounts.AccountTransactionsRequestParams;
import org.xrpl.xrpl4j.model.client.accounts.AccountTransactionsResult;
import org.xrpl.xrpl4j.model.client.common.LedgerIndex;
import org.xrpl.xrpl4j.model.transactions.Address;
import org.xrpl.xrpl4j.model.transactions.TransactionMetadata;
import org.xrpl.xrpl4j.wallet.DefaultWalletFactory;
import org.xrpl.xrpl4j.wallet.SeedWalletGenerationResult;
import org.xrpl.xrpl4j.wallet.Wallet;
import org.xrpl.xrpl4j.wallet.WalletFactory;

public class test {
    public static void main(String[] args) throws JsonRpcClientErrorException {
        XrplClient xrpclient = new XrplClient(HttpUrl.get("https://s.altnet.rippletest.net:51234/"));
        String mainWalletSeed = "sEdTa3BhtQYikVqxHEmMW5MmYu6unpd";
        WalletFactory walletFactory = DefaultWalletFactory.getInstance();
        Wallet wallet = walletFactory.fromSeed(mainWalletSeed, false);

        //Account Info
        AccountInfoRequestParams params = AccountInfoRequestParams.builder()
                .account(wallet.classicAddress())
                .ledgerIndex(LedgerIndex.VALIDATED)
                .build();

        System.out.println(xrpclient.accountInfo(params).accountData().balance().toXrp());

        AccountInfoResult accountInfoResult = xrpclient.accountInfo(AccountInfoRequestParams.of(wallet.classicAddress()));

        AccountTransactionsResult accountTransactionsResult = xrpclient.accountTransactions(wallet.classicAddress());
        accountTransactionsResult.transactions().iterator().forEachRemaining(x -> System.out.println(x.resultTransaction().transaction().account().value()));


    }
}

