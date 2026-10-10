package com.bareapps.barebackup;

import com.bareapps.barebackup.folders.data.LocalBackupEngine;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import org.json.JSONException;

import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/** BΛR☰ application entry point. Local folder backup, integrity verification, and safe restore. */
public final class BareApp extends Activity {
    private static final int PICK_SOURCE = 101;
    private static final int PICK_BACKUP_ROOT = 102;
    private static final int PICK_BACKUP_TO_VERIFY = 103;
    private static final int PICK_BACKUP_TO_RESTORE = 104;
    private static final int PICK_RESTORE_DESTINATION = 105;

    private final ExecutorService worker = Executors.newSingleThreadExecutor();
    private Uri sourceUri;
    private Uri backupRootUri;
    private Uri backupToVerifyUri;
    private Uri backupToRestoreUri;
    private Uri restoreDestinationUri;
    private TextView sourceStatus;
    private TextView backupRootStatus;
    private TextView verifyStatus;
    private TextView restoreStatus;
    private TextView output;

    @Override public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        buildUi();
    }

    private void buildUi() {
        ScrollView scroll = new ScrollView(this);
        LinearLayout page = new LinearLayout(this);
        page.setOrientation(LinearLayout.VERTICAL);
        int pad = dp(20);
        page.setPadding(pad, pad, pad, pad);
        scroll.addView(page);

        TextView title = new TextView(this);
        title.setText("BΛR☰ Backup");
        title.setTextSize(28);
        title.setTypeface(null, android.graphics.Typeface.BOLD);
        page.addView(title);

        TextView intro = new TextView(this);
        intro.setText("Local folder backup with a versioned manifest, SHA-256 integrity checks, and restore into a new folder. No account or paid entitlement required.");
        intro.setTextSize(15);
        intro.setPadding(0, dp(8), 0, dp(18));
        page.addView(intro);

        addButton(page, "1. Choose source folder", v -> choose(PICK_SOURCE));
        sourceStatus = addStatus(page, "No source selected.");
        addButton(page, "2. Choose backup destination", v -> choose(PICK_BACKUP_ROOT));
        backupRootStatus = addStatus(page, "No backup destination selected.");
        addButton(page, "Create local backup", v -> runBackup());
        addDivider(page);

        TextView verifyTitle = new TextView(this);
        verifyTitle.setText("Verify an existing backup");
        verifyTitle.setTextSize(19);
        verifyTitle.setTypeface(null, android.graphics.Typeface.BOLD);
        page.addView(verifyTitle);
        addButton(page, "Choose backup folder to verify", v -> choose(PICK_BACKUP_TO_VERIFY));
        verifyStatus = addStatus(page, "No backup selected for verification.");
        addButton(page, "Verify backup integrity", v -> runVerify());
        addDivider(page);

        TextView restoreTitle = new TextView(this);
        restoreTitle.setText("Restore to a new folder");
        restoreTitle.setTextSize(19);
        restoreTitle.setTypeface(null, android.graphics.Typeface.BOLD);
        page.addView(restoreTitle);
        addButton(page, "Choose backup folder to restore", v -> choose(PICK_BACKUP_TO_RESTORE));
        restoreStatus = addStatus(page, "No backup or restore destination selected.");
        addButton(page, "Choose restore destination", v -> choose(PICK_RESTORE_DESTINATION));
        addButton(page, "Verify and restore backup", v -> runRestore());

        output = new TextView(this);
        output.setTextSize(14);
        output.setPadding(0, dp(20), 0, dp(12));
        page.addView(output);
        setContentView(scroll);
    }

    private void choose(int requestCode) {
        Intent intent = new Intent(Intent.ACTION_OPEN_DOCUMENT_TREE);
        intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION
                | Intent.FLAG_GRANT_WRITE_URI_PERMISSION
                | Intent.FLAG_GRANT_PERSISTABLE_URI_PERMISSION);
        startActivityForResult(intent, requestCode);
    }

    @Override protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode != RESULT_OK || data == null || data.getData() == null) return;
        Uri uri = data.getData();
        int flags = data.getFlags() & (Intent.FLAG_GRANT_READ_URI_PERMISSION | Intent.FLAG_GRANT_WRITE_URI_PERMISSION);
        try {
            getContentResolver().takePersistableUriPermission(uri, flags);
        } catch (SecurityException ignored) {
            // Some document providers grant a transient permission only; subsequent operations report access errors.
        }
        switch (requestCode) {
            case PICK_SOURCE:
                sourceUri = uri;
                sourceStatus.setText("Selected: " + uri.getLastPathSegment());
                break;
            case PICK_BACKUP_ROOT:
                backupRootUri = uri;
                backupRootStatus.setText("Selected: " + uri.getLastPathSegment());
                break;
            case PICK_BACKUP_TO_VERIFY:
                backupToVerifyUri = uri;
                verifyStatus.setText("Selected: " + uri.getLastPathSegment());
                break;
            case PICK_BACKUP_TO_RESTORE:
                backupToRestoreUri = uri;
                updateRestoreStatus();
                break;
            case PICK_RESTORE_DESTINATION:
                restoreDestinationUri = uri;
                updateRestoreStatus();
                break;
            default:
                break;
        }
    }

    private void runBackup() {
        if (sourceUri == null || backupRootUri == null) {
            show("Choose both a source folder and a backup destination first.");
            return;
        }
        execute("Creating backup…", () -> LocalBackupEngine.createBackup(this, sourceUri, backupRootUri),
                "Backup created");
    }

    private void runVerify() {
        if (backupToVerifyUri == null) {
            show("Choose the backup directory that contains manifest.json.");
            return;
        }
        execute("Verifying every payload…", () -> LocalBackupEngine.verifyBackup(this, backupToVerifyUri),
                "Verification passed");
    }

    private void runRestore() {
        if (backupToRestoreUri == null || restoreDestinationUri == null) {
            show("Choose a backup directory and a restore destination first.");
            return;
        }
        execute("Verifying payloads before restore…",
                () -> LocalBackupEngine.restoreBackup(this, backupToRestoreUri, restoreDestinationUri),
                "Restore completed");
    }

    private interface Operation { LocalBackupEngine.Result run() throws Exception; }

    private void execute(String progress, Operation operation, String successTitle) {
        show(progress);
        worker.execute(() -> {
            try {
                LocalBackupEngine.Result result = operation.run();
                runOnUiThread(() -> show(successTitle + "\n" + result.detail + "\nDirectory: "
                        + result.directoryName + "\nFiles: " + result.fileCount + "\nBytes: " + result.totalBytes));
            } catch (Exception failure) {
                String message = failure.getMessage();
                runOnUiThread(() -> show("Operation failed safely: " + (message == null ? failure.getClass().getSimpleName() : message)));
            }
        });
    }

    private void updateRestoreStatus() {
        String backup = backupToRestoreUri == null ? "backup not selected" : backupToRestoreUri.getLastPathSegment();
        String destination = restoreDestinationUri == null ? "destination not selected" : restoreDestinationUri.getLastPathSegment();
        restoreStatus.setText("Backup: " + backup + "\nDestination: " + destination);
    }

    private void show(String message) { output.setText(message); }

    private TextView addStatus(LinearLayout page, String text) {
        TextView view = new TextView(this);
        view.setText(text);
        view.setTextSize(13);
        view.setPadding(0, dp(4), 0, dp(12));
        page.addView(view);
        return view;
    }

    private void addButton(LinearLayout page, String text, View.OnClickListener click) {
        Button button = new Button(this);
        button.setText(text);
        button.setOnClickListener(click);
        page.addView(button);
    }

    private void addDivider(LinearLayout page) {
        View divider = new View(this);
        divider.setBackgroundColor(0xffdddddd);
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, dp(1));
        params.setMargins(0, dp(16), 0, dp(16));
        page.addView(divider, params);
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }

    @Override protected void onDestroy() {
        worker.shutdownNow();
        super.onDestroy();
    }
}
