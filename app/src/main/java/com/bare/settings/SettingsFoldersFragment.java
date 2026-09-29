package com.bare.settings;

import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceScreen;

public final class SettingsFoldersFragment extends SettingsDetailBaseFragment {
    @Override protected void build(PreferenceScreen s) {
        PreferenceCategory enc=category(s,"Encryption and compression");
        Preference p=item(enc,"folders_encryption_on","Encrypt backups","Backups encrypted with Aegis by default"); disabled(p);
        item(enc,"compression_level_folders","Compression level",null);
    }
}
