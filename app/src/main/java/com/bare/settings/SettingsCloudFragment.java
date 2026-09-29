package com.bare.settings;

import android.content.Intent;
import android.content.SharedPreferences;

import androidx.appcompat.app.AlertDialog;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceScreen;

import com.bare.cloud.diagnostics.CloudDiagnosticsActivity;

public final class SettingsCloudFragment extends SettingsDetailBaseFragment {
    private static final int[] CONNECTIONS = {2, 3, 4};
    private static final int[] CHUNK_CHOICES = {10, 50, 100, 150, 200, 300, 400, 500, 1000};

    @Override
    protected void build(PreferenceScreen s) {
        PreferenceCategory general = category(s, "General");
        general.setKey("general_category");
        item(general, "cloud_diagnostics", "Cloud diagnostics", "Diagnostics for cloud backups");
        toggle(general, "parallel_cloud_transfers", "Parallel uploads/downloads",
                "Allow parallel cloud transfers", false);

        PreferenceCategory multi = category(s, "Multithreaded downloads");
        multi.setKey("multithreaded_downloads_category");
        toggle(multi, "multithreaded_downloads", "Multithreaded downloads",
                "Download using multiple connections", false);
        item(multi, "multithreaded_downloads_chunk_count",
                "Maximum connections per download", null);

        PreferenceCategory dropbox = category(s, "Dropbox");
        item(dropbox, "dropbox_chunk_size", "Upload chunk size", null);
        PreferenceCategory one = category(s, "OneDrive");
        item(one, "onedrive_chunk_size", "Upload chunk size", null);
        PreferenceCategory next = category(s, "Nextcloud");
        item(next, "nextcloud_chunk_size", "Upload chunk size", null);
        toggle(next, "nextcloud_force_chunked_uploads", "Force chunked uploads",
                "Force chunked uploads for Nextcloud", false);
        PreferenceCategory s3 = category(s, "S3");
        item(s3, "s3_chunk_size", "Upload chunk size", null);

        wire(s);
        refresh();
    }

    private void wire(PreferenceScreen s) {
        SharedPreferences prefs = getPreferenceManager().getSharedPreferences();

        Preference diagnostics = s.findPreference("cloud_diagnostics");
        if (diagnostics != null) {
            diagnostics.setOnPreferenceClickListener(p -> {
                startActivity(new Intent(requireContext(), CloudDiagnosticsActivity.class));
                return true;
            });
        }

        bindBoolean(s, prefs, "parallel_cloud_transfers", false);
        bindBoolean(s, prefs, "multithreaded_downloads", false);
        bindBoolean(s, prefs, "nextcloud_force_chunked_uploads", false);

        bindChooser(s, "multithreaded_downloads_chunk_count", "Maximum connections per download",
                "multithreaded_downloads_chunk_count", CONNECTIONS, 4);
        bindChooser(s, "dropbox_chunk_size", "Upload chunk size", "dropbox_chunk_size",
                filter(25, Integer.MAX_VALUE), 25);
        bindChooser(s, "onedrive_chunk_size", "Upload chunk size", "onedrive_chunk_size",
                filter(5, 60), 5);
        bindChooser(s, "nextcloud_chunk_size", "Upload chunk size", "nextcloud_chunk_size",
                filter(100, Integer.MAX_VALUE), 100);
        bindChooser(s, "s3_chunk_size", "Upload chunk size", "s3_chunk_size",
                filter(2, Integer.MAX_VALUE), 5);
    }

    private int[] filter(int min, int max) {
        int count = 0;
        for (int value : CHUNK_CHOICES) if (value >= min && value <= max) count++;
        int[] result = new int[count];
        int i = 0;
        for (int value : CHUNK_CHOICES) {
            if (value >= min && value <= max) result[i++] = value;
        }
        return result;
    }

    private void bindBoolean(PreferenceScreen s, SharedPreferences prefs, String key, boolean fallback) {
        Preference p = s.findPreference(key);
        if (p == null) return;
        if (p instanceof MSwitchPreference) {
            ((MSwitchPreference) p).setChecked(prefs.getBoolean(key, fallback));
        }
        p.setOnPreferenceChangeListener((preference, value) -> {
            prefs.edit().putBoolean(key, (Boolean) value).apply();
            refresh();
            return true;
        });
    }

    private void bindChooser(PreferenceScreen s, String key, String title, String prefKey,
                             int[] values, int fallback) {
        Preference p = s.findPreference(key);
        if (p == null) return;
        p.setOnPreferenceClickListener(preference -> {
            SharedPreferences prefs = getPreferenceManager().getSharedPreferences();
            int current = prefs.getInt(prefKey, fallback);
            int selected = 0;
            for (int i = 0; i < values.length; i++) {
                if (values[i] == current) {
                    selected = i;
                    break;
                }
            }
            String[] labels = new String[values.length];
            for (int i = 0; i < values.length; i++) {
                labels[i] = prefKey.equals("multithreaded_downloads_chunk_count")
                        ? String.valueOf(values[i]) : values[i] + " MB";
            }
            new AlertDialog.Builder(requireContext())
                    .setTitle(title)
                    .setSingleChoiceItems(labels, selected, (dialog, which) -> {
                        prefs.edit().putInt(prefKey, values[which]).apply();
                        dialog.dismiss();
                        refresh();
                    })
                    .setNegativeButton("Cancel", null)
                    .show();
            return true;
        });
    }

    private void refresh() {
        SharedPreferences prefs = getPreferenceManager().getSharedPreferences();
        summary("multithreaded_downloads_chunk_count",
                String.valueOf(prefs.getInt("multithreaded_downloads_chunk_count", 4)));
        summary("dropbox_chunk_size", prefs.getInt("dropbox_chunk_size", 25) + " MB");
        summary("onedrive_chunk_size", prefs.getInt("onedrive_chunk_size", 5) + " MB");
        summary("nextcloud_chunk_size", prefs.getInt("nextcloud_chunk_size", 100) + " MB");
        summary("s3_chunk_size", prefs.getInt("s3_chunk_size", 5) + " MB");

        Preference category = findPreference("multithreaded_downloads_category");
        if (category != null) {
            category.setVisible(prefs.getBoolean("allow_multithreaded_downloads", false));
        }

        Preference p = findPreference("multithreaded_downloads");
        if (p instanceof MSwitchPreference) {
            ((MSwitchPreference) p).setChecked(prefs.getBoolean("multithreaded_downloads", false));
        }
    }

    private void summary(String key, String value) {
        Preference p = findPreference(key);
        if (p != null) p.setSummary(value);
    }

    @Override
    public void onResume() {
        super.onResume();
        refresh();
    }
}
