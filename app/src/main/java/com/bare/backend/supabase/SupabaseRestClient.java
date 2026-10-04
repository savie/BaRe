package com.bare.backend.supabase;

import androidx.annotation.Nullable;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;

/**
 * Small Java-only Supabase REST transport.
 *
 * Secrets are supplied by the caller; no key or token is embedded in source.
 * This class is the provider adapter boundary and is not exposed to feature
 * consumers.
 */
public final class SupabaseRestClient {
    private final String baseUrl;
    private final String publishableKey;
    private final SupabaseSessionSource sessionSource;

    public SupabaseRestClient(
            String baseUrl,
            String publishableKey,
            SupabaseSessionSource sessionSource) {
        if (baseUrl == null || baseUrl.trim().isEmpty()) throw new IllegalArgumentException("baseUrl");
        if (publishableKey == null || publishableKey.trim().isEmpty()) {
            throw new IllegalArgumentException("publishableKey");
        }
        if (sessionSource == null) throw new NullPointerException("sessionSource");

        this.baseUrl = trimTrailingSlash(baseUrl);
        this.publishableKey = publishableKey;
        this.sessionSource = sessionSource;
    }

    public JSONArray getArray(String pathAndQuery) throws Exception {
        String body = request("GET", pathAndQuery, null);
        return new JSONArray(body);
    }

    public void postObject(String pathAndQuery, JSONObject payload) throws Exception {
        request("POST", pathAndQuery, payload == null ? "{}" : payload.toString());
    }

    public void patchObject(String pathAndQuery, JSONObject payload) throws Exception {
        request("PATCH", pathAndQuery, payload == null ? "{}" : payload.toString());
    }

    public void delete(String pathAndQuery) throws Exception {
        request("DELETE", pathAndQuery, null);
    }

    public void signOut() throws Exception {
        SupabaseSessionSource.Session session = requireSession();
        requestWithToken("POST", "/auth/v1/logout", null, session.accessToken);
    }

    private String request(String method, String pathAndQuery, @Nullable String payload)
            throws Exception {
        return requestWithToken(
                method,
                pathAndQuery,
                payload,
                requireSession().accessToken);
    }

    private String requestWithToken(
            String method,
            String pathAndQuery,
            @Nullable String payload,
            String accessToken) throws Exception {
        URL url = new URL(baseUrl + normalizePath(pathAndQuery));
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        try {
            connection.setRequestMethod(method);
            connection.setConnectTimeout(15000);
            connection.setReadTimeout(20000);
            connection.setRequestProperty("apikey", publishableKey);
            connection.setRequestProperty("Authorization", "Bearer " + accessToken);
            connection.setRequestProperty("Accept", "application/json");

            if (payload != null) {
                connection.setDoOutput(true);
                connection.setRequestProperty("Content-Type", "application/json");
                byte[] bytes = payload.getBytes(StandardCharsets.UTF_8);
                try (OutputStream output = connection.getOutputStream()) {
                    output.write(bytes);
                }
            }

            int status = connection.getResponseCode();
            InputStream stream = status >= 200 && status < 400
                    ? connection.getInputStream()
                    : connection.getErrorStream();
            String response = read(stream);

            if (status < 200 || status >= 300) {
                throw new SupabaseException(status, response);
            }
            return response;
        } finally {
            connection.disconnect();
        }
    }

    private SupabaseSessionSource.Session requireSession() {
        SupabaseSessionSource.Session session = sessionSource.current();
        if (session == null) {
            throw new IllegalStateException("Supabase session is required");
        }
        return session;
    }

    private static String read(@Nullable InputStream stream) throws Exception {
        if (stream == null) return "";
        StringBuilder result = new StringBuilder();
        try (BufferedReader reader = new BufferedReader(
                new InputStreamReader(stream, StandardCharsets.UTF_8))) {
            String line;
            while ((line = reader.readLine()) != null) {
                result.append(line);
            }
        }
        return result.toString();
    }

    private static String normalizePath(String value) {
        if (value == null || value.trim().isEmpty()) {
            throw new IllegalArgumentException("pathAndQuery");
        }
        return value.startsWith("/") ? value : "/" + value;
    }

    private static String trimTrailingSlash(String value) {
        String result = value.trim();
        while (result.endsWith("/")) {
            result = result.substring(0, result.length() - 1);
        }
        return result;
    }

    public static final class SupabaseException extends Exception {
        public final int statusCode;
        public final String responseBody;

        public SupabaseException(int statusCode, String responseBody) {
            super("Supabase REST request failed: HTTP " + statusCode);
            this.statusCode = statusCode;
            this.responseBody = responseBody == null ? "" : responseBody;
        }
    }
}
