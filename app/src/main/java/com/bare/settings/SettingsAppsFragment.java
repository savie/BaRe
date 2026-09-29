package com.bare.settings;

import android.content.Intent;
import android.content.SharedPreferences;

import androidx.appcompat.app.AlertDialog;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceScreen;

import com.bare.appconfigs.list.ConfigListActivity;
import com.bare.appslist.ui.labels.LabelsActivity;
import com.bare.blacklist.BlacklistActivity;
import com.bare.settings.appbackuplimits.AppBackupLimitsActivity;
import com.bare.R;

public final class SettingsAppsFragment extends SettingsDetailBaseFragment {
    private static final int[] COMPRESSION_LEVELS = {0, 1};
    private static final String[] COMPRESSION_LABELS = {"No compression", "Fastest"};

    @Override
    protected void build(PreferenceScreen s) {
        PreferenceCategory general = category(s, "General");
        toggle(general, "show_system_apps", "Show system apps", null, false);
        item(general, "swipe_actions", "Swipe actions", null);
        item(general, "manage_labels", "Manage app labels", "Manage labels for apps");
        item(general, "configs", "Custom configurations", "Custom application configurations");
        item(general, "blacklist_apps", "Blacklist", "Apps excluded from backup/restore");

        PreferenceCategory multi = category(s, "Multiple backups");
        item(multi, "multiple_backups_strategy", "Multiple backups strategy", null);

        PreferenceCategory enc = category(s, "Encryption and compression");
        Preference encryption = item(enc, "apps_encryption_on", "Encrypt app data",
                "Backups encrypted with Aegis by default");
        disabled(encryption);
        item(enc, "compression_level_app_data", "Compression level", null);

        PreferenceCategory data = category(s, "App data");
        item(data, "restore_runtime_permissions", "Restore runtime permissions", null);
        item(data, "restore_special_permissions", "Restore special data", "Special permissions");
        toggle(data, "restore_ssaids", "Restore app SSAIDs", "Restores app SSAIDs", false);
        item(data, "app_backup_limits", "App backup limits", null);
        toggle(data, "backup_app_cache", "Backup cache", "Back up application cache", false);
        toggle(data, "in_place_apk_downgrades", "In-place APK downgrades",
                "Allow APK downgrades in place", false);

        wire(s);
        refresh();
    }

