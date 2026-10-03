package com.bare.settings;

import android.content.Intent;
import android.content.SharedPreferences;

import androidx.appcompat.app.AlertDialog;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceScreen;

import com.bare.appconfigs.list.ConfigListActivity;
import com.bare.appslist.ui.labels.LabelsActivity;
import com.bare.settings.appbackuplimits.AppBackupLimitsActivity;
import com.bare.appslist.ui.labels.LabelsActivity;
import com.bare.blacklist.BlacklistActivity;
import com.bare.settings.appbackuplimits.AppBackupLimitsActivity;
import com.bare.R;

public final class SettingsAppsFragment extends SettingsDetailBaseFragment {
    private static final int[] COMPRESSION_LEVELS = {0, 1};
    private static final String[] COMPRESSION_LABELS = {getString(R.string.no_compression), getString(R.string.fastest)};

    @Override
    protected void build(PreferenceScreen s) {
        PreferenceCategory general = category(s, getString(R.string.general));
        toggle(general, "show_system_apps", getString(R.string.show_system_apps), null, false);
        item(general, "swipe_actions", getString(R.string.swipe_actions), null);
        item(general, "manage_labels", getString(R.string.manage_app_labels), getString(R.string.manage_labels_for_apps));
        item(general, "configs", getString(R.string.custom_configurations), getString(R.string.custom_application_configurations));
        item(general, "blacklist_apps", getString(R.string.blacklist), getString(R.string.apps_excluded_from_backup_restore));

        PreferenceCategory multi = category(s, getString(R.string.multiple_backups));
        item(multi, "multiple_backups_strategy", getString(R.string.multiple_backups_strategy), null);

        PreferenceCategory enc = category(s, getString(R.string.encryption_and_compression));
        Preference encryption = item(enc, "apps_encryption_on", getString(R.string.encrypt_app_data),
                getString(R.string.backups_encrypted_aegis));
        disabled(encryption);
        item(enc, "compression_level_app_data", getString(R.string.compression_level), null);

        PreferenceCategory data = category(s, getString(R.string.app_data));
        item(data, "restore_runtime_permissions", getString(R.string.restore_runtime_permissions), null);
        item(data, "restore_special_permissions", getString(R.string.restore_special_data), getString(R.string.special_permissions));
        toggle(data, "restore_ssaids", getString(R.string.restore_app_ssaids), getString(R.string.restores_app_ssaids), false);
        item(data, "app_backup_limits", getString(R.string.app_backup_limits), null);
        toggle(data, "backup_app_cache", getString(R.string.backup_cache), getString(R.string.back_up_application_cache), false);
        toggle(data, "in_place_apk_downgrades", getString(R.string.in_place_apk_downgrades),
                getString(R.string.allow_apk_downgrades_in_place), false);

        wire(s);
        refresh();
    }

    private void wire(PreferenceScreen s) {
        SharedPreferences prefs = getPreferenceManager().getSharedPreferences();

        bindBoolean(s, prefs, "show_system_apps", false);
        bindBooleanWithWarning(s, prefs, "restore_ssaids", false,
                getString(R.string.note), R.string.restore_app_ssaids_note);
        bindBooleanWithWarning(s, prefs, "backup_app_cache", legacyBackupCacheDefault(prefs),
                getString(R.string.warning), R.string.backup_cache_warning);
        bindBoolean(s, prefs, "in_place_apk_downgrades", false);

        Preference multiple = s.findPreference("multiple_backups_strategy");
        if (multiple != null) {
            multiple.setOnPreferenceClickListener(p -> {
                startActivity(new Intent(requireContext(), MultipleBackupsActivity.class));
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

        Preference limits = s.findPreference("app_backup_limits");
        if (limits != null) {
            limits.setOnPreferenceClickListener(p -> {
                startActivity(new Intent(requireContext(), AppBackupLimitsActivity.class));
                return true;
            });
        }

        Preference swipe = s.findPreference("swipe_actions");
        if (swipe != null) {
            swipe.setOnPreferenceClickListener(p -> {
                startActivity(new Intent(requireContext(), AppSwipeActionsActivity.class));
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
                .setNegativeButton(R.string.cancel, null)
                .show();
    }

    private boolean legacyBackupCacheDefault(SharedPreferences prefs) {
        return prefs.getBoolean("KEY_BACKUP_APP_CACHE", false);
    }

    private void chooseCompression(SharedPreferences prefs) {
        int current = prefs.getInt("compression_level_app_data", 1);
        int selected = current == 0 ? 0 : 1;
        new AlertDialog.Builder(requireContext())
                .setTitle(R.string.compression_level)
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
            special.setSummary(prefs.getBoolean("restore_special_permissions", true) ? getString(R.string.enabled) : getString(R.string.disabled));
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
