package com.bare.settings;

import androidx.preference.PreferenceScreen;

public final class SettingsContactFragment extends SettingsDetailBaseFragment {
    @Override protected void build(PreferenceScreen s) {
        item(s,"email","Email","Contact Swift Backup by email");
        item(s,"telegram_group","Telegram group",null);
    }
}
