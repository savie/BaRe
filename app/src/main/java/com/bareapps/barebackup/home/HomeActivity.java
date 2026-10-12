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
        View storage = findViewById(R.id.home_storage_card);
        if (storage != null) storage.setOnClickListener(v -> showPlaceholder(R.string.home_storage_title));
        int[] actions = {R.id.action_backup_apps, R.id.action_restore_apps, R.id.action_more};
        int[] actionTitles = {R.string.home_backup_apps, R.string.home_restore_apps, R.string.home_more_actions};
        for (int i = 0; i < actions.length; i++) {
            final int index = i;
            View action = findViewById(actions[i]);
            if (action != null) action.setOnClickListener(v -> showPlaceholder(actionTitles[index]));
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
                if (status.rootGranted) {
                    value.setText("Root active");
                    value.setTextColor(0xFF9CCC65);
                    detail.setText("Execution UID: " + status.executionUid);
                } else if (status.shizukuConnected) {
                    value.setText("Shizuku active");
                    value.setTextColor(0xFF9CCC65);
                    detail.setText("Privileged service connected · UID " + status.executionUid);
                } else {
                    value.setText("Non-root mode");
                    value.setTextColor(0xFFFFAFB9);
                    detail.setText(status.shizukuAvailable
                        ? (status.shizukuAuthorized ? "Shizuku authorized; service not connected" : "Shizuku authorization unavailable")
                        : "No privileged execution session is active");
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