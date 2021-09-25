package com.dev.xrpwebtools.impl;

import okhttp3.*;
import org.json.JSONObject;

import java.io.IOException;

public class xumm {
    public String requestSignIn(){
        JSONObject jo = new JSONObject();
        jo.put("TransactionType", "SignIn");
        return jo.toString();
    }
    public String okhttpclient(String jsonObject) throws IOException {
        OkHttpClient client = new OkHttpClient().newBuilder()
                .build();
        MediaType JSON = MediaType.parse("application/json; charset=utf-8");
        RequestBody body = RequestBody.create(JSON, "{\"txjson\":"+jsonObject+"}");
        Request request = new Request.Builder()
                .url("https://xumm.app/api/v1/platform/payload")
                .addHeader("X-API-Key", System.getenv("apiKey"))
                .addHeader("X-API-Secret",System.getenv("xApi"))
                .post(body)
                .build();
        Response response = client.newCall(request).execute();
        return response.body().string();
    }
}
