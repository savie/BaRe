package com.bare.settings;

import android.content.Intent;
import android.provider.Settings;

import androidx.annotation.Nullable;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;

import com.bare.R;
import com.bare.core.state.LocalState;
import com.bare.settings.model.AppSettings;
import com.bare.slog.SLogActivity;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;

/**
 * P3 reconstruction of the Reference root Settings surface.
 */
public final class SettingsFragment extends PreferenceFragmentCompat {
    private SettingsRepository settingsRepository;

    @Override
    public void onCreatePreferences(@Nullable android.os.Bundle state, @Nullable String rootKey) {
        setPreferencesFromResource(R.xml.settings, rootKey);
        settingsRepository = new SettingsRepository(new LocalState(requireContext()));
        wire();
    }

    private void wire() {
        detail("app_backups", 1, R.string.app_backups);
        detail("sms_backups", 2, R.string.messages_backups);
        detail("call_backups", 3, R.string.call_logs_backups);
        detail("folder_backups", 8, R.string.folder_backups);
        detail("cloud_backups", 7, R.string.cloud_backups);
        detail("labs", 4, R.string.bare_labs);
        detail("contact", 5, R.string.contact);
        detail("about", 6, R.string.about);

        boundary("app_theme", "App theme");
        boundary("language", "Language");
        boundary("backup_storage_location", "Storage for your local backups");
        boundary("encryption_password", "Encryption password strategy");
        boundary("manage_space", "Manage space");
        boundary("help_center", "Help center");
        boundary("restart_app", "Restart app");
        boundary("export_settings", "Export settings");
        boundary("import_settings", "Import settings");

        Preference notifications = findPreference("manage_notifications");
        if (notifications != null) {
            notifications.setOnPreferenceClickListener(p -> {
                try {
                    Intent i = new Intent(Settings.ACTION_APP_NOTIFICATION_SETTINGS);
                    i.putExtra(Settings.EXTRA_APP_PACKAGE, requireContext().getPackageName());
                    startActivity(i);
                } catch (Exception ignored) {
                    showBoundary("Manage notifications");
                }
                return true;
            });
        }

        Preference sounds = findPreference(LocalState.KEY_PLAY_NOTIFICATION_SOUNDS);
        if (sounds != null) {
            AppSettings settings = settingsRepository.read();
            if (sounds instanceof MSwitchPreference) {
                Boolean enabled = settings.isPlayNotificationSounds();
                ((MSwitchPreference) sounds).setChecked(enabled != null && enabled);
            }
            sounds.setOnPreferenceChangeListener((p, value) -> {
                settingsRepository.setPlayNotificationSounds((Boolean) value);
                return true;
            });
        }

        Preference logger = findPreference("barelogger");
        if (logger != null) {
            logger.setOnPreferenceClickListener(p -> {
                startActivity(new Intent(requireContext(), SLogActivity.class));
                return true;
            });
        }
    }

    private void detail(String key, int category, int titleRes) {
        Preference p = findPreference(key);
        if (p == null) return;
        p.setOnPreferenceClickListener(v -> {
            Intent i = new Intent(requireContext(), SettingsDetailActivity.class);
            i.putExtra(SettingsDetailActivity.EXTRA_CATEGORY, category);
            i.putExtra(SettingsDetailActivity.EXTRA_CATEGORY_TITLE, getString(titleRes));
            startActivity(i);
            return true;
        });
    }

    private void boundary(String key, String title) {
        Preference p = findPreference(key);
        if (p != null) {
            p.setOnPreferenceClickListener(v -> {
                showBoundary(title);
                return true;
            });
        }
    }

    private void showBoundary(String title) {
        new MaterialAlertDialogBuilder(requireContext())
                .setTitle(title)
                .setMessage(R.string.p3_settings_boundary)
                .setPositiveButton(R.string.close, null)
                .show();
    }
}
