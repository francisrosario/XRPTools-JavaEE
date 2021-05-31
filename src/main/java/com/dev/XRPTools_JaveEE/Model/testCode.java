package com.dev.XRPTools_JaveEE.Model;

import com.fasterxml.jackson.databind.DatabindContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.google.common.primitives.UnsignedInteger;
import com.google.common.primitives.UnsignedLong;
import kotlin.reflect.KParameter;
import okhttp3.HttpUrl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.xrpl.xrpl4j.client.*;
import org.xrpl.xrpl4j.client.faucet.FaucetClient;
import org.xrpl.xrpl4j.client.faucet.FundAccountRequest;
import org.xrpl.xrpl4j.crypto.PrivateKey;
import org.xrpl.xrpl4j.crypto.Seed;
import org.xrpl.xrpl4j.keypairs.KeyPair;
import org.xrpl.xrpl4j.model.client.XrplResult;
import org.xrpl.xrpl4j.model.client.accounts.*;
import org.xrpl.xrpl4j.model.client.common.LedgerIndex;
import org.xrpl.xrpl4j.model.client.ledger.LedgerRequestParams;
import org.xrpl.xrpl4j.model.client.ledger.LedgerResult;
import org.xrpl.xrpl4j.model.client.path.RipplePathFindRequestParams;
import org.xrpl.xrpl4j.model.client.path.RipplePathFindResult;
import org.xrpl.xrpl4j.model.client.transactions.TransactionRequestParams;
import org.xrpl.xrpl4j.model.client.transactions.TransactionResult;
import org.xrpl.xrpl4j.model.ledger.LedgerObject;
import org.xrpl.xrpl4j.model.transactions.Address;
import org.xrpl.xrpl4j.model.transactions.Hash256;
import org.xrpl.xrpl4j.model.client.server.ServerInfoResult;
import org.xrpl.xrpl4j.model.transactions.IssuedCurrencyAmount;
import org.xrpl.xrpl4j.model.transactions.Transaction;
import org.xrpl.xrpl4j.wallet.DefaultWalletFactory;
import org.xrpl.xrpl4j.wallet.SeedWalletGenerationResult;
import org.xrpl.xrpl4j.wallet.Wallet;
import org.xrpl.xrpl4j.wallet.WalletFactory;
import static org.assertj.core.api.Assertions.assertThat;  // main one
import static org.assertj.core.api.Assertions.atIndex; // for List assertions
import static org.assertj.core.api.Assertions.entry;  // for Map assertions
import static org.assertj.core.api.Assertions.tuple; // when extracting several properties at once
import static org.assertj.core.api.Assertions.fail; // use when writing exception tests
import static org.assertj.core.api.Assertions.failBecauseExceptionWasNotThrown; // idem
import static org.assertj.core.api.Assertions.filter; // for Iterable/Array assertions
import static org.assertj.core.api.Assertions.offset; // for floating number assertions
import static org.assertj.core.api.Assertions.anyOf; // use with Condition
import static org.assertj.core.api.Assertions.contentOf; // use with File assertions

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.time.Instant;
import java.util.*;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.type.TypeFactory;


public class testCode {

