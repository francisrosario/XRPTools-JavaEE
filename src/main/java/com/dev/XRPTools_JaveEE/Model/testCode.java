package com.dev.XRPTools_JaveEE.Model;

import com.google.common.primitives.UnsignedLong;
import okhttp3.HttpUrl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;
import org.xrpl.xrpl4j.client.XrplClient;
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



import java.time.Instant;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;


public class testCode {
    public static void main(String[] args) throws JsonRpcClientErrorException {
        //
        //
        // Codes to be Implemented in WebApp
        //
        //

        /**  Vanity Address Checker
        WalletFactory walletFactory = DefaultWalletFactory.getInstance();

        //Method #!
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
        //Method#2
         **/
        WalletFactory walletFactory = DefaultWalletFactory.getInstance();

        //Wallet Generator based in SeedResult
        SeedWalletGenerationResult seedResult = walletFactory.randomWallet(true);
        Wallet wallet = walletFactory.fromSeed("sEdVdnghGZYrYzaQrVKV37ddyuD1T5R", false);

        // Fund Wallet by 1000XRP per Iteration
        XrplClient xrplClient = new XrplClient(HttpUrl.get("https://s.altnet.rippletest.net:51234/"));
        FaucetClient faucetClient = FaucetClient.construct(HttpUrl.get("https://faucet.altnet.rippletest.net"));
        for(int x = 0; x < 1; x++){
            faucetClient.fundAccount(FundAccountRequest.of(wallet.classicAddress()));
        }


        AccountInfoResult accountInfoResult = xrplClient.accountInfo(AccountInfoRequestParams.of(wallet.classicAddress()));
        AccountObjectsResult or = xrplClient.accountObjects(AccountObjectsRequestParams.of(wallet.classicAddress()));
        System.out.println(or.account());


        // Check transactions by Ledger range
        int expectedTransactions = 748;
        // known ledger index range for this account that is known to have exactly 748 transactions
        LedgerIndex minLedger = LedgerIndex.of(UnsignedLong.valueOf(17896000));
        LedgerIndex maxLedger = LedgerIndex.of(UnsignedLong.valueOf(18896000));
        AccountTransactionsResult results = xrplClient.accountTransactions(AccountTransactionsRequestParams.builder()
                .account(wallet.classicAddress())
                .ledgerIndexMin(minLedger)
                .ledgerIndexMax(maxLedger)
                .build());
        assertThat(results.transactions()).isNotEmpty();
        assertThat(results.marker()).isNotEmpty();

        int transactionsFound = results.transactions().size();
        int pages = 1;
        while (results.marker().isPresent()) {
            results = xrplClient.accountTransactions(AccountTransactionsRequestParams.builder()
                    .account(wallet.classicAddress())
                    .ledgerIndexMin(minLedger)
                    .ledgerIndexMax(maxLedger)
                    .marker(results.marker().get())
                    .build());
            assertThat(results.transactions()).isNotEmpty();
            transactionsFound += results.transactions().size();
            pages++;
        }
        System.out.println(results.transactions());

        //assertThat(transactionsFound).isEqualTo(expectedTransactions);
        assertThat(pages).isEqualTo(2);
        ;
        System.out.println("Wallet Classic Address" + wallet.classicAddress() + " Wallet Seed: ");

    }
}
