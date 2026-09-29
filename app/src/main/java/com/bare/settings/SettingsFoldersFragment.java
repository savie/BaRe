package com.bare.settings;

import android.content.SharedPreferences;

import androidx.appcompat.app.AlertDialog;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceScreen;

public final class SettingsFoldersFragment extends SettingsDetailBaseFragment {
    private static final int[] COMPRESSION_LEVELS = {0, 1};
    private static final String[] COMPRESSION_LABELS = {"No compression", "Fastest"};

    @Override
    protected void build(PreferenceScreen s) {
        PreferenceCategory enc = category(s, "Encryption and compression");
        Preference encryption = item(enc, "folders_encryption_on", "Encrypt backups",
                "Backups encrypted with Aegis by default");
        disabled(encryption);
        item(enc, "compression_level_folders", "Compression level", null);

        Preference compression = s.findPreference("compression_level_folders");
        if (compression != null) {
            compression.setOnPreferenceClickListener(p -> {
                chooseCompression();
                return true;
            });
        }
        refresh();
    }

    private void chooseCompression() {
        SharedPreferences prefs = getPreferenceManager().getSharedPreferences();
        int current = prefs.getInt("compression_level_folders", 1);
        int selected = current == 0 ? 0 : 1;
        new AlertDialog.Builder(requireContext())
                .setTitle("Compression level")
                .setSingleChoiceItems(COMPRESSION_LABELS, selected, (dialog, which) -> {
                    prefs.edit().putInt("compression_level_folders", COMPRESSION_LEVELS[which]).apply();
                    dialog.dismiss();
                    refresh();
                })
                .setNegativeButton("Cancel", null)
                .show();
    }

    private void refresh() {
        SharedPreferences prefs = getPreferenceManager().getSharedPreferences();
        Preference compression = findPreference("compression_level_folders");
        if (compression != null) {
            int level = prefs.getInt("compression_level_folders", 1);
            compression.setSummary(level == 0 ? COMPRESSION_LABELS[0] : COMPRESSION_LABELS[1]);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        refresh();
    }
}
