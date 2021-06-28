package com.dev.xrpwebtools.Model;

import ch.qos.logback.core.util.TimeUtil;
import com.mgnt.utils.TimeUtils;
import okhttp3.HttpUrl;
import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;
import org.xrpl.xrpl4j.client.XrplClient;
import org.xrpl.xrpl4j.model.client.common.LedgerIndex;
import org.xrpl.xrpl4j.model.client.ledger.LedgerRequestParams;
import org.xrpl.xrpl4j.model.client.ledger.LedgerResult;
import org.xrpl.xrpl4j.model.client.transactions.TransactionResult;
import org.xrpl.xrpl4j.model.transactions.Transaction;

import java.util.List;
import java.util.concurrent.TimeUnit;

@SuppressWarnings("UnstableApiUsage")
public class test {

    public static XrplClient xrpclient(){
        return new XrplClient(HttpUrl.get("https://xrplcluster.com/"));
    }

    public static Long ledgerCI() throws JsonRpcClientErrorException {
        LedgerResult ledgerResult = xrpclient().ledger(LedgerRequestParams.builder()
                .ledgerIndex(LedgerIndex.CURRENT)
                .build());
        return Long.valueOf(String.valueOf(ledgerResult.ledger().ledgerIndex()));
    }

    public static LedgerResult ledgerResult(Long ledgerIndex) throws JsonRpcClientErrorException {
        return xrpclient().ledger(LedgerRequestParams.builder()
                .ledgerIndex(LedgerIndex.of(String.valueOf(ledgerIndex)))
                .transactions(true)
                .build());
    }

    public static void main(String[] args) throws JsonRpcClientErrorException {
        long initialMarker = ledgerCI();
        boolean ledgerIsClosed;
        System.out.println("Current ledger marker: " + initialMarker);
        do{
            ledgerIsClosed = ledgerResult(initialMarker).ledger().closed();
            if(ledgerIsClosed){
                System.out.println("Current ledger index is closed, proceeding...\n");
            }else{
                System.out.println("Ledger is not closed waiting...\n");
                TimeUtils.sleepFor(9000, TimeUnit.MILLISECONDS);
            }
        }while(!ledgerIsClosed);
        
        List<TransactionResult<? extends Transaction>> ledgerResult = ledgerResult(initialMarker).ledger().transactions();
        int transactionSize = ledgerResult.size();

        System.out.println("Current ledger transaction size: " + transactionSize);
        for (TransactionResult<? extends Transaction> transactionResult : ledgerResult) {
            System.out.println(transactionResult.transaction());
        }

    }

}