    public static void main(String[] args) throws JsonRpcClientErrorException, IOException {
        //
        //
        // Features to be Implemented in WebApp || Test the codes first in Command line then implement it to the webb app
        // Webapp will strictly use MVC MODEL and Servlets other JavaEE API will also be implemented.
        //
        //

        //Simple Vanity address generator - Testnet
        boolean seatchforAddress = false;
        //Fund Wallet - Testnet
        int rounds = 6;
        boolean doFunding = false;
        //Check Wallet Transaction
        boolean checkRAWTransaction = false;
        //Check if Account is Activated or not
        boolean checkAccActivated = false;

        //Vanity Address generator simple || Vanity Address Generator feature
        if(seatchforAddress) {
            WalletFactory walletFactory = DefaultWalletFactory.getInstance();

            //Method #!
            StringBuilder sb = new StringBuilder();
            String vanityToFind = "Mharz";

            boolean isFinding = true;
            do {
                SeedWalletGenerationResult genWallet = walletFactory.randomWallet(false);
                System.out.println(genWallet.wallet().classicAddress() + "  SEED:  " + genWallet.seed());
                sb.append(genWallet.wallet().classicAddress());
                if (sb.toString().startsWith("r" + vanityToFind)) {
                    break;
                }
                sb.setLength(0);
            } while (isFinding);
        }


        WalletFactory walletFactory = DefaultWalletFactory.getInstance();

        //Wallet generator based on SeedResult || For Generate Wallet feature
        SeedWalletGenerationResult seedResult = walletFactory.randomWallet(true);
        Wallet wallet = walletFactory.fromSeed("sEdVdnghGZYrYzaQrVKV37ddyuD1T5R", false);

        // Fund Wallet by 1000XRP per Iteration || Testnet Dev faucet feature
        XrplClient xrplClient = new XrplClient(HttpUrl.get("https://s.altnet.rippletest.net:51234/"));
        FaucetClient faucetClient = FaucetClient.construct(HttpUrl.get("https://faucet.altnet.rippletest.net"));

        if(doFunding){
            for(int x = 1; x < rounds; x++){
                System.out.println("Funding Account counter: " + x);
                faucetClient.fundAccount(FundAccountRequest.of(wallet.classicAddress()));
            }
        }

        AccountInfoResult accountInfoResult = xrplClient.accountInfo(AccountInfoRequestParams.of(wallet.classicAddress()));
        AccountObjectsResult or = xrplClient.accountObjects(AccountObjectsRequestParams.of(wallet.classicAddress()));


        //Check if Wallet is Validated in Ledger || If Account is Validated in Ledger proceed to XRP Wallet Tools dashboard
        if(checkAccActivated) {
            System.out.println("Newly generated seed: " + seedResult.seed());
            try {
                AccountInfoRequestParams params = AccountInfoRequestParams.builder()
                        .account(wallet.classicAddress())
                        .ledgerIndex(LedgerIndex.VALIDATED)
                        .build();
                System.out.println("Account is Activated/Not : " + xrplClient.accountInfo(params).validated());
            } catch (Exception e) {
                if (e.getMessage().equals("Account not found.")) {
                    //Go to error page
                }
                throw new RuntimeException(e.getMessage(), e);
            }
        }
        //Check transactions by Ledger range || For Show Transaction feature

        if(checkRAWTransaction) {
            // known ledger index range for this account that is known to have exactly 748 transactions
            LedgerIndex minLedger = LedgerIndex.of(UnsignedLong.valueOf(17896000));
            String cLedgerIndex = String.valueOf(accountInfoResult.ledgerCurrentIndex());
            UnsignedLong cLedgerIndexLong = UnsignedLong.valueOf(cLedgerIndex.substring(9, cLedgerIndex.length() - 1));
            LedgerIndex maxLedger = LedgerIndex.of(UnsignedLong.valueOf(String.valueOf(cLedgerIndexLong)));


            AccountTransactionsResult results = xrplClient.accountTransactions(AccountTransactionsRequestParams.builder()
                    .account(wallet.classicAddress())
                    .ledgerIndexMin(minLedger)
                    .ledgerIndexMax(maxLedger)
                    .build());

            int transactionsFound = results.transactions().size();
            while (results.marker().isPresent()) {
                results = xrplClient.accountTransactions(AccountTransactionsRequestParams.builder()
                        .account(wallet.classicAddress())
                        .ledgerIndexMin(minLedger)
                        .ledgerIndexMax(maxLedger)
                        .marker(results.marker().get())
                        .build());
                transactionsFound += results.transactions().size();
            }

            System.out.println("Raw Transactions output :\n" + results.transactions());
            System.out.println("Transaction Found : " + transactionsFound);
            System.out.println("Wallet Classic Address: " + wallet.classicAddress());
        }

        System.out.println("\n\nUsing HttpURLConnection for JSON Request");
        // Method #1 JSON req using HttpURLConnection
        URL endpoint = new URL ("https://s.altnet.rippletest.net:51234/");
        HttpURLConnection HttpUrl = (HttpURLConnection)endpoint.openConnection();
        HttpUrl.setRequestMethod("POST");
        HttpUrl.setDoOutput(true);

        String jsonInputString = "{\n" +
                "    \"method\": \"account_info\",\n" +
                "    \"params\": [\n" +
                "        {\n" +
                "   \"account\": \""+wallet.classicAddress()+"\"," +
                "            \"strict\": true,\n" +
                "            \"ledger_index\": \"current\",\n" +
                "            \"queue\": true\n" +
                "        }\n" +
                "    ]\n" +
                "}";

        try(OutputStream os = HttpUrl.getOutputStream()) {
            byte[] input = jsonInputString.getBytes("utf-8");
            os.write(input, 0, input.length);
        }

        try(BufferedReader br = new BufferedReader(
                new InputStreamReader(HttpUrl.getInputStream(), "utf-8"))) {
            StringBuilder response = new StringBuilder();
            String responseLine = null;
            while ((responseLine = br.readLine()) != null) {
                response.append(responseLine.trim());
            }
            System.out.println(response.toString());
        }



        // Method #2 using xrp4j lib.

        // Example i want to check rf1BiGeXwwQoi8Z2ueFYTEXSwuJYfV2Jpn
         //JsonRpcClient jsonRpcClient = JsonRpcClient.construct(HttpUrl.get("https://s.altnet.rippletest.net:51234/"));
         //JavaType type = TypeFactory.defaultInstance().constructType(.class);
         JsonRpcRequest request = JsonRpcRequest.builder()
         .method("ledger_closed")
         .build();


    }
}
