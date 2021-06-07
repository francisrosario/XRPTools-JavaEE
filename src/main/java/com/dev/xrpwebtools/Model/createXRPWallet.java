package com.dev.xrpwebtools.Model;

import okhttp3.HttpUrl;
import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;
import org.xrpl.xrpl4j.client.faucet.FaucetClient;
import org.xrpl.xrpl4j.client.faucet.FundAccountRequest;
import org.xrpl.xrpl4j.wallet.DefaultWalletFactory;
import org.xrpl.xrpl4j.wallet.SeedWalletGenerationResult;
import org.xrpl.xrpl4j.wallet.WalletFactory;

public class createXRPWallet {

    private String walletAddress;
    public String getWalletAddress() {
        return walletAddress;
    }

    public createXRPWallet(){

    }
    public void createXRPWalletX() throws JsonRpcClientErrorException {
        final String testnetURL = "https://faucet.altnet.rippletest.net";

        // Create a Wallet using a WalletFactory
        final WalletFactory walletFactory = DefaultWalletFactory.getInstance();
        final SeedWalletGenerationResult seedResult = walletFactory.randomWallet(true);
        final FaucetClient faucetClient = FaucetClient.construct(HttpUrl.get(testnetURL));
        
        for(int x = 0; x < 3; x++){
            faucetClient.fundAccount(FundAccountRequest.of(seedResult.wallet().classicAddress()));
        }

        walletAddress = "X-ADDRESS: " + seedResult.wallet().xAddress() + " <br>CLASSIC ADDRESS: " + seedResult.wallet().classicAddress() + " <br>PUBLIC KEY : " + seedResult.wallet().publicKey() +
                " <br>SEED  : " + seedResult.seed();
    }


}
