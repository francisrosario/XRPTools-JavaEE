package com.dev.xrpwebtools.Model;

import com.mgnt.utils.TimeUtils;
import okhttp3.HttpUrl;
import org.quartz.*;
import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;
import org.xrpl.xrpl4j.client.XrplClient;
import org.xrpl.xrpl4j.model.client.accounts.AccountInfoRequestParams;
import org.xrpl.xrpl4j.model.client.accounts.AccountInfoResult;
import org.xrpl.xrpl4j.model.client.common.LedgerIndex;
import org.xrpl.xrpl4j.model.client.ledger.LedgerRequestParams;
import org.xrpl.xrpl4j.model.client.ledger.LedgerResult;
import org.xrpl.xrpl4j.model.client.transactions.TransactionResult;
import org.xrpl.xrpl4j.model.ledger.AccountRootObject;
import org.xrpl.xrpl4j.model.transactions.Address;
import org.xrpl.xrpl4j.model.transactions.Transaction;

import java.util.List;
import java.util.concurrent.TimeUnit;

import static org.quartz.JobBuilder.newJob;

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

    public static AccountRootObject getInfo(String account, Long index) throws JsonRpcClientErrorException {
        AccountInfoRequestParams params = AccountInfoRequestParams.builder()
                .account(Address.of(account))
                .ledgerIndex(LedgerIndex.of(String.valueOf(index)))
                .build();
        xrpclient().accountInfo(params);
        AccountInfoResult accountInfo = xrpclient().accountInfo(params);
        return accountInfo.accountData();
    }
    public static void main(String[] args) throws JsonRpcClientErrorException, SchedulerException {

        SchedulerFactory schedFact = new org.quartz.impl.StdSchedulerFactory();
        Scheduler sched = schedFact.getScheduler();
        sched.start();

        JobDetail job = newJob(SimpleJob.class)
                .withIdentity("myJob", "group1")
                .build();

        Trigger trigger = TriggerBuilder.newTrigger()
                .withIdentity("myTrigger", "group1")
                .startNow()
                .build();
        sched.scheduleJob(job, trigger);

        /**
        long initialMarker = ledgerCI();
        boolean ledgerIsClosed;
        boolean loop = true;
        do {
            System.out.println("Current ledger marker: " + initialMarker);
            do {
                ledgerIsClosed = ledgerResult(initialMarker).ledger().closed();
                if (ledgerIsClosed) {
                    System.out.println("Current ledger index is closed, proceeding...\n");
                } else {
                    System.out.println("Ledger is not closed waiting...\n");
                    TimeUtils.sleepFor(650, TimeUnit.MILLISECONDS);
                }
            } while (!ledgerIsClosed);

            List<TransactionResult<? extends Transaction>> ledgerResult = ledgerResult(initialMarker).ledger().transactions();
            int transactionSize = ledgerResult.size();
            System.out.println("Current ledger transaction size: " + transactionSize);

            for (int i = 0; i < transactionSize; i++) {
                TransactionResult<? extends Transaction> transactionResult = ledgerResult.get(i);
                System.out.println(getInfo(String.valueOf(transactionResult.transaction().account()), initialMarker).balance().toXrp());
                TimeUtils.sleepFor(650,TimeUnit.MILLISECONDS);
            }
            initialMarker++;
        }while(loop);

         **/

    }

    public static class SimpleJob implements Job {
        public void execute(JobExecutionContext arg0) throws JobExecutionException{
            long initialMarker = 0;
            try {
                initialMarker = ledgerCI();
            } catch (JsonRpcClientErrorException e) {
                e.printStackTrace();
            }
            boolean ledgerIsClosed = false;
            boolean loop = true;
            do {
                System.out.println("Current ledger marker: " + initialMarker);
                do {
                    try {
                        ledgerIsClosed = ledgerResult(initialMarker).ledger().closed();
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

                List<TransactionResult<? extends Transaction>> ledgerResult = null;
                try {
                    ledgerResult = ledgerResult(initialMarker).ledger().transactions();
                } catch (JsonRpcClientErrorException e) {
                    e.printStackTrace();
                }
                int transactionSize = ledgerResult.size();
                System.out.println("Current ledger transaction size: " + transactionSize);

                for (int i = 0; i < transactionSize; i++) {
                    TransactionResult<? extends Transaction> transactionResult = ledgerResult.get(i);
                    try {
                        System.out.println(getInfo(String.valueOf(transactionResult.transaction().account()), initialMarker).balance().toXrp());
                    } catch (JsonRpcClientErrorException e) {
                        e.printStackTrace();
                    }
                    TimeUtils.sleepFor(650,TimeUnit.MILLISECONDS);
                }
                initialMarker++;
            }while(loop);
        }
    }

}
