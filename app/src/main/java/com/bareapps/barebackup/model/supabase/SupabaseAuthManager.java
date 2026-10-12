package com.bareapps.barebackup.model.supabase;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;

import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/** Supabase Google OAuth using PKCE and the Supabase Auth HTTP API (no Firebase Auth dependency). */
public final class SupabaseAuthManager {
    public interface Callback {
        void onSuccess(Session session);
        void onError(String message);
    }
    public interface AuthUrlCallback {
        void onUrl(String url);
        void onError(String message);
    }
    public static final class Session {
        public final String userId;
        public final String email;
        Session(String userId, String email) { this.userId = userId; this.email = email; }
    }

    private static final String PREF_VERIFIER = "pkce_verifier";
    private static final String PREF_REDIRECT = "redirect_uri";
    private static final String PREF_USER_ID = "user_id";
    private static final String PREF_EMAIL = "email";
    private final Context app;
    private final String baseUrl;
    private final String anonKey;
    private final SecureSessionStore secureStore;
    private final ExecutorService executor = Executors.newSingleThreadExecutor();

    public SupabaseAuthManager(Context context, String url, String key) throws Exception {
        app = context.getApplicationContext();
        baseUrl = url == null ? "" : url.trim().replaceAll("/+$", "");
        anonKey = key == null ? "" : key.trim();
        secureStore = new SecureSessionStore(app);
    }

    public boolean isConfigured() {
        return baseUrl.startsWith("https://") && !anonKey.isEmpty();
    }

    public String getCurrentUserId() {
        try { return secureStore.get(PREF_USER_ID); } catch (Exception ignored) { return null; }
    }

    public String getCurrentEmail() {
        try { return secureStore.get(PREF_EMAIL); } catch (Exception ignored) { return null; }
    }

    public String getAccessToken() {
        try { return secureStore.get("access_token"); } catch (Exception ignored) { return null; }
    }

    public boolean hasSession() {
        return !TextUtils.isEmpty(getCurrentUserId()) && !TextUtils.isEmpty(getAccessToken());
    }

    /** Refresh a persisted Supabase session before its access token expires. */
    public void refreshSession(Callback callback) {
        executor.execute(() -> {
            HttpURLConnection connection = null;
            try {
                String refreshToken = secureStore.get("refresh_token");
                if (TextUtils.isEmpty(refreshToken)) throw new IllegalStateException("Tidak ada refresh token; login Google ulang diperlukan.");
                connection = (HttpURLConnection) new URL(baseUrl + "/auth/v1/token?grant_type=refresh_token").openConnection();
                connection.setRequestMethod("POST");
                connection.setConnectTimeout(15000);
                connection.setReadTimeout(20000);
                connection.setDoOutput(true);
                connection.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
                connection.setRequestProperty("apikey", anonKey);
                connection.setRequestProperty("Authorization", "Bearer " + anonKey);
                JSONObject body = new JSONObject();
                body.put("refresh_token", refreshToken);
                byte[] bytes = body.toString().getBytes(StandardCharsets.UTF_8);
                try (OutputStream output = connection.getOutputStream()) { output.write(bytes); }
                int status = connection.getResponseCode();
                String response = readAll(status >= 200 && status < 300 ? connection.getInputStream() : connection.getErrorStream());
                if (status < 200 || status >= 300) throw new IllegalStateException(extractError(response, status));
                JSONObject json = new JSONObject(response);
                JSONObject user = json.optJSONObject("user");
                if (user == null || TextUtils.isEmpty(user.optString("id", ""))) throw new IllegalStateException("Supabase refresh tidak mengembalikan user ID.");
                secureStore.put("access_token", json.optString("access_token", null));
                secureStore.put("refresh_token", json.optString("refresh_token", refreshToken));
                secureStore.put(PREF_USER_ID, user.getString("id"));
                secureStore.put(PREF_EMAIL, user.optString("email", ""));
                callback.onSuccess(new Session(user.getString("id"), user.optString("email", "")));
            } catch (Exception error) {
                callback.onError("Session Supabase perlu diperbarui: " + safeMessage(error));
            } finally {
                if (connection != null) connection.disconnect();
            }
        });
    }

    public void beginGoogleSignIn(String redirectUri, AuthUrlCallback callback) {
        if (!isConfigured()) {
            callback.onError("Supabase belum dikonfigurasi. Set SUPABASE_URL dan SUPABASE_ANON_KEY sebelum login Google.");
            return;
        }
        executor.execute(() -> {
            try {
                String verifier = randomUrlSafe(64);
                String challenge = base64Url(MessageDigest.getInstance("SHA-256")
                        .digest(verifier.getBytes(StandardCharsets.US_ASCII)));
                secureStore.put(PREF_VERIFIER, verifier);
                secureStore.put(PREF_REDIRECT, redirectUri);
                Uri authorize = Uri.parse(baseUrl + "/auth/v1/authorize").buildUpon()
                        .appendQueryParameter("provider", "google")
                        .appendQueryParameter("redirect_to", redirectUri)
                        .appendQueryParameter("code_challenge", challenge)
                        .appendQueryParameter("code_challenge_method", "s256")
                        .build();
                callback.onUrl(authorize.toString());
            } catch (Exception error) {
                callback.onError("Gagal menyiapkan Google OAuth: " + safeMessage(error));
            }
        });
    }

