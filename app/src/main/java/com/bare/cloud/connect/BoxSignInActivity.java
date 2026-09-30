package com.bare.cloud.connect;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.util.List;

public final class BoxSignInActivity extends AppCompatActivity {
    private static final String BOX_REDIRECT_URI = "org.swiftapps.swiftbackup.box://oauth";
    private static final String BOX_AUTHORIZE_URI =
            "https://account.box.com/api/oauth2/authorize"
                    + "?response_type=code"
                    + "&client_id=dfqjenwobgs7mdm0sj7dq3n6cpp8bz3h"
                    + "&redirect_uri=" + BOX_REDIRECT_URI;

    private TextView status;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.cloud_provider_signin_boundary);

        TextView title = findViewById(R.id.tv_title);
        status = findViewById(R.id.tv_status);
        title.setText(R.string.box);
        status.setText(R.string.cloud_auth_pending);

        findViewById(R.id.btn_authenticate).setEnabled(false);
        findViewById(R.id.btn_authenticate).setOnClickListener(v -> startBoxAuthorization());

        if (state == null) {
            checkBoxPrerequisites();
        }
    }

    private void checkBoxPrerequisites() {
        Intent browserProbe = new Intent(Intent.ACTION_VIEW, Uri.parse("https://www.google.com"));
        browserProbe.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        List<ResolveInfo> browsers = getPackageManager()
                .queryIntentActivities(browserProbe, 65536);

        if (browsers == null || browsers.isEmpty()) {
            showFailure(R.string.no_browser_found_error);
            return;
        }

        Intent redirectProbe = new Intent(Intent.ACTION_VIEW, Uri.parse(BOX_REDIRECT_URI));
        List<ResolveInfo> handlers = getPackageManager()
                .queryIntentActivities(redirectProbe, 0);

        if (handlers == null || handlers.isEmpty()) {
            showFailure(R.string.box_redirect_handler_missing);
            return;
        }

        status.setText(R.string.box_ready_to_authenticate);
        findViewById(R.id.btn_authenticate).setEnabled(true);
    }

    private void startBoxAuthorization() {
        Intent auth = new Intent(Intent.ACTION_VIEW, Uri.parse(BOX_AUTHORIZE_URI));
        List<ResolveInfo> handlers = getPackageManager().queryIntentActivities(auth, 0);
        if (handlers == null || handlers.isEmpty()) {
            showFailure(R.string.no_browser_found_error);
            return;
        }

        status.setText(R.string.box_authorization_started);
        startActivity(auth);
    }

    private void showFailure(int message) {
        status.setText(message);
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.box)
                .setMessage(message)
                .setPositiveButton(R.string.close, null)
                .show();
    }

}