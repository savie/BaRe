package com.bare.cloud.connect;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.bare.R;

import java.util.List;

public final class YandexSignInActivity extends AppCompatActivity {
    private static final String AUTHORIZE_URL =
            "https://oauth.yandex.com/authorize?response_type=code"
                    + "&client_id=ec2ee695f64042bfa6285a6999ef11bf"
                    + "&redirect_uri=com.bare.yandex://oauth"
                    + "&force_confirm=yes";
    private static final String REDIRECT_URI = "com.bare.yandex://oauth";
    private static final int REQUEST_CODE = 5012;

    private boolean authorizationStarted;
    private boolean handledResult;

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        if (state != null) {
            authorizationStarted = state.getBoolean("authorization_started", false);
            handledResult = state.getBoolean("handled_result", false);
        }
        if (getIntent() != null && getIntent().getData() != null) {
            handleRedirect(getIntent());
            return;
        }
        beginAuthorization();
    }

    private void beginAuthorization() {
        Intent browserProbe = new Intent(Intent.ACTION_VIEW, Uri.parse("https://www.google.com"));
        List<ResolveInfo> browsers =
                getPackageManager().queryIntentActivities(browserProbe, 0);
        if (browsers == null || browsers.isEmpty()) {
            fail(getString(R.string.no_browser_found_error));
            return;
        }

        Intent redirectProbe = new Intent(Intent.ACTION_VIEW, Uri.parse(REDIRECT_URI));
        List<ResolveInfo> handlers =
                getPackageManager().queryIntentActivities(redirectProbe, 0);
        if (handlers == null || handlers.isEmpty()) {
            fail("No handler activity found for " + REDIRECT_URI);
            return;
        }

        try {
            // Reference fq5 launches an AppAuth authorization intent generated from
            // the Yandex provider contract. This is the P3 external-auth boundary;
            // token exchange and provider persistence stay downstream.
            Intent authorization = new Intent(Intent.ACTION_VIEW, Uri.parse(AUTHORIZE_URL));
            startActivityForResult(authorization, REQUEST_CODE);
            authorizationStarted = true;
        } catch (ActivityNotFoundException e) {
            fail(e.getMessage() == null ? "Authorization activity not found" : e.getMessage());
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (requestCode != REQUEST_CODE) {
            super.onActivityResult(requestCode, resultCode, data);
            return;
        }
        if (data == null) {
            fail("Sign in result intent is null");
            return;
        }
        if (data.getData() == null) {
            fail("Authorization failed");
            return;
        }
        handleRedirect(data);
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        handleRedirect(intent);
    }

    private void handleRedirect(Intent intent) {
        if (intent == null || intent.getData() == null) {
            fail("Sign in result intent is null");
            return;
        }

        Uri uri = intent.getData();
        if (!REDIRECT_URI.equals(uri.getScheme() + "://" + uri.getHost())) {
            fail("Authorization failed");
            return;
        }

        String code = uri.getQueryParameter("code");
        if (code == null || code.trim().isEmpty()) {
            fail("Authorization failed");
            return;
        }

        handledResult = true;
        authorizationStarted = false;

        // Reference fq5 forwards the authorization result into hq5, which then
        // exchanges the code and persists provider state. Do not fabricate that
        // provider operation in P3.
        Toast.makeText(this, R.string.p3_yandex_provider_boundary, Toast.LENGTH_LONG).show();
        setResult(RESULT_CANCELED);
        finish();
    }

    private void fail(String message) {
        Toast.makeText(this, message, Toast.LENGTH_LONG).show();
        setResult(RESULT_CANCELED);
        finish();
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putBoolean("authorization_started", authorizationStarted);
        outState.putBoolean("handled_result", handledResult);
        super.onSaveInstanceState(outState);
    }
}
