package com.bareapps.barebackup.home;

import android.app.Activity;
import android.content.Context;
import android.app.AlertDialog;
import android.os.Bundle;
import android.widget.Toast;

import com.bareapps.barebackup.BareApp;
import com.bareapps.rootservice.PrivilegeManager;
import android.view.View;
import android.widget.TextView;
import android.os.Environment;
import android.os.StatFs;
import android.text.format.Formatter;
import java.io.File;

import com.bareapps.barebackup.R;
import com.bareapps.barebackup.BuildConfig;
import com.bareapps.barebackup.model.account.LocalAccountManager;
import com.bareapps.barebackup.model.supabase.SupabaseAuthManager;
import com.bareapps.barebackup.storage.StorageActivity;
import com.bareapps.barebackup.account.AccountActivity;
import com.bareapps.barebackup.ui.SystemBarInsets;
import com.bareapps.barebackup.ui.LocaleHelper;

/** Home dashboard; dedicated screens own their detailed UI and data presentation. */
public final class HomeActivity extends Activity {
    private PrivilegeManager privilegeManager;

    @Override
    protected void attachBaseContext(Context newBase) {
        super.attachBaseContext(LocaleHelper.wrap(newBase));
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.home_activity);
        SystemBarInsets.apply(this);
        int[] tabs = {R.id.nav_home, R.id.nav_cloud, R.id.nav_schedule, R.id.nav_account};
        int[] labels = {R.string.home_overview, R.string.home_tab_cloud, R.string.home_tab_schedules, R.string.home_tab_account};
        for (int i = 0; i < tabs.length; i++) {
            final int selected = i;
            View tab = findViewById(tabs[i]);
            if (tab != null) tab.setOnClickListener(v -> {
                if (selected == 3) startActivity(new android.content.Intent(this, AccountActivity.class));
                else selectTab(selected, tabs, labels);
            });
        }
        int requestedTab = getIntent() == null ? 0 : getIntent().getIntExtra("selected_tab", 0);
        selectTab(requestedTab >= 0 && requestedTab < tabs.length ? requestedTab : 0, tabs, labels);
        updateStorageStats();
        View profile = findViewById(R.id.home_profile);
        if (profile != null) profile.setOnClickListener(v -> startActivity(new android.content.Intent(this, AccountActivity.class)));
        View search = findViewById(R.id.home_search);
        if (search != null) search.setOnClickListener(v -> showPlaceholder(R.string.home_search_title));

        // Do not make the entire overview card clickable: whitespace around Apps/Folders/WiFi
        // shortcuts used to open StorageActivity by accident. Only storage-specific controls open it.
        View storageValue = findViewById(R.id.home_storage_value);
        if (storageValue != null) {
            storageValue.setClickable(true);
            storageValue.setFocusable(true);
            storageValue.setOnClickListener(v -> startActivity(new android.content.Intent(this, StorageActivity.class)));
        }
        View storageLabel = findViewById(R.id.home_storage_label);
        if (storageLabel != null) {
            storageLabel.setClickable(true);
            storageLabel.setFocusable(true);
            storageLabel.setOnClickListener(v -> startActivity(new android.content.Intent(this, StorageActivity.class)));
        }
        View rootStatus = findViewById(R.id.home_root_status_value);
        if (rootStatus != null) {
            rootStatus.setClickable(true);
            rootStatus.setFocusable(true);
            rootStatus.setOnClickListener(v -> showExecutionModeDialog());
        }
        View rootDetail = findViewById(R.id.home_root_status_detail);
        if (rootDetail != null) {
            rootDetail.setClickable(true);
            rootDetail.setFocusable(true);
            rootDetail.setOnClickListener(v -> showExecutionModeDialog());
        }
        bindAction(R.id.home_chip_apps, () -> showPlaceholder(R.string.home_chip_apps));
        bindAction(R.id.home_chip_messages, () -> showPlaceholder(R.string.home_chip_messages));
        bindAction(R.id.home_chip_call_logs, () -> showPlaceholder(R.string.home_chip_call_logs));
        bindAction(R.id.home_chip_folders, () -> showPlaceholder(R.string.home_chip_folders));
        bindAction(R.id.home_chip_wallpapers, () -> showPlaceholder(R.string.home_chip_wallpapers));
        bindAction(R.id.home_chip_wifi, () -> showPlaceholder(R.string.home_chip_wifi));
        bindAction(R.id.action_restore_from_device, () -> showPlaceholder(R.string.home_restore_apps));
        bindAction(R.id.action_restore_from_cloud, () -> showPlaceholder(R.string.home_from_cloud));

