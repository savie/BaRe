package com.bare.settings;

import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceScreen;

public final class SettingsAboutFragment extends SettingsDetailBaseFragment {
    @Override protected void build(PreferenceScreen s) {
        item(s,"version","Version","v5.1.0 (620)");
        item(s,"changelog","Changelog",null);
        item(s,"notes_from_developer","Announcements from developer",null);
        PreferenceCategory legal=category(s,"Privacy & legal");
        item(legal,"privacy_policy","Privacy policy",null);
        item(legal,"tos","Terms of service",null);
        item(legal,"notices","Notices",null);
    }
}