    private void wire(PreferenceScreen s) {
        SharedPreferences prefs = getPreferenceManager().getSharedPreferences();

        bindBoolean(s, prefs, "show_system_apps", false);
        bindBooleanWithWarning(s, prefs, "restore_ssaids", false,
                "Note", R.string.restore_app_ssaids_note);
        bindBooleanWithWarning(s, prefs, "backup_app_cache", legacyBackupCacheDefault(prefs),
                "Warning", R.string.backup_cache_warning);
        bindBoolean(s, prefs, "in_place_apk_downgrades", false);

        Preference swipe = s.findPreference("swipe_actions");
        if (swipe != null) {
            swipe.setOnPreferenceClickListener(p -> {
                startActivity(new Intent(requireContext(), AppSwipeActionsActivity.class));
                return true;
            });
        }
        Preference labels = s.findPreference("manage_labels");
        if (labels != null) {
            labels.setOnPreferenceClickListener(p -> {
                startActivity(new Intent(requireContext(), LabelsActivity.class));
                return true;
            });
        }
        Preference configs = s.findPreference("configs");
        if (configs != null) {
            configs.setOnPreferenceClickListener(p -> {
                startActivity(new Intent(requireContext(), ConfigListActivity.class));
                return true;
            });
        }
        Preference blacklist = s.findPreference("blacklist_apps");
        if (blacklist != null) {
            blacklist.setOnPreferenceClickListener(p -> {
                startActivity(new Intent(requireContext(), BlacklistActivity.class));
                return true;
            });
        }
        Preference multiple = s.findPreference("multiple_backups_strategy");
        if (multiple != null) {
            multiple.setOnPreferenceClickListener(p -> {
                startActivity(new Intent(requireContext(), MultipleBackupsActivity.class));
                return true;
            });
        }
        Preference limits = s.findPreference("app_backup_limits");
        if (limits != null) {
            limits.setOnPreferenceClickListener(p -> {
                startActivity(new Intent(requireContext(), AppBackupLimitsActivity.class));
                return true;
            });
        }
        Preference runtime = s.findPreference("restore_runtime_permissions");
        if (runtime != null) {
            runtime.setOnPreferenceClickListener(p -> {
                chooseRuntimePermissions(prefs);
                return true;
            });
        }
        Preference special = s.findPreference("restore_special_permissions");
        if (special != null) {
            special.setOnPreferenceClickListener(p -> {
                startActivity(new Intent(requireContext(), RestoreSpecialDataDetailsActivity.class));
                return true;
            });
        }

        Preference compression = s.findPreference("compression_level_app_data");
        if (compression != null) {
            compression.setOnPreferenceClickListener(p -> {
                chooseCompression(prefs);
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

    private void bindBooleanWithWarning(PreferenceScreen s, SharedPreferences prefs,
                                        String key, boolean fallback, String title, int messageRes) {
        Preference p = s.findPreference(key);
        if (p == null) return;
        if (p instanceof MSwitchPreference) {
            ((MSwitchPreference) p).setChecked(prefs.getBoolean(key, fallback));
        }
        p.setOnPreferenceChangeListener((preference, value) -> {
            boolean enabled = (Boolean) value;
            prefs.edit().putBoolean(key, enabled).apply();
            if (enabled) {
                new AlertDialog.Builder(requireContext())
                        .setTitle(title)
                         .setMessage(messageRes)
                        .setPositiveButton(android.R.string.ok, null)
                        .show();
            }
            return true;
        });
    }

    private void chooseRuntimePermissions(SharedPreferences prefs) {
        String[] labels = {
                getString(R.string.restore_permission_option_granted),
                getString(R.string.restore_permission_option_all),
                getString(R.string.restore_permission_option_none)
        };
        int current = prefs.getInt("restore_runtime_permissions", 0);
        int selected = current >= 0 && current <= 2 ? current : 0;
        new AlertDialog.Builder(requireContext())
                .setTitle(R.string.restore_runtime_permissions)
                .setSingleChoiceItems(labels, selected, (dialog, which) -> {
                    prefs.edit().putInt("restore_runtime_permissions", which).apply();
                    dialog.dismiss();
                    refresh();
                })
                .setNegativeButton("Cancel", null)
                .show();
    }

    private boolean legacyBackupCacheDefault(SharedPreferences prefs) {
        return prefs.getBoolean("KEY_BACKUP_APP_CACHE", false);
    }

    private void chooseCompression(SharedPreferences prefs) {
        int current = prefs.getInt("compression_level_app_data", 1);
        int selected = current == 0 ? 0 : 1;
        new AlertDialog.Builder(requireContext())
                .setTitle("Compression level")
                .setSingleChoiceItems(COMPRESSION_LABELS, selected, (dialog, which) -> {
                    prefs.edit().putInt("compression_level_app_data", COMPRESSION_LEVELS[which]).apply();
                    dialog.dismiss();
                    refresh();
                })
                .setNegativeButton("Cancel", null)
                .show();
    }

    private void refresh() {
        SharedPreferences prefs = getPreferenceManager().getSharedPreferences();
        Preference compression = findPreference("compression_level_app_data");
        if (compression != null) {
            int level = prefs.getInt("compression_level_app_data", 1);
            compression.setSummary(level == 0 ? COMPRESSION_LABELS[0] : COMPRESSION_LABELS[1]);
        }
        sync(prefs, "show_system_apps", false);
        sync(prefs, "restore_ssaids", false);
        sync(prefs, "backup_app_cache", legacyBackupCacheDefault(prefs));
        sync(prefs, "in_place_apk_downgrades", false);

        Preference special = findPreference("restore_special_permissions");
        if (special != null) {
            special.setSummary(prefs.getBoolean("restore_special_permissions", true) ? "Enabled" : "Disabled");
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