        bindAction(R.id.action_backup_messages, () -> showPlaceholder(R.string.home_backup_messages));
        bindAction(R.id.action_restore_messages, () -> showPlaceholder(R.string.home_restore_messages));
        bindAction(R.id.action_messages_from_device, () -> showPlaceholder(R.string.home_restore_messages));
        bindAction(R.id.action_messages_from_cloud, () -> showPlaceholder(R.string.home_from_cloud));
        bindAction(R.id.action_backup_calls, () -> showPlaceholder(R.string.home_backup_calls));
        bindAction(R.id.action_restore_calls, () -> showPlaceholder(R.string.home_restore_calls));
        bindAction(R.id.action_calls_from_device, () -> showPlaceholder(R.string.home_restore_calls));
        bindAction(R.id.action_calls_from_cloud, () -> showPlaceholder(R.string.home_from_cloud));
        bindAction(R.id.action_backup_folders, () -> showPlaceholder(R.string.home_backup_folders));
        bindAction(R.id.action_restore_folders, () -> showPlaceholder(R.string.home_restore_folders));
        bindAction(R.id.action_folders_from_cloud, () -> showPlaceholder(R.string.home_from_cloud));
        bindAction(R.id.action_folders_from_device, () -> showPlaceholder(R.string.home_restore_folders));
        bindAction(R.id.action_wallpapers_from_device, () -> showPlaceholder(R.string.home_restore_wallpapers));
        bindAction(R.id.action_wallpapers_from_cloud, () -> showPlaceholder(R.string.home_from_cloud));
        bindAction(R.id.action_wifi_from_device, () -> showPlaceholder(R.string.home_restore_wifi));
        bindAction(R.id.action_wifi_from_cloud, () -> showPlaceholder(R.string.home_from_cloud));
        bindAction(R.id.action_backup_wallpapers, () -> showPlaceholder(R.string.home_backup_wallpapers));
        bindAction(R.id.action_restore_wallpapers, () -> showPlaceholder(R.string.home_restore_wallpapers));
        bindAction(R.id.action_wallpapers_from_cloud, () -> showPlaceholder(R.string.home_from_cloud));
        bindAction(R.id.action_backup_wifi, () -> showPlaceholder(R.string.home_backup_wifi));
        bindAction(R.id.action_restore_wifi, () -> showPlaceholder(R.string.home_restore_wifi));
        bindAction(R.id.action_wifi_from_cloud, () -> showPlaceholder(R.string.home_from_cloud));
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
            android.widget.ProgressBar progress = findViewById(R.id.home_storage_progress);
            if (value != null) value.setText(getString(R.string.home_storage_free_of,
                    Formatter.formatFileSize(this, free), Formatter.formatFileSize(this, total)));
            if (usedLabel != null) usedLabel.setText(getString(R.string.home_storage_percent_used, percent));
            if (progress != null) progress.setProgress(percent);
        } catch (RuntimeException error) {
            TextView value = findViewById(R.id.home_storage_value);
            TextView usedLabel = findViewById(R.id.home_storage_used);
            if (value != null) value.setText(R.string.home_storage_unavailable);
            if (usedLabel != null) usedLabel.setText(R.string.home_storage_stats_unavailable);
        }
    }

    private void showExecutionModeDialog() {
        if (privilegeManager == null) privilegeManager = ((BareApp) getApplication()).getPrivilegeManager();
        if (privilegeManager == null) {
            Toast.makeText(this, "Execution mode manager is unavailable.", Toast.LENGTH_LONG).show();
            return;
        }
        String[] modes = {"Root access", "Shizuku", "Continue without root"};
        new AlertDialog.Builder(this).setTitle("Choose execution mode").setItems(modes, (dialog, which) -> {
            if (which == 0) {
                Toast.makeText(this, "Checking root access…", Toast.LENGTH_SHORT).show();
                privilegeManager.requestRootAccess(status -> {
                    if (isFinishing() || isDestroyed()) return;
                    if (status.rootGranted) {
                        privilegeManager.setExecutionMode(PrivilegeManager.Mode.ROOT);
                        Toast.makeText(this, "Root execution mode selected.", Toast.LENGTH_LONG).show();
                    } else {
                        Toast.makeText(this, "Root access was not granted. Previous mode was kept.", Toast.LENGTH_LONG).show();
                    }
                });
            } else if (which == 1) {
                PrivilegeManager.Status status = privilegeManager.getStatus();
                if (!status.shizukuAvailable) {
                    Toast.makeText(this, "Shizuku is not running. Start Shizuku and try again.", Toast.LENGTH_LONG).show();
                    return;
                }
                privilegeManager.setExecutionMode(PrivilegeManager.Mode.SHIZUKU);
                privilegeManager.requestShizukuAccess();
                Toast.makeText(this, "Shizuku selected. Approve its authorization prompt if shown.", Toast.LENGTH_LONG).show();
            } else {
                privilegeManager.setExecutionMode(PrivilegeManager.Mode.NON_ROOT);
                Toast.makeText(this, "Non-root execution mode selected.", Toast.LENGTH_SHORT).show();
            }
        }).show();
    }

    @Override
    protected void onNewIntent(android.content.Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        int selected = intent == null ? 0 : intent.getIntExtra("selected_tab", 0);
        int[] tabs = {R.id.nav_home, R.id.nav_cloud, R.id.nav_schedule, R.id.nav_account};
        int[] labels = {R.string.home_overview, R.string.home_tab_cloud, R.string.home_tab_schedules, R.string.home_tab_account};
        if (selected == 3) {
            startActivity(new android.content.Intent(this, AccountActivity.class));
        } else {
            selectTab(selected >= 0 && selected < tabs.length ? selected : 0, tabs, labels);
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        privilegeManager = ((BareApp) getApplication()).getPrivilegeManager();
        updateStorageStats();
        updateProfileAvatar();
        if (privilegeManager != null) {
            privilegeManager.setStatusListener(status -> {
                TextView value = findViewById(R.id.home_root_status_value);
                TextView detail = findViewById(R.id.home_root_status_detail);
                if (value == null || detail == null) return;
                if (status.mode == PrivilegeManager.Mode.ROOT && status.rootGranted) {
                    value.setText("Root active");
                    value.setTextColor(0xFF9CCC65);
                    detail.setText("Execution UID: " + status.executionUid + " · Tap to change mode");
                } else if (status.mode == PrivilegeManager.Mode.SHIZUKU && status.shizukuConnected) {
                    value.setText("Shizuku active");
                    value.setTextColor(0xFF9CCC65);
                    detail.setText("Privileged service connected · UID " + status.executionUid + " · Tap to change mode");
                } else {
                    value.setText(status.mode == PrivilegeManager.Mode.ROOT
                            ? "Root selected · access unavailable"
                            : status.mode == PrivilegeManager.Mode.SHIZUKU
                                ? "Shizuku selected · service unavailable" : "Non-root mode");
                    value.setTextColor(0xFFFFAFB9);
                    detail.setText(status.mode == PrivilegeManager.Mode.ROOT
                        ? "Root was selected, but the root shell is not active · Tap to change mode"
                        : status.mode == PrivilegeManager.Mode.SHIZUKU
                            ? (status.shizukuAvailable ? "Shizuku authorized; service not connected · Tap to change mode" : "Shizuku is unavailable · Tap to change mode")
                            : "Commands run with the app UID; tap to change execution mode");
                }
            });
        }
    }

    @Override
    protected void onPause() {
        if (privilegeManager != null) privilegeManager.setStatusListener(null);
        super.onPause();
    }


    /**
     * Keep the compact header avatar in sync with the same display-name source
     * used by AccountActivity. Called on resume so returning from Account reflects
     * profile changes without requiring an app restart.
     */
    private void updateProfileAvatar() {
        TextView avatar = findViewById(R.id.home_profile);
        if (avatar == null) return;

        String name = getString(R.string.account_anonymous_user);
        try {
            LocalAccountManager accounts = new LocalAccountManager(this);
            SupabaseAuthManager auth = new SupabaseAuthManager(
                    this, BuildConfig.SUPABASE_URL, BuildConfig.SUPABASE_PUBLISHABLE_KEY);
            boolean google = "supabase".equals(accounts.getActiveKind()) && auth.hasSession();
            String displayName = google ? auth.getCurrentDisplayName() : null;
            if (google) {
                name = displayName == null || displayName.trim().isEmpty()
                        ? "Google account" : displayName.trim();
            }
        } catch (Exception error) {
            android.util.Log.w("BaReHome", "Could not resolve profile name for header avatar", error);
        }

        String source = name == null || name.trim().isEmpty() ? "B" : name.trim();
        avatar.setText(source.substring(0, 1).toUpperCase(java.util.Locale.ROOT));
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
        new AlertDialog.Builder(this).setTitle(title).setMessage(R.string.home_action_placeholder)
            .setPositiveButton(android.R.string.ok, null).show();
    }
}
