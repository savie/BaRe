package com.bare.cloud.connect;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import com.bare.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.util.List;

public final class TeraBoxSignInActivity extends AppCompatActivity {
    private static final String TERABOX_LOGIN_URL =
            "https://www.terabox.com/wap/outside/login?clientId=&isFromApp=1";
    private static final String REDIRECT_SCHEME = "com.bare.terabox";
    private static final String REDIRECT_HOST = "teraboxOauth";

    private TextView statusView;
    private MaterialButton authenticateButton;
    private boolean returningFromBrowser;
    private boolean handledResult;

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.cloud_provider_signin_boundary);

        ImageView providerView = findViewById(R.id.iv_provider);
        providerView.setImageResource(R.drawable.ic_cloud);
        providerView.setContentDescription(getString(R.string.terabox));

        ((TextView) findViewById(R.id.tv_title)).setText(R.string.terabox);
        statusView = findViewById(R.id.tv_status);
        authenticateButton = findViewById(R.id.btn_authenticate);

        if (state != null) {
            returningFromBrowser = state.getBoolean("returning_from_browser", false);
            handledResult = state.getBoolean("handled_result", false);
        }

        authenticateButton.setOnClickListener(v -> beginSignIn());

        if (!hasReferenceCredentials()) {
            showStatus(R.string.terabox_api_credentials_missing);
        } else {
            showStatus(R.string.terabox_ready_to_authenticate);
        }

        Intent intent = getIntent();
        if (intent != null && intent.getData() != null) {
            handleSignInResult(intent);
        }
    }

    private boolean hasReferenceCredentials() {
        return false;
    }

    private void beginSignIn() {
        if (!hasReferenceCredentials()) {
            showError(R.string.terabox_api_credentials_missing);
            return;
        }

        Intent browserProbe = new Intent(Intent.ACTION_VIEW, Uri.parse("https://www.google.com"));
        List<ResolveInfo> browsers = getPackageManager().queryIntentActivities(browserProbe, 0);
        if (browsers == null || browsers.isEmpty()) {
            showError(R.string.no_browser_found_error);
            return;
        }

        Intent login = new Intent(Intent.ACTION_VIEW, Uri.parse(TERABOX_LOGIN_URL));
        List<ResolveInfo> handlers = getPackageManager().queryIntentActivities(login, 0);
        if (handlers == null || handlers.isEmpty()) {
            showError(R.string.terabox_redirect_handler_missing);
            return;
        }

        try {
            startActivity(login);
            returningFromBrowser = true;
            showStatus(R.string.terabox_authorization_started);
        } catch (ActivityNotFoundException e) {
            showError(e.getMessage() == null
                    ? getString(R.string.terabox_browser_missing)
                    : e.getMessage());
        }
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        handledResult = false;
        handleSignInResult(intent);
    }

    private void handleSignInResult(Intent intent) {
        if (intent == null || intent.getData() == null) {
            showError(R.string.terabox_signin_result_null);
            return;
        }

        Uri data = intent.getData();
        if (!REDIRECT_SCHEME.equals(data.getScheme())
                || !REDIRECT_HOST.equals(data.getHost())) {
            showError(R.string.terabox_invalid_response);
            return;
        }

        String code = data.getQueryParameter("code");
        if (code == null || code.trim().isEmpty()) {
            showError(R.string.terabox_invalid_response);
            return;
        }

        handledResult = true;
        returningFromBrowser = false;
        showStatus(R.string.terabox_authorization_code_received);
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.authentication)
                .setMessage(R.string.p3_terabox_provider_boundary)
                .setPositiveButton(R.string.close, null)
                .setOnDismissListener(d -> {
                    setResult(RESULT_CANCELED);
                    finish();
                })
                .show();
    }

    private void showStatus(int resourceId) {
        statusView.setText(resourceId);
    }

    private void showError(int resourceId) {
        showError(getString(resourceId));
    }

    private void showError(String message) {
        showStatus(R.string.terabox_auth_failed);
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.auth_failed)
                .setMessage(message)
                .setPositiveButton(R.string.ok, null)
                .setOnDismissListener(d -> {
                    setResult(RESULT_CANCELED);
                    finish();
                })
                .show();
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putBoolean("returning_from_browser", returningFromBrowser);
        outState.putBoolean("handled_result", handledResult);
        super.onSaveInstanceState(outState);
    }

    @Override
    protected void onStart() {
        super.onStart();
        if (returningFromBrowser) {
            returningFromBrowser = false;
            if (!handledResult) {
                statusView.setText(R.string.terabox_authorization_pending);
            }
        }
    }
}
