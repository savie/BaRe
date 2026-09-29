package com.bare.settings;

import androidx.preference.Preference;
import androidx.preference.PreferenceScreen;

public final class SettingsCallsFragment extends SettingsDetailBaseFragment {
    @Override protected void build(PreferenceScreen s) {
        item(s,"max_call_backups","Maximum number of backups to keep",null);
        Preference p=item(s,"calls_encryption_on","Encrypt backups","Backups encrypted with Aegis by default"); disabled(p);
        p=item(s,"compression_level_calls","Compression level",null); hidden(p);
    }
}
