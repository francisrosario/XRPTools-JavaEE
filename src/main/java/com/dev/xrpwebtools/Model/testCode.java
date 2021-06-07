package com.dev.xrpwebtools.Model;

import com.google.common.collect.ImmutableSet;
import com.google.common.primitives.UnsignedLong;
import okhttp3.HttpUrl;
import org.xrpl.xrpl4j.client.JsonRpcClient;
import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;
import org.xrpl.xrpl4j.client.JsonRpcRequest;
import org.xrpl.xrpl4j.client.XrplClient;
import org.xrpl.xrpl4j.client.faucet.FaucetClient;
import org.xrpl.xrpl4j.client.faucet.FundAccountRequest;
import org.xrpl.xrpl4j.model.client.XrplResult;
import org.xrpl.xrpl4j.model.client.accounts.*;
import org.xrpl.xrpl4j.model.client.common.LedgerIndex;
import org.xrpl.xrpl4j.model.transactions.Address;
import org.xrpl.xrpl4j.wallet.DefaultWalletFactory;
import org.xrpl.xrpl4j.wallet.SeedWalletGenerationResult;
import org.xrpl.xrpl4j.wallet.Wallet;
import org.xrpl.xrpl4j.wallet.WalletFactory;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.Optional;
import org.json.JSONObject;

@SuppressWarnings({"ConstantConditions", "StatementWithEmptyBody", "LoopConditionNotUpdatedInsideLoop"})
public class testCode {

    public static class ledger implements XrplResult {
        @Override
        public Optional<String> status() {
            return Optional.empty();
        }

    }
    public static void main(String[] args) throws JsonRpcClientErrorException, IOException {
        //
        //
        // Features to be Implemented in WebApp || Test the codes first in Command line then implement it to the webb app
        // Webapp will strictly use MVC MODEL and Servlets other JavaEE API will also be implemented.
        //
        //

        //URLS
        String faucetURL = "https://faucet.altnet.rippletest.net";
        String testnetURL = "https://s.altnet.rippletest.net:51234/";
        //Main Wallet seed to use in testing
        String mainWalletSeed = "sEdVdnghGZYrYzaQrVKV37ddyuD1T5R";
        //Simple Vanity address generator - Testnet
        boolean seatchforAddress = false;
        //Fund Wallet - Testnet
        int rounds = 3;
        boolean doFunding = false;
        //Check Wallet Transaction
        boolean checkRAWTransaction = false;
        //Check if Account is Activated or not
        boolean checkAccActivated = true;

        //Vanity Address generator simple || Vanity Address Generator feature
        if(seatchforAddress) {
            WalletFactory walletFactory = DefaultWalletFactory.getInstance();

            //Method #!
            StringBuilder sb = new StringBuilder();
            String vanityToFind = "francis";

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
        Wallet wallet = walletFactory.fromSeed(mainWalletSeed, false);

        // Fund Wallet by 1000XRP per Iteration || Testnet Dev faucet feature
        XrplClient xrplClient = new XrplClient(HttpUrl.get(testnetURL));
        FaucetClient faucetClient = FaucetClient.construct(HttpUrl.get(faucetURL));

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

        URL endpoint = new URL (testnetURL);
        HttpURLConnection HttpUrl = (HttpURLConnection)endpoint.openConnection();
        HttpUrl.setRequestMethod("POST");
        HttpUrl.setDoOutput(true);

        String jsonInputString = "{\n" +
                "    \"method\": \"account_info\",\n" +
                "    \"params\": [\n" +
                "        {\n" +
                "            \"account\": \""+wallet.classicAddress()+"\"," +
                "            \"strict\": true,\n" +
                "            \"ledger_index\": \"current\",\n" +
                "            \"queue\": true\n" +
                "        }\n" +
                "    ]\n" +
                "}";

        try(OutputStream os = HttpUrl.getOutputStream()) {
            byte[] input = jsonInputString.getBytes(StandardCharsets.UTF_8);
            os.write(input, 0, input.length);
        }

        try(BufferedReader br = new BufferedReader(
                new InputStreamReader(HttpUrl.getInputStream(), StandardCharsets.UTF_8))) {
            StringBuilder response = new StringBuilder();
            String responseLine;
            while ((responseLine = br.readLine()) != null) {
                response.append(responseLine.trim());
            }
            System.out.println(response);
            JSONObject jsonObject = new JSONObject(response.toString());
            System.out.println("Account Balance: " + jsonObject.optJSONObject("result").optJSONObject("account_data").getDouble("Balance") / 1000000 + "\n\n\n");
        }


        // Method #2 using xrp4j lib. - Account_lines
        System.out.println("XRP4J Custom - Account_lines for JSON Request");
        try {
            JsonRpcClient jsonRpcClient = JsonRpcClient.construct(okhttp3.HttpUrl.get(testnetURL));
            ImmutableAccountChannelsRequestParams params = ImmutableAccountChannelsRequestParams.builder()
                    .account(Address.of(String.valueOf(wallet.classicAddress())))
                    .build();
                    System.out.println("RAW Output of Params: " + params);
            JsonRpcRequest request = JsonRpcRequest.builder()
                    .method("server_state")
                    .params(ImmutableSet.of(params))
                    .build();
            jsonRpcClient.send(request, ledger.class);
            System.out.println("RAW Result:" + jsonRpcClient.postRpcRequest(request));
            System.out.println("Output: " + jsonRpcClient.postRpcRequest(request).get("result").get("status").asText());

        } catch (Exception e) {
            throw new RuntimeException(e.getMessage(), e);
        }

    }
}
