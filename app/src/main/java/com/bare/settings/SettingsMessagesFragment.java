package com.bare.settings;

import androidx.preference.Preference;
import androidx.preference.PreferenceScreen;

public final class SettingsMessagesFragment extends SettingsDetailBaseFragment {
    @Override protected void build(PreferenceScreen s) {
        item(s,"max_sms_backups","Maximum number of backups to keep",null);
        Preference p=item(s,"messages_encryption_on","Encrypt backups","Backups encrypted with Aegis by default"); disabled(p);
        p=item(s,"compression_level_msgs","Compression level",null); hidden(p);
        toggleRoot(s,"messages_backup_mms","Backup MMS","Include MMS in message backups",true);
    }
    private void toggleRoot(PreferenceScreen s,String k,String t,String sum,boolean d){
        MSwitchPreference p=new MSwitchPreference(requireContext()); p.setKey(k);p.setTitle(t);p.setSummary(sum);p.setChecked(d);s.addPreference(p);
    }
}
