package com.dev.xrpwebtools.service;

import com.dev.xrpwebtools.Model.xrp4j;
import com.mgnt.utils.TimeUtils;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;
import org.xrpl.xrpl4j.model.client.transactions.TransactionResult;
import org.xrpl.xrpl4j.model.transactions.Transaction;

import java.util.List;
import java.util.concurrent.TimeUnit;

public class indexerJob implements Job {
    public void execute(final JobExecutionContext ctx) throws JobExecutionException {
        /**
        xrp4j lg = new xrp4j();

        long initialMarker = 0;
        try {
            initialMarker = lg.getledgerCI();
        } catch (JsonRpcClientErrorException e) {
            e.printStackTrace();
        }
        boolean ledgerIsClosed = false;
        boolean loop = true;
        do {
            System.out.println("Current ledger marker: " + initialMarker);
            do {
                try {
                    ledgerIsClosed = lg.getledgerResult(initialMarker).ledger().closed();
                } catch (JsonRpcClientErrorException e) {
                    e.printStackTrace();
                }
                if (ledgerIsClosed) {
                    System.out.println("Current ledger index is closed, proceeding...\n");
                } else {
                    System.out.println("Ledger is not closed waiting...\n");
                    TimeUtils.sleepFor(650, TimeUnit.MILLISECONDS);
                }
            } while (!ledgerIsClosed);

            List<TransactionResult<? extends Transaction>> getLedgerResult = null;
            try {
                getLedgerResult = lg.getledgerResult(initialMarker).ledger().transactions();
            } catch (JsonRpcClientErrorException e) {
                e.printStackTrace();
            }
            int transactionSize = getLedgerResult.size();
            System.out.println("Current ledger transaction size: " + transactionSize);

            for (int i = 0; i < transactionSize; i++) {
                TransactionResult<? extends Transaction> transactionResult = getLedgerResult.get(i);
                try {
                    System.out.println(lg.getInfo(String.valueOf(transactionResult.transaction().account()), initialMarker).balance().toXrp());
                } catch (JsonRpcClientErrorException e) {
                    e.printStackTrace();
                }
                TimeUtils.sleepFor(650,TimeUnit.MILLISECONDS);
            }
            initialMarker++;
        }while(loop);
         **/
    }
}
