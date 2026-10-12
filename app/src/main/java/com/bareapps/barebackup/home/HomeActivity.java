package com.bareapps.barebackup.home;

import android.app.Activity;
import android.os.Bundle;
import android.widget.Toast;

import com.bareapps.barebackup.BareApp;
import com.bareapps.rootservice.PrivilegeManager;
import android.view.View;
import android.widget.TextView;
import android.widget.ProgressBar;
import android.os.Environment;
import android.os.StatFs;
import android.text.format.Formatter;
import java.io.File;

import com.bareapps.barebackup.R;

/** Static, reference-shaped Home surface. Data and actions are placeholders by design. */
public final class HomeActivity extends Activity {
    private PrivilegeManager privilegeManager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.home_activity);
        int[] tabs = {R.id.nav_home, R.id.nav_cloud, R.id.nav_schedule, R.id.nav_account};
        int[] labels = {R.string.home_tab_home, R.string.home_tab_cloud, R.string.home_tab_schedules, R.string.home_tab_account};
        for (int i = 0; i < tabs.length; i++) {
            final int selected = i;
            View tab = findViewById(tabs[i]);
            if (tab != null) tab.setOnClickListener(v -> selectTab(selected, tabs, labels));
        }
        selectTab(0, tabs, labels);
        updateStorageStats();
        View profile = findViewById(R.id.home_profile);
        if (profile != null) profile.setOnClickListener(v -> selectTab(3, tabs, labels));
        View search = findViewById(R.id.home_search);
        if (search != null) search.setOnClickListener(v -> showPlaceholder(R.string.home_search_title));
        // Storage statistics are informational, not a navigation target.
        // Taps on the card's blank space or root status must not open storage settings.
        View storage = findViewById(R.id.home_storage_card);
        if (storage != null) {
            storage.setClickable(false);
            storage.setOnClickListener(null);
        }
        View rootStatus = findViewById(R.id.home_root_status_value);
        if (rootStatus != null) {
            rootStatus.setClickable(false);
            rootStatus.setOnClickListener(null);
        }
        View rootDetail = findViewById(R.id.home_root_status_detail);
        if (rootDetail != null) {
            rootDetail.setClickable(false);
            rootDetail.setOnClickListener(null);
        }
        bindAction(R.id.home_chip_apps, () -> openSettings(android.provider.Settings.ACTION_MANAGE_ALL_APPLICATIONS_SETTINGS));
        bindAction(R.id.home_chip_messages, () -> openIntent(new android.content.Intent(android.content.Intent.ACTION_MAIN)
                .addCategory(android.content.Intent.CATEGORY_APP_MESSAGING), "No messaging app is available."));
        bindAction(R.id.home_chip_call_logs, () -> openIntent(new android.content.Intent(android.content.Intent.ACTION_VIEW,
                android.net.Uri.parse("content://call_log/calls")), "The system call log could not be opened."));
        bindAction(R.id.home_chip_folders, () -> openIntent(new android.content.Intent(android.content.Intent.ACTION_OPEN_DOCUMENT_TREE),
                "The system file picker is not available."));
        bindAction(R.id.home_chip_wallpapers, () -> openIntent(new android.content.Intent(android.content.Intent.ACTION_SET_WALLPAPER),
                "No wallpaper picker is available."));
        bindAction(R.id.home_chip_wifi, () -> openSettings(android.provider.Settings.ACTION_WIFI_SETTINGS));
        bindAction(R.id.action_restore_from_device, () -> openIntent(new android.content.Intent(android.content.Intent.ACTION_OPEN_DOCUMENT)
                .setType("*/*").addCategory(android.content.Intent.CATEGORY_OPENABLE), "No file picker is available."));
        bindAction(R.id.action_restore_from_cloud, () -> showPlaceholder(R.string.home_from_cloud));
        int[] actions = {R.id.action_backup_apps, R.id.action_restore_apps, R.id.action_more};
        int[] actionTitles = {R.string.home_backup_apps, R.string.home_restore_apps, R.string.home_more_actions};
        for (int i = 0; i < actions.length; i++) {
            final int index = i;
            View action = findViewById(actions[i]);
            if (action != null) action.setOnClickListener(v -> showPlaceholder(actionTitles[index]));
        }
    }

    private interface Action { void run(); }

    private void bindAction(int id, Action action) {
        View view = findViewById(id);
        if (view != null) view.setOnClickListener(v -> action.run());
    }

    private void openInternalStorageSettings() {
        openSettings(android.provider.Settings.ACTION_INTERNAL_STORAGE_SETTINGS);
    }

    private void openSettings(String action) {
        android.content.Intent intent = new android.content.Intent(action);
        if (intent.resolveActivity(getPackageManager()) == null) {
            intent = new android.content.Intent(android.provider.Settings.ACTION_SETTINGS);
        }
        openIntent(intent, "Android settings could not be opened.");
    }

    private void openIntent(android.content.Intent intent, String message) {
        try {
            startActivity(intent);
        } catch (RuntimeException error) {
            Toast.makeText(this, message, Toast.LENGTH_LONG).show();
        }
    }

    private void updateStorageStats() {
        try {
            File root = Environment.getExternalStorageDirectory();
            StatFs stats = new StatFs(root.getAbsolutePath());
            long total = stats.getTotalBytes();
            long free = stats.getAvailableBytes();
            long used = Math.max(0L, total - free);
            int percent = total <= 0 ? 0 : (int) Math.min(100L, used * 100L / total);
            TextView value = findViewById(R.id.home_storage_value);
            TextView usedLabel = findViewById(R.id.home_storage_used);
            ProgressBar progress = findViewById(R.id.home_storage_progress);
            if (value != null) value.setText(Formatter.formatFileSize(this, free) + " free of "
                    + Formatter.formatFileSize(this, total));
            if (usedLabel != null) usedLabel.setText(percent + "% used");
            if (progress != null) progress.setProgress(percent);
        } catch (RuntimeException error) {
            TextView value = findViewById(R.id.home_storage_value);
            TextView usedLabel = findViewById(R.id.home_storage_used);
            if (value != null) value.setText("Storage information unavailable");
            if (usedLabel != null) usedLabel.setText("Could not read storage statistics");
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        privilegeManager = ((BareApp) getApplication()).getPrivilegeManager();
        if (privilegeManager != null) {
            privilegeManager.setStatusListener(status -> {
                TextView value = findViewById(R.id.home_root_status_value);
                TextView detail = findViewById(R.id.home_root_status_detail);
                if (value == null || detail == null) return;
                if (status.mode == PrivilegeManager.Mode.ROOT && status.rootGranted) {
                    value.setText("Root active");
                    value.setTextColor(0xFF9CCC65);
                    detail.setText("Execution UID: " + status.executionUid);
                } else if (status.mode == PrivilegeManager.Mode.SHIZUKU && status.shizukuConnected) {
                    value.setText("Shizuku active");
                    value.setTextColor(0xFF9CCC65);
                    detail.setText("Privileged service connected · UID " + status.executionUid);
                } else {
                    value.setText(status.mode == PrivilegeManager.Mode.ROOT
                            ? "Root selected · access unavailable"
                            : status.mode == PrivilegeManager.Mode.SHIZUKU
                                ? "Shizuku selected · service unavailable" : "Non-root mode");
                    value.setTextColor(0xFFFFAFB9);
                    detail.setText(status.mode == PrivilegeManager.Mode.ROOT
                        ? "Root was selected, but the root shell is not active"
                        : status.mode == PrivilegeManager.Mode.SHIZUKU
                            ? (status.shizukuAvailable ? "Shizuku authorized; service not connected" : "Shizuku is unavailable")
                            : "Commands run with the app UID; privileged permissions are not assumed");
                }
            });
        }
    }

    @Override
    protected void onPause() {
        if (privilegeManager != null) privilegeManager.setStatusListener(null);
        super.onPause();
    }

    private void selectTab(int selected, int[] tabs, int[] labels) {
        for (int i = 0; i < tabs.length; i++) {
            TextView tab = findViewById(tabs[i]);
            if (tab != null) {
                tab.setSelected(i == selected);
                tab.setAlpha(i == selected ? 1.0f : 0.72f);
            }
        }
        TextView title = findViewById(R.id.home_content_title);
        if (title != null) title.setText(labels[selected]);
        TextView content = findViewById(R.id.home_content_placeholder);
        if (content != null) {
            int message = selected == 0 ? R.string.home_overview : selected == 1 ? R.string.home_cloud_placeholder
                : selected == 2 ? R.string.home_schedules_placeholder : R.string.home_account_placeholder;
            content.setText(message);
            content.setVisibility(selected == 0 ? View.GONE : View.VISIBLE);
        }
        View overview = findViewById(R.id.home_overview_content);
        if (overview != null) overview.setVisibility(selected == 0 ? View.VISIBLE : View.GONE);
    }

    private void showPlaceholder(int title) {
        new android.app.AlertDialog.Builder(this).setTitle(title)
            .setMessage(R.string.home_action_placeholder).setPositiveButton(android.R.string.ok, null).show();
    }
}