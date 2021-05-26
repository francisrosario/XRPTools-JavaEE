package com.dev.XRPTools_JaveEE.Model;

import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;
import org.xrpl.xrpl4j.model.transactions.Address;
import org.xrpl.xrpl4j.model.transactions.XAddress;
import org.xrpl.xrpl4j.wallet.DefaultWalletFactory;
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
        final Wallet testWallet = walletFactory.randomWallet(true).wallet();
        System.out.println("Generated a wallet with the following public key: " + testWallet.publicKey());

        // Get the Classic and X-Addresses from testWallet
        final Address classicAddress = testWallet.classicAddress();
        final XAddress xAddress = testWallet.xAddress();
        walletAddress = "X-ADDRESS: " + xAddress + " <br>CLASSIC ADDRESS: " + classicAddress + " <br>PUBLIC KEY : " + testWallet.publicKey() + " <br>PRIVATE KEY : " + testWallet.privateKey();
    }


}