    /** Exchange a Supabase PKCE authorization code from the app deep-link callback. */
    public void handleOAuthRedirect(Uri uri, Callback callback) {
        if (uri == null) { callback.onError("Callback OAuth kosong."); return; }
        String error = uri.getQueryParameter("error_description");
        if (error == null) error = uri.getQueryParameter("error");
        String fragment = uri.getFragment();
        if (TextUtils.isEmpty(error) && !TextUtils.isEmpty(fragment)) {
            Uri fragmentParameters = Uri.parse("https://callback.invalid/?" + fragment);
            error = fragmentParameters.getQueryParameter("error_description");
            if (error == null) error = fragmentParameters.getQueryParameter("error");
        }
        if (!TextUtils.isEmpty(error)) { callback.onError("Google sign-in gagal: " + error); return; }
        String code = uri.getQueryParameter("code");
        if (TextUtils.isEmpty(code)) { callback.onError("Callback OAuth tidak memiliki authorization code."); return; }
        executor.execute(() -> {
            HttpURLConnection connection = null;
            try {
                String verifier = secureStore.get(PREF_VERIFIER);
                String redirect = secureStore.get(PREF_REDIRECT);
                if (TextUtils.isEmpty(verifier) || TextUtils.isEmpty(redirect)) {
                    throw new IllegalStateException("OAuth verifier tidak ada atau sudah kedaluwarsa.");
                }
                Uri expectedRedirect = Uri.parse(redirect);
                if (TextUtils.isEmpty(uri.getScheme()) || TextUtils.isEmpty(uri.getHost())
                        || !uri.getScheme().equals(expectedRedirect.getScheme())
                        || !uri.getHost().equals(expectedRedirect.getHost())) {
                    throw new IllegalStateException("OAuth callback URI tidak sesuai redirect yang diminta.");
                }
                URL endpoint = new URL(baseUrl + "/auth/v1/token?grant_type=pkce");
                connection = (HttpURLConnection) endpoint.openConnection();
                connection.setRequestMethod("POST");
                connection.setConnectTimeout(15000);
                connection.setReadTimeout(20000);
                connection.setDoOutput(true);
                connection.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
                connection.setRequestProperty("apikey", anonKey);
                connection.setRequestProperty("Authorization", "Bearer " + anonKey);
                JSONObject body = new JSONObject();
                body.put("auth_code", code);
                body.put("code_verifier", verifier);
                byte[] bytes = body.toString().getBytes(StandardCharsets.UTF_8);
                try (OutputStream output = connection.getOutputStream()) { output.write(bytes); }
                int status = connection.getResponseCode();
                String response = readAll(status >= 200 && status < 300
                        ? connection.getInputStream() : connection.getErrorStream());
                if (status < 200 || status >= 300) {
                    throw new IllegalStateException(extractError(response, status));
                }
                JSONObject json = new JSONObject(response);
                JSONObject user = json.optJSONObject("user");
                if (user == null || TextUtils.isEmpty(user.optString("id", ""))) {
                    throw new IllegalStateException("Supabase tidak mengembalikan user ID.");
                }
                secureStore.put("access_token", json.optString("access_token", null));
                secureStore.put("refresh_token", json.optString("refresh_token", null));
                secureStore.put(PREF_USER_ID, user.getString("id"));
                secureStore.put(PREF_EMAIL, user.optString("email", ""));
                secureStore.put(PREF_VERIFIER, null);
                secureStore.put(PREF_REDIRECT, null);
                callback.onSuccess(new Session(user.getString("id"), user.optString("email", "")));
            } catch (Exception failure) {
                callback.onError("Supabase OAuth gagal: " + safeMessage(failure));
            } finally {
                if (connection != null) connection.disconnect();
            }
        });
    }

    public void signOut(Callback callback) {
        executor.execute(() -> {
            HttpURLConnection connection = null;
            try {
                String token = secureStore.get("access_token");
                if (!TextUtils.isEmpty(token) && isConfigured()) {
                    connection = (HttpURLConnection) new URL(baseUrl + "/auth/v1/logout").openConnection();
                    connection.setRequestMethod("POST");
                    connection.setConnectTimeout(10000);
                    connection.setReadTimeout(10000);
                    connection.setDoOutput(true);
                    connection.setRequestProperty("apikey", anonKey);
                    connection.setRequestProperty("Authorization", "Bearer " + token);
                    int code = connection.getResponseCode();
                    if (code < 200 || code >= 300) throw new IllegalStateException("Supabase logout HTTP " + code);
                }
                secureStore.clear();
                callback.onSuccess(new Session("", null));
            } catch (Exception error) {
                callback.onError("Gagal sign out: " + safeMessage(error));
            } finally {
                if (connection != null) connection.disconnect();
            }
        });
    }

    private static String randomUrlSafe(int length) {
        byte[] bytes = new byte[length];
        new SecureRandom().nextBytes(bytes);
        return base64Url(bytes);
    }
    private static String base64Url(byte[] bytes) {
        return android.util.Base64.encodeToString(bytes,
                android.util.Base64.URL_SAFE | android.util.Base64.NO_WRAP | android.util.Base64.NO_PADDING);
    }
    private static String readAll(InputStream stream) throws Exception {
        if (stream == null) return "";
        try (InputStream input = stream; ByteArrayOutputStream output = new ByteArrayOutputStream()) {
            byte[] buffer = new byte[4096]; int count;
            while ((count = input.read(buffer)) != -1) output.write(buffer, 0, count);
            return output.toString("UTF-8");
        }
    }
    private static String extractError(String response, int status) {
        try {
            JSONObject json = new JSONObject(response);
            String message = json.optString("msg", json.optString("message",
                    json.optString("error_description", json.optString("error", ""))));
            return "Supabase HTTP " + status + (message.isEmpty() ? "" : ": " + message);
        } catch (Exception ignored) { return "Supabase HTTP " + status; }
    }
    private static String safeMessage(Exception error) {
        String message = error.getMessage();
        return message == null || message.trim().isEmpty() ? error.getClass().getSimpleName() : message;
    }
}
