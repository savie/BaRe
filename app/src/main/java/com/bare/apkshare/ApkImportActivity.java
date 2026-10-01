package com.bare.apkshare;

import android.content.ClipData;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.PopupMenu;

import com.bare.R;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public final class ApkImportActivity extends AppCompatActivity {
    private static final String STATE_URI = "apk_import_uri";
    private static final String STATE_KIND = "apk_import_kind";
    private static final String STATE_PACKAGE = "apk_import_package";
    private static final String STATE_APP_NAME = "apk_import_app_name";

    private TextView status;
    private Uri inputUri;
    private InputKind inputKind;
    private String packageName;
    private String appName;
    private File stagedApk;

    @Override
    protected void onCreate(@Nullable Bundle state) {
        super.onCreate(state);
        setContentView(R.layout.apk_import_activity);
        status = findViewById(R.id.tvStatus);

        findViewById(R.id.ivMenu).setOnClickListener(v -> showMenu());
        findViewById(R.id.btnClose).setOnClickListener(v -> finish());
        findViewById(R.id.btnInstall).setOnClickListener(v -> installSingleApk());
        findViewById(R.id.btnOpenInBaRe).setOnClickListener(v -> showBackupBoundary());
        findViewById(R.id.btnLaunch).setOnClickListener(v -> launchImportedApp());

        if (state == null) {
            handleIntent(getIntent());
        } else {
            restoreState(state);
        }
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        handleIntent(intent);
    }

    private void restoreState(Bundle state) {
        String restoredUri = state.getString(STATE_URI);
        inputUri = restoredUri == null ? null : Uri.parse(restoredUri);
        String restoredKind = state.getString(STATE_KIND);
        inputKind = restoredKind == null ? null : InputKind.valueOf(restoredKind);
        packageName = state.getString(STATE_PACKAGE);
        appName = state.getString(STATE_APP_NAME);

        if (inputUri != null && inputKind != null) {
            renderAccepted(resolveDisplayName(inputUri));
            if (packageName != null) renderPackageInfo(packageName, appName);
        } else {
            handleIntent(getIntent());
        }
    }

    private void handleIntent(@Nullable Intent intent) {
        inputUri = resolveInputUri(intent);
        packageName = null;
        appName = null;
        stagedApk = null;

        if (inputUri == null) {
            showUnsupported();
            return;
        }

        String displayName = resolveDisplayName(inputUri);
        String mime = getContentResolver().getType(inputUri);
        inputKind = classify(displayName, mime);

        if (inputKind == null) {
            showUnsupported(displayName);
            return;
        }

        renderAccepted(displayName);
        if (inputKind == InputKind.SINGLE_APK) {
            inspectSingleApk();
        } else {
            renderArchiveBoundary(displayName);
        }
    }

    @Nullable
    private Uri resolveInputUri(@Nullable Intent intent) {
        if (intent == null) return null;
        if (Intent.ACTION_VIEW.equals(intent.getAction()) && intent.getData() != null) {
            return intent.getData();
        }
        Parcelable stream = intent.getParcelableExtra(Intent.EXTRA_STREAM);
        if (stream instanceof Uri) return (Uri) stream;
        return intent.getData();
    }

    @Nullable
    private String resolveDisplayName(Uri uri) {
        android.database.Cursor cursor = null;
        try {
            cursor = getContentResolver().query(
                    uri, new String[]{"_display_name"}, null, null, null);
            if (cursor != null && cursor.moveToFirst()) {
                String name = cursor.getString(0);
                if (name != null && !name.trim().isEmpty()) return name;
            }
        } catch (RuntimeException ignored) {
        } finally {
            if (cursor != null) cursor.close();
        }
        String segment = uri.getLastPathSegment();
        return segment == null ? uri.toString() : segment;
    }

    @Nullable
    private InputKind classify(@Nullable String displayName, @Nullable String mime) {
        String name = displayName == null ? "" : displayName.toLowerCase(Locale.ROOT);
        if (name.endsWith(".apks")) return InputKind.APKS_ARCHIVE;
        if (name.endsWith(".apk")
                || "application/vnd.android.package-archive".equals(mime)) {
            return InputKind.SINGLE_APK;
        }
        return null;
    }

    private void renderAccepted(String displayName) {
        findViewById(R.id.progressIndicator).setVisibility(View.VISIBLE);
        findViewById(R.id.cardAppInfo).setVisibility(View.GONE);
        findViewById(R.id.importBottomActions).setVisibility(View.GONE);
        findViewById(R.id.ivStatus).setVisibility(View.GONE);
        findViewById(R.id.ivError).setVisibility(View.GONE);

        String type = inputKind == InputKind.SINGLE_APK
                ? getString(R.string.apk_import_single_apk)
                : getString(R.string.apk_import_apks_archive);
        status.setText(getString(R.string.apk_import_input_ready, type, displayName));
    }

    private void inspectSingleApk() {
        new Thread(() -> {
            File copy = null;
            try {
                copy = stageInput();
                PackageInfo info = getPackageManager().getPackageArchiveInfo(
                        copy.getAbsolutePath(),
                        android.content.pm.PackageManager.GET_META_DATA);
                if (info == null || info.applicationInfo == null) {
                    throw new IOException("Unable to read APK package metadata");
                }
                info.applicationInfo.sourceDir = copy.getAbsolutePath();
                info.applicationInfo.publicSourceDir = copy.getAbsolutePath();
                final String pkg = info.packageName;
                final CharSequence label = info.applicationInfo.loadLabel(getPackageManager());
                final Drawable icon = info.applicationInfo.loadIcon(getPackageManager());

                runOnUiThread(() -> {
                    packageName = pkg;
                    appName = label == null ? pkg : label.toString();
                    stagedApk = copy;
                    renderPackageInfo(info, icon);
                });
            } catch (Exception e) {
                if (copy != null) copy.delete();
                runOnUiThread(() -> showImportError(e));
            }
        }).start();
    }

    private File stageInput() throws IOException {
        File dir = new File(getCacheDir(), "apk_import");
        if (!dir.exists() && !dir.mkdirs()) throw new IOException("Unable to create APK import cache");
        File out = new File(dir, "input.apk");
        try (FileInputStream in = new FileInputStream(
                getContentResolver().openFileDescriptor(inputUri, "r").getFileDescriptor());
             FileOutputStream fileOut = new FileOutputStream(out)) {
            byte[] buffer = new byte[8192];
            int read;
            while ((read = in.read(buffer)) != -1) fileOut.write(buffer, 0, read);
        } catch (Exception ignored) {
            try (java.io.InputStream in = getContentResolver().openInputStream(inputUri);
                 FileOutputStream fileOut = new FileOutputStream(out)) {
                if (in == null) throw new IOException("Unable to open APK input");
                byte[] buffer = new byte[8192];
                int read;
                while ((read = in.read(buffer)) != -1) fileOut.write(buffer, 0, read);
            }
        }
        return out;
    }

    private void renderPackageInfo(PackageInfo info, Drawable icon) {
        ImageView iconView = findViewById(R.id.ivImportedAppIcon);
        if (iconView != null && icon != null) iconView.setImageDrawable(icon);
        TextView pkg = findViewById(R.id.tvPackageName);
        TextView title = findViewById(R.id.tvAppName);
        TextView version = findViewById(R.id.tvVersionInfo);
        TextView summary = findViewById(R.id.tvApkSummary);
        if (pkg != null) pkg.setText(info.packageName);
        if (title != null) title.setText(appName == null ? info.packageName : appName);
        if (version != null) {
            String versionName = info.versionName == null ? getString(R.string.unknown) : info.versionName;
            version.setText(versionName);
        }
        if (summary != null) {
            summary.setText(getString(
                    R.string.apk_import_apk_summary,
                    info.applicationInfo == null ? 0 : 1,
                    getString(R.string.unknown)));
        }
        findViewById(R.id.cardAppInfo).setVisibility(View.VISIBLE);
        findViewById(R.id.progressIndicator).setVisibility(View.GONE);
        findViewById(R.id.ivStatus).setVisibility(View.VISIBLE);
        findViewById(R.id.importBottomActions).setVisibility(View.VISIBLE);
        findViewById(R.id.btnInstall).setVisibility(View.VISIBLE);
        findViewById(R.id.btnOpenInBaRe).setVisibility(View.VISIBLE);
        findViewById(R.id.importSuccessSecondaryActions).setVisibility(View.VISIBLE);
        findViewById(R.id.btnLaunch).setVisibility(
                getPackageManager().getLaunchIntentForPackage(info.packageName) == null
                        ? View.GONE : View.VISIBLE);
        findViewById(R.id.btnClose).setVisibility(View.VISIBLE);
        findViewById(R.id.tvInstallerSource).setVisibility(View.GONE);
    }

    private void renderPackageInfo(String pkg, String name) {
        TextView packageView = findViewById(R.id.tvPackageName);
        TextView appView = findViewById(R.id.tvAppName);
        if (packageView != null) packageView.setText(pkg);
        if (appView != null) appView.setText(name == null ? pkg : name);
        findViewById(R.id.cardAppInfo).setVisibility(View.VISIBLE);
        findViewById(R.id.progressIndicator).setVisibility(View.GONE);
        findViewById(R.id.importBottomActions).setVisibility(View.VISIBLE);
        findViewById(R.id.btnInstall).setVisibility(View.VISIBLE);
        findViewById(R.id.btnOpenInBaRe).setVisibility(View.VISIBLE);
        findViewById(R.id.importSuccessSecondaryActions).setVisibility(View.VISIBLE);
        findViewById(R.id.btnClose).setVisibility(View.VISIBLE);
    }

    private void renderArchiveBoundary(String displayName) {
        findViewById(R.id.progressIndicator).setVisibility(View.GONE);
        findViewById(R.id.ivStatus).setVisibility(View.VISIBLE);
        findViewById(R.id.importBottomActions).setVisibility(View.VISIBLE);
        findViewById(R.id.btnInstall).setVisibility(View.GONE);
        findViewById(R.id.btnOpenInBaRe).setVisibility(View.VISIBLE);
        findViewById(R.id.importSuccessSecondaryActions).setVisibility(View.VISIBLE);
        findViewById(R.id.btnLaunch).setVisibility(View.GONE);
        findViewById(R.id.btnClose).setVisibility(View.VISIBLE);
        status.setText(getString(R.string.apk_import_apks_archive, displayName));
    }

    private void installSingleApk() {
        if (inputUri == null || inputKind != InputKind.SINGLE_APK) return;
        try {
            Intent intent = new Intent(Intent.ACTION_VIEW);
            intent.setDataAndType(inputUri, "application/vnd.android.package-archive");
            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            intent.setClipData(ClipData.newRawUri("apk", inputUri));
            startActivityForResult(intent, 620);
            status.setText(R.string.apk_import_status_waiting_for_installer);
        } catch (Exception e) {
            showImportError(e);
        }
    }

    private void launchImportedApp() {
        if (packageName == null) return;
        Intent launch = getPackageManager().getLaunchIntentForPackage(packageName);
        if (launch != null) {
            startActivity(launch);
            finish();
        }
    }

    private void showBackupBoundary() {
        new MaterialAlertDialogBuilder(this)
                .setTitle(R.string.open_in_bare)
                .setMessage(R.string.p3_apk_import_boundary)
                .setNegativeButton(R.string.close, null)
                .setPositiveButton(android.R.string.ok, null)
                .show();
    }

    private void showImportError(Exception error) {
        findViewById(R.id.progressIndicator).setVisibility(View.GONE);
        findViewById(R.id.cardAppInfo).setVisibility(View.GONE);
        findViewById(R.id.importBottomActions).setVisibility(View.VISIBLE);
        findViewById(R.id.ivStatus).setVisibility(View.GONE);
        findViewById(R.id.ivError).setVisibility(View.VISIBLE);
        findViewById(R.id.btnInstall).setVisibility(View.GONE);
        findViewById(R.id.btnOpenInBaRe).setVisibility(View.GONE);
        findViewById(R.id.importSuccessSecondaryActions).setVisibility(View.VISIBLE);
        findViewById(R.id.btnLaunch).setVisibility(View.GONE);
        findViewById(R.id.btnClose).setVisibility(View.VISIBLE);
        status.setText(getString(
                R.string.apk_import_error_with_detail,
                error.getMessage() == null ? getString(R.string.unknown) : error.getMessage()));
    }

    private void showUnsupported() {
        showUnsupported(null);
    }

    private void showUnsupported(@Nullable String displayName) {
        findViewById(R.id.progressIndicator).setVisibility(View.GONE);
        findViewById(R.id.cardAppInfo).setVisibility(View.GONE);
        findViewById(R.id.importBottomActions).setVisibility(View.VISIBLE);
        findViewById(R.id.ivStatus).setVisibility(View.GONE);
        findViewById(R.id.ivError).setVisibility(View.VISIBLE);
        findViewById(R.id.btnInstall).setVisibility(View.GONE);
        findViewById(R.id.btnOpenInBaRe).setVisibility(View.GONE);
        findViewById(R.id.importSuccessSecondaryActions).setVisibility(View.VISIBLE);
        findViewById(R.id.btnLaunch).setVisibility(View.GONE);
        findViewById(R.id.btnClose).setVisibility(View.VISIBLE);
        status.setText(displayName == null
                ? getString(R.string.apk_import_missing_input)
                : getString(R.string.apk_import_unsupported_input, displayName));
    }

    private void showMenu() {
        PopupMenu menu = new PopupMenu(this, findViewById(R.id.ivMenu));
        menu.getMenuInflater().inflate(R.menu.menu_apk_import, menu.getMenu());
        menu.setOnMenuItemClickListener(this::onMenuItemClick);
        menu.show();
    }

    private boolean onMenuItemClick(MenuItem item) {
        if (item.getItemId() == R.id.action_barelogger) {
            startActivity(new Intent(this, com.bare.slog.SLogActivity.class));
            return true;
        }
        return false;
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        if (inputUri != null) outState.putString(STATE_URI, inputUri.toString());
        if (inputKind != null) outState.putString(STATE_KIND, inputKind.name());
        if (packageName != null) outState.putString(STATE_PACKAGE, packageName);
        if (appName != null) outState.putString(STATE_APP_NAME, appName);
        super.onSaveInstanceState(outState);
    }

    @Override
    protected void onDestroy() {
        if (stagedApk != null) stagedApk.delete();
        super.onDestroy();
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 620) {
            status.setText(resultCode == RESULT_OK
                    ? R.string.apk_import_status_install_complete
                    : R.string.apk_import_status_waiting_for_installer);
        }
    }

    private enum InputKind {
        APKS_ARCHIVE,
        SINGLE_APK
    }
}
