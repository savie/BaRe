package com.bare.settings;

import android.content.Intent;
import android.content.SharedPreferences;

import androidx.appcompat.app.AlertDialog;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceScreen;

import com.bare.cloud.orphans.CloudOrphanCleanerActivity;
import com.bare.settings.appvisibility.AppVisibilityDiagnosticsActivity;

public final class SettingsLabsFragment extends SettingsDetailBaseFragment {
    private static final String[] ONEDRIVE_AGENT_VALUES = {"WEBVIEW", "BROWSER"};

    @Override
    protected void build(PreferenceScreen s) {
        PreferenceCategory cloud = category(s, getString(R.string.cloud));
        Preference oneDrive = item(cloud, "onedrive_auth_agent", getString(R.string.onedrive_sign_in_agent), null);
        Preference orphan = item(cloud, "scan_orphaned_cloud_files",
                getString(R.string.cloud_orphan_cleaner), getString(R.string.scan_for_orphaned_cloud_files));
        orphan.setVisible(false);

        PreferenceCategory misc = category(s, getString(R.string.miscellaneous));
        toggle(misc, "use_test_pdras", getString(R.string.test_pdras), getString(R.string.use_only_when_support_asks), false);
        toggle(misc, "extra_logging", getString(R.string.extra_logging), getString(R.string.more_barelogger_details), false);
        toggle(misc, "skip_disk_space_checks", getString(R.string.skip_space_checks),
                getString(R.string.free_space_incorrect), false);
        toggle(misc, "extend_data_sync_fgs_timeout_for_schedules", getString(R.string.extend_data_sync_timeout),
                getString(R.string.extend_data_sync_fgs_timeout), false);
        item(misc, "delete_gms_files", getString(R.string.delete_gms_files), getString(R.string.fix_restored_app_notifications));
        item(misc, "app_visibility_diagnostics", getString(R.string.app_visibility_diagnostics),
                getString(R.string.diagnostics_for_app_visibility));
        item(misc, "scan_backups", getString(R.string.scan_local_app_backups), null);
        Preference cached = item(misc, "clear_cached_apps_data", getString(R.string.clear_cached_apps_data), null);
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

        Preference oneDrive = s.findPreference("onedrive_auth_agent");
        if (oneDrive != null) {
            oneDrive.setOnPreferenceClickListener(p -> {
                chooseOneDriveAgent(prefs);
                return true;
            });
        }

        Preference orphan = s.findPreference("scan_orphaned_cloud_files");
        if (orphan != null) {
            orphan.setOnPreferenceClickListener(p -> {
                startActivity(new Intent(requireContext(), CloudOrphanCleanerActivity.class));
                return true;
            });
        }

        Preference diagnostics = s.findPreference("app_visibility_diagnostics");
        if (diagnostics != null) {
            diagnostics.setOnPreferenceClickListener(p -> {
                startActivity(new Intent(requireContext(), AppVisibilityDiagnosticsActivity.class));
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

    private void chooseOneDriveAgent(SharedPreferences prefs) {
        String current = prefs.getString("onedrive_auth_agent", null);
        int selected = "BROWSER".equals(current) ? 1 : 0;
        new AlertDialog.Builder(requireContext())
                .setTitle(R.string.onedrive_sign_in_agent)
                .setSingleChoiceItems(new String[]{getString(R.string.webview), getString(R.string.browser)}, selected, (dialog, which) -> {
                    prefs.edit().putString("onedrive_auth_agent", ONEDRIVE_AGENT_VALUES[which]).apply();
                    dialog.dismiss();
                    refresh();
                })
                .setNegativeButton(R.string.cancel, null)
                .show();
    }

    private void refresh() {
        SharedPreferences prefs = getPreferenceManager().getSharedPreferences();
        sync(prefs, "use_test_pdras", false);
        sync(prefs, "extra_logging", false);
        sync(prefs, "skip_disk_space_checks", false);
        sync(prefs, "extend_data_sync_fgs_timeout_for_schedules", false);

        Preference oneDrive = findPreference("onedrive_auth_agent");
        if (oneDrive != null) {
            String value = prefs.getString("onedrive_auth_agent", "BROWSER");
            oneDrive.setSummary("WEBVIEW".equals(value) ? R.string.webview : R.string.browser);
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
