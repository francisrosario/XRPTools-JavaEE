package com.dev.XRPTools_JaveEE.Model;

import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;
import org.xrpl.xrpl4j.model.transactions.Address;
import org.xrpl.xrpl4j.model.transactions.XAddress;
import org.xrpl.xrpl4j.wallet.DefaultWalletFactory;
import org.xrpl.xrpl4j.wallet.SeedWalletGenerationResult;
import org.xrpl.xrpl4j.wallet.Wallet;
import org.xrpl.xrpl4j.wallet.WalletFactory;

public class createXRPWallet {

    private String walletAddress;
    public String getWalletAddress() {
        return walletAddress;
    }

    public createXRPWallet(){

    }
    public void createXRPWalletX() throws JsonRpcClientErrorException {
        // Create a Wallet using a WalletFactory
        WalletFactory walletFactory = DefaultWalletFactory.getInstance();
        SeedWalletGenerationResult genWallet = walletFactory.randomWallet(true);

        walletAddress = "X-ADDRESS: " + genWallet.wallet().xAddress() + " <br>CLASSIC ADDRESS: " + genWallet.wallet().classicAddress() + " <br>PUBLIC KEY : " + genWallet.wallet().publicKey() +
                " <br>SEED  : " + genWallet.seed();
    }


}
