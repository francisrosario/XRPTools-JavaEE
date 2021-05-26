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
        SeedWalletGenerationResult testWallet = walletFactory.randomWallet(true);
        System.out.println(testWallet);
        walletAddress = String.valueOf(testWallet);

        // Get the Classic and X-Addresses from testWallet
        //final Address classicAddress = testWallet.classicAddress();
        //final XAddress xAddress = testWallet.xAddress();
        //walletAddress = "X-ADDRESS: " + xAddress + " <br>CLASSIC ADDRESS: " + classicAddress + " <br>PUBLIC KEY : " + testWallet.publicKey() + " <br>PRIVATE KEY : " + testWallet.privateKey();
        //walletAddress = testWallet;
    }


}
