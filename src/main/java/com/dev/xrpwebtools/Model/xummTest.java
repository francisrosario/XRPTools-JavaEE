package com.dev.xrpwebtools.Model;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.primitives.UnsignedInteger;
import com.google.common.primitives.UnsignedLong;
import okhttp3.*;
import org.xrpl.xrpl4j.client.JsonRpcClientErrorException;
import org.xrpl.xrpl4j.client.XrplClient;
import org.xrpl.xrpl4j.codec.binary.XrplBinaryCodec;
import org.xrpl.xrpl4j.model.client.accounts.AccountInfoRequestParams;
import org.xrpl.xrpl4j.model.client.common.LedgerIndex;
import org.xrpl.xrpl4j.model.client.fees.FeeResult;
import org.xrpl.xrpl4j.model.jackson.ObjectMapperFactory;
import org.xrpl.xrpl4j.model.transactions.Address;
import org.xrpl.xrpl4j.model.transactions.Payment;
import org.xrpl.xrpl4j.model.transactions.XrpCurrencyAmount;

import java.io.IOException;

public class xummTest {
    public static void main(String[] args) throws IOException, JsonRpcClientErrorException {

        final String URL = "https://s.altnet.rippletest.net:51234/";
        XrplClient xrplclient = new XrplClient(HttpUrl.get(URL));

        AccountInfoRequestParams params = AccountInfoRequestParams.builder()
                .account(Address.of("rhnyxrC3PNwtUVR62SBGdmKtDJwwtGZPR3"))
                .ledgerIndex(LedgerIndex.VALIDATED)
                .build();
        UnsignedInteger sequence = xrplclient.accountInfo(params).accountData().sequence();

        ObjectMapper objectMapper = ObjectMapperFactory.create();
        XrplBinaryCodec binaryCodec = new XrplBinaryCodec();
        Payment payment = Payment.builder()
                .account(Address.of("rhnyxrC3PNwtUVR62SBGdmKtDJwwtGZPR3"))
                .destination(Address.of("rPT1Sjq2YGrBMTttX4GZHjKu9dyfzbpAYe"))
                .sequence(UnsignedInteger.valueOf("2"))
                .amount(XrpCurrencyAmount.ofDrops(12345))
                .fee(XrpCurrencyAmount.ofDrops(5000))
                .build();


        String transactionJson = objectMapper.writeValueAsString(payment);
        System.out.println(transactionJson);
        String transactionBinary = binaryCodec.encode(transactionJson);
        System.out.println(transactionBinary);

        OkHttpClient client = new OkHttpClient().newBuilder()
                .build();
        //MediaType mediaType = MediaType.parse("text/plain");
        MediaType JSON = MediaType.parse("application/json; charset=utf-8");
        RequestBody signIn = RequestBody.create(JSON, "{\n" +
                "    \"TransactionType\": \"SignIn\"\n" +
                "  }");

        RequestBody body = RequestBody.create(JSON, "{\"txblob\": \"12000022800000002400000000614000000000003039684000000000001388811400000000000000000000000000000000000000018314F667B0CA50CC7709A220B0561B85E53A48461FA8\",\n" +
                "     \"options\": {\n" +
                "          \"submit\": true,\n" +
                "          \"multisign\": \"false\",\n" +
                "          \"expire\": \"1440\"\n" +
                "     }}");
        Request request = new Request.Builder()
                .url("https://xumm.app/api/v1/platform/payload")
                .method("POST", signIn)
                .addHeader("X-API-Key", System.getenv("apiKey"))
                .addHeader("X-API-Secret",System.getenv("xApi"))
                .post(body)
                .build();
        Response response = client.newCall(request).execute();
        System.out.println(request.toString());
        String json = response.body().string();
        System.out.println(json);
    }
}
