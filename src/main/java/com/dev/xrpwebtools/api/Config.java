package com.dev.xrpwebtools.api;


import com.fl.xumm4j.sdk.Deserialize;
import com.fl.xumm4j.sdk.XummClient;
import com.fl.xumm4j.sdk.builder.CredentialsBuilder;
import okhttp3.HttpUrl;
import org.xrpl.xrpl4j.client.XrplClient;

public interface Config {
    String URL = "https://s.altnet.rippletest.net:51234/";
    String SECRET_KEY = "6dab854e-b317-47f7-8453-490b8bd171ad";
    String API_KEY = "7208fca5-4ac3-4638-b006-897dfcc0ab29";

    static XummClient XummClient() {
        CredentialsBuilder credentialsBuilder = new CredentialsBuilder.builder()
                .apiKey(API_KEY)
                .secretKey(SECRET_KEY)
                .build();
        return new XummClient(credentialsBuilder);
    }

    static Deserialize Deserialize() {
        return new Deserialize();
    }

    static XrplClient XrplClient() {
        return new XrplClient(HttpUrl.get(URL));
    }
}
