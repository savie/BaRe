package com.bare.settings;

import android.content.SharedPreferences;

import androidx.appcompat.app.AlertDialog;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceScreen;

import com.bare.cloud.orphans.CloudOrphanCleanerActivity;
import com.bare.settings.appvisibility.AppVisibilityDiagnosticsActivity;

public final class SettingsLabsFragment extends SettingsDetailBaseFragment {
    private static final String[] ONEDRIVE_AGENTS = {"BROWSER", "WEBVIEW"};
    private static final String[] ONEDRIVE_LABELS = {"Browser", "WebView"};

    @Override
    protected void build(PreferenceScreen s) {
        PreferenceCategory cloud = category(s, "Cloud");
        item(cloud, "onedrive_auth_agent", "OneDrive sign-in agent", null);
        Preference orphan = item(cloud, "scan_orphaned_cloud_files",
                "Cloud orphan cleaner", "Scan for orphaned cloud files");
        orphan.setVisible(false);

        PreferenceCategory misc = category(s, "Miscellaneous");
        toggle(misc, "use_test_pdras", "Test PDRAs", "Use only when support asks", false);
        toggle(misc, "extra_logging", "Extra logging", "More SwiftLogger details", false);
        toggle(misc, "skip_disk_space_checks", "Skip space checks",
                "For systems reporting free space incorrectly", false);
        toggle(misc, "extend_data_sync_fgs_timeout_for_schedules", "Extend data sync timeout",
                "Extend data sync FGS timeout for schedules", false);
        item(misc, "delete_gms_files", "Delete GMS files of apps", "Fix restored app notifications");
        item(misc, "app_visibility_diagnostics", "App visibility diagnostics",
                "Diagnostics for app visibility");
        item(misc, "scan_backups", "Scan local app backups", null);
        Preference cached = item(misc, "clear_cached_apps_data", "Clear cached apps data", null);
        hidden(cached);

        wire(s);
        refresh();
    }

    private void wire(PreferenceScreen s) {
        SharedPreferences prefs = getPreferenceManager().getSharedPreferences();
        bindBoolean(s, prefs, "use_test_pdras", false);
        bindBoolean(s, prefs, "extra_logging", false);
        bindBoolean(s, prefs, "skip_disk_space_checks", false);
        bindBoolean(s, prefs, "extend_data_sync_fgs_timeout_for_schedules", false);

        Preference orphan = s.findPreference("scan_orphaned_cloud_files");
        if (orphan != null) {
            orphan.setOnPreferenceClickListener(p -> {
                startActivity(new android.content.Intent(requireContext(), CloudOrphanCleanerActivity.class));
                return true;
            });
        }

        Preference diagnostics = s.findPreference("app_visibility_diagnostics");
        if (diagnostics != null) {
            diagnostics.setOnPreferenceClickListener(p -> {
                startActivity(new android.content.Intent(requireContext(), AppVisibilityDiagnosticsActivity.class));
                return true;
            });
        }

        Preference agent = s.findPreference("onedrive_auth_agent");
        if (agent != null) {
            agent.setOnPreferenceClickListener(p -> {
                String current = prefs.getString("onedrive_auth_agent", "BROWSER");
                int selected = "WEBVIEW".equals(current) ? 1 : 0;
                new AlertDialog.Builder(requireContext())
                        .setTitle("OneDrive sign-in agent")
                        .setSingleChoiceItems(ONEDRIVE_LABELS, selected, (dialog, which) -> {
                            prefs.edit().putString("onedrive_auth_agent", ONEDRIVE_AGENTS[which]).apply();
                            dialog.dismiss();
                            refresh();
                        })
                        .setNegativeButton("Cancel", null)
                        .show();
                return true;
            });
        }
    }

    private void bindBoolean(PreferenceScreen s, SharedPreferences prefs, String key, boolean fallback) {
        Preference p = s.findPreference(key);
        if (p == null) return;
        if (p instanceof MSwitchPreference) {
            ((MSwitchPreference) p).setChecked(prefs.getBoolean(key, fallback));
        }
        p.setOnPreferenceChangeListener((preference, value) -> {
            prefs.edit().putBoolean(key, (Boolean) value).apply();
            return true;
        });
    }

    private void refresh() {
        SharedPreferences prefs = getPreferenceManager().getSharedPreferences();
        sync(prefs, "use_test_pdras", false);
        sync(prefs, "extra_logging", false);
        sync(prefs, "skip_disk_space_checks", false);
        sync(prefs, "extend_data_sync_fgs_timeout_for_schedules", false);
        Preference agent = findPreference("onedrive_auth_agent");
        if (agent != null) {
            agent.setSummary("WEBVIEW".equals(prefs.getString("onedrive_auth_agent", "BROWSER"))
                    ? "WebView" : "Browser");
        }
    }

    private void sync(SharedPreferences prefs, String key, boolean fallback) {
        Preference p = findPreference(key);
        if (p instanceof MSwitchPreference) {
            ((MSwitchPreference) p).setChecked(prefs.getBoolean(key, fallback));
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        refresh();
    }
}
