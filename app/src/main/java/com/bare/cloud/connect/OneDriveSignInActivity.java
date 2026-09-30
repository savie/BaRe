package com.bare.cloud.connect;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.button.MaterialButton;

public final class OneDriveSignInActivity extends AppCompatActivity {
    private static final String MICROSOFT_SIGN_IN_URL =
            "https://login.microsoftonline.com/";

    private TextView statusView;
    private MaterialButton authenticateButton;

    @Override
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.cloud_provider_signin_boundary);

        ImageView providerView = findViewById(R.id.iv_provider);
        providerView.setImageResource(R.drawable.ic_cloud);
        providerView.setContentDescription(getString(R.string.one_drive));

        ((TextView) findViewById(R.id.tv_title)).setText(R.string.one_drive);
        statusView = findViewById(R.id.tv_status);
        authenticateButton = findViewById(R.id.btn_authenticate);

        if (state != null) {
            statusView.setText(state.getInt("status_res", R.string.one_drive_ready_to_authenticate));
        } else {
            statusView.setText(R.string.one_drive_ready_to_authenticate);
        }

        authenticateButton.setOnClickListener(v -> startMicrosoftSignIn());
    }

    private void startMicrosoftSignIn() {
        Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(MICROSOFT_SIGN_IN_URL));
        if (intent.resolveActivity(getPackageManager()) == null) {
            statusView.setText(R.string.one_drive_browser_missing);
            new MaterialAlertDialogBuilder(this)
                    .setTitle(R.string.error)
                    .setMessage(R.string.one_drive_browser_missing)
                    .setPositiveButton(R.string.ok, null)
                    .show();
            return;
        }

        try {
            startActivity(intent);
            statusView.setText(R.string.one_drive_authorization_started);
        } catch (ActivityNotFoundException e) {
            statusView.setText(R.string.one_drive_browser_missing);
            new MaterialAlertDialogBuilder(this)
                    .setTitle(R.string.error)
                    .setMessage(e.getMessage() == null
                            ? getString(R.string.one_drive_browser_missing)
                            : e.getMessage())
                    .setPositiveButton(R.string.ok, null)
                    .show();
        }
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        outState.putInt("status_res", resolveStatusResource());
        super.onSaveInstanceState(outState);
    }

    private int resolveStatusResource() {
        CharSequence current = statusView == null ? null : statusView.getText();
        if (current != null && current.equals(getText(R.string.one_drive_authorization_started))) {
            return R.string.one_drive_authorization_started;
        }
        if (current != null && current.equals(getText(R.string.one_drive_browser_missing))) {
            return R.string.one_drive_browser_missing;
        }
        return R.string.one_drive_ready_to_authenticate;
    }
}
