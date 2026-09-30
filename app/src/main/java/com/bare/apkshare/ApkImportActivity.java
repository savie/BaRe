package com.bare.apkshare;

import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

public final class ApkImportActivity extends AppCompatActivity {
    private TextView status;
    private Uri inputUri;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.apk_import_activity);
        status = findViewById(R.id.tvStatus);

        findViewById(R.id.btnClose).setOnClickListener(v -> finish());
        findViewById(R.id.ivMenu).setOnClickListener(v -> showBoundaryMenu());

        handleIntent(getIntent());
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        handleIntent(intent);
    }

    private void handleIntent(@Nullable Intent intent) {
        inputUri = resolveInputUri(intent);
        if (inputUri == null) {
            showUnsupported();
            return;
        }

        String displayName = resolveDisplayName(inputUri);
        String mime = getContentResolver().getType(inputUri);
        InputKind kind = classify(displayName, mime);

        if (kind == null) {
            showUnsupported(displayName);
            return;
        }

        showAccepted(displayName, kind);
    }

    @Nullable
    private Uri resolveInputUri(@Nullable Intent intent) {
        if (intent == null) return null;

        String action = intent.getAction();
        if (Intent.ACTION_VIEW.equals(action) && intent.getData() != null) {
            return intent.getData();
        }

        Parcelable stream = intent.getParcelableExtra(Intent.EXTRA_STREAM);
        if (stream instanceof Uri) return (Uri) stream;

        return intent.getData();
    }

    @Nullable
    private String resolveDisplayName(Uri uri) {
        Cursor cursor = null;
        try {
            cursor = getContentResolver().query(
                    uri, new String[]{"_display_name"}, null, null, null);
            if (cursor != null && cursor.moveToFirst()) {
                String name = cursor.getString(0);
                if (name != null && !name.trim().isEmpty()) return name;
            }
        } catch (RuntimeException ignored) {
            // Fall back to the URI path below.
        } finally {
            if (cursor != null) cursor.close();
        }
        String segment = uri.getLastPathSegment();
        return segment == null ? uri.toString() : segment;
    }

    @Nullable
    private InputKind classify(@Nullable String displayName, @Nullable String mime) {
        String name = displayName == null ? "" : displayName.toLowerCase(java.util.Locale.ROOT);
        if (name.endsWith(".apks")) return InputKind.APKS_ARCHIVE;
        if (name.endsWith(".apk")
                || "application/vnd.android.package-archive".equals(mime)) {
            return InputKind.SINGLE_APK;
        }
        return null;
    }

    private void showAccepted(String displayName, InputKind kind) {
        findViewById(R.id.progressIndicator).setVisibility(View.VISIBLE);
        findViewById(R.id.cardAppInfo).setVisibility(View.GONE);
        findViewById(R.id.importBottomActions).setVisibility(View.GONE);

        String type = kind == InputKind.SINGLE_APK
                ? getString(R.string.apk_import_single_apk)
                : getString(R.string.apk_import_apks_archive);
        status.setText(getString(R.string.apk_import_input_ready, type, displayName));
    }

    private void showUnsupported() {
        showUnsupported(null);
    }

    private void showUnsupported(@Nullable String displayName) {
        findViewById(R.id.progressIndicator).setVisibility(View.GONE);
        findViewById(R.id.cardAppInfo).setVisibility(View.GONE);
        status.setText(displayName == null
                ? getString(R.string.apk_import_missing_input)
                : getString(R.string.apk_import_unsupported_input, displayName));

        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.apk_import_error_title)
                .setMessage(R.string.apk_import_unsupported_input_message)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    private void showBoundaryMenu() {
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.apk_import_title)
                .setMessage(R.string.p3_apk_import_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }

    private enum InputKind {
        APKS_ARCHIVE,
        SINGLE_APK
    }
}
