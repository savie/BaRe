package com.microsoft.identity.common.java.net;

import java.util.LinkedHashMap;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class HttpClient$HttpMethod {
    private static final /* synthetic */ HttpClient$HttpMethod[] $VALUES;
    public static final HttpClient$HttpMethod GET;
    public static final HttpClient$HttpMethod PATCH;
    public static final HttpClient$HttpMethod POST;
    private static final LinkedHashMap validMethods;

    static {
        HttpClient$HttpMethod httpClient$HttpMethod = new HttpClient$HttpMethod("GET", 0);
        GET = httpClient$HttpMethod;
        HttpClient$HttpMethod httpClient$HttpMethod2 = new HttpClient$HttpMethod("HEAD", 1);
        HttpClient$HttpMethod httpClient$HttpMethod3 = new HttpClient$HttpMethod("PUT", 2);
        HttpClient$HttpMethod httpClient$HttpMethod4 = new HttpClient$HttpMethod("POST", 3);
        POST = httpClient$HttpMethod4;
        HttpClient$HttpMethod httpClient$HttpMethod5 = new HttpClient$HttpMethod("OPTIONS", 4);
        HttpClient$HttpMethod httpClient$HttpMethod6 = new HttpClient$HttpMethod("PATCH", 5);
        PATCH = httpClient$HttpMethod6;
        $VALUES = new HttpClient$HttpMethod[]{httpClient$HttpMethod, httpClient$HttpMethod2, httpClient$HttpMethod3, httpClient$HttpMethod4, httpClient$HttpMethod5, httpClient$HttpMethod6, new HttpClient$HttpMethod("DELETE", 6), new HttpClient$HttpMethod("TRACE", 7)};
        validMethods = new LinkedHashMap(values().length);
        for (HttpClient$HttpMethod httpClient$HttpMethod7 : values()) {
            validMethods.put(httpClient$HttpMethod7.name(), httpClient$HttpMethod7);
        }
    }

    public static HttpClient$HttpMethod valueOf(String str) {
        return (HttpClient$HttpMethod) Enum.valueOf(HttpClient$HttpMethod.class, str);
    }

    public static HttpClient$HttpMethod[] values() {
        return (HttpClient$HttpMethod[]) $VALUES.clone();
    }
}
