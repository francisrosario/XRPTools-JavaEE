package com.dev.XRPTools_JaveEE.Model;

import okhttp3.HttpUrl;
import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;
import org.xrpl.xrpl4j.client.XrplClient;
import org.xrpl.xrpl4j.client.faucet.FaucetClient;
import org.xrpl.xrpl4j.client.faucet.FundAccountRequest;
import org.xrpl.xrpl4j.model.client.accounts.AccountInfoRequestParams;
import org.xrpl.xrpl4j.model.client.accounts.AccountInfoResult;
import org.xrpl.xrpl4j.model.transactions.Address;
import org.xrpl.xrpl4j.model.transactions.XAddress;
import org.xrpl.xrpl4j.wallet.DefaultWalletFactory;
import org.xrpl.xrpl4j.wallet.SeedWalletGenerationResult;
import org.xrpl.xrpl4j.wallet.Wallet;
import org.xrpl.xrpl4j.wallet.WalletFactory;

public class testCode {
    public static void main(String[] args) throws JsonRpcClientErrorException {
        WalletFactory walletFactory = DefaultWalletFactory.getInstance();

        StringBuilder sb = new StringBuilder();
        String vanityToFind = "Mharz";

        boolean isFinding = true;
        do{
            SeedWalletGenerationResult genWallet = walletFactory.randomWallet(false);
            System.out.println(genWallet.wallet().classicAddress() + "  SEED:  " + genWallet.seed());
            sb.append(genWallet.wallet().classicAddress());
            if(sb.toString().startsWith("r"+vanityToFind)){
                break;
            }
            sb.setLength(0);
        }while(isFinding);

    }
}
