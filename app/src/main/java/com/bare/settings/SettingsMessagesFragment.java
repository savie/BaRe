package com.bare.settings;

import android.content.SharedPreferences;

import androidx.appcompat.app.AlertDialog;
import androidx.preference.Preference;
import androidx.preference.PreferenceScreen;

public final class SettingsMessagesFragment extends SettingsDetailBaseFragment {
    private static final int[] LIMITS={-1,1,5,10,20,50,100};

    @Override protected void build(PreferenceScreen s) {
        item(s,"max_sms_backups",getString(R.string.settings_max_backups),null);
        Preference p=item(s,"messages_encryption_on",getString(R.string.encrypt_backups),getString(R.string.backups_encrypted_aegis)); disabled(p);
        p=item(s,"compression_level_msgs",getString(R.string.compression_level),null); hidden(p);
        MSwitchPreference m=new MSwitchPreference(requireContext());
        m.setKey("messages_backup_mms"); m.setTitle(R.string.backup_mms); m.setSummary(R.string.include_mms_in_message_backups); m.setChecked(true); s.addPreference(m);
        wire(s);
    }

    private void wire(PreferenceScreen s) {
        Preference max=s.findPreference("max_sms_backups");
        if(max!=null) max.setOnPreferenceClickListener(p->{ chooseLimit(max); return true; });
        Preference m=s.findPreference("messages_backup_mms");
        if(m!=null) m.setOnPreferenceChangeListener((p,v)->{
            getPreferenceManager().getSharedPreferences().edit().putBoolean("messages_backup_mms",(Boolean)v).apply(); return true;
        });
        refresh();
    }

    private void chooseLimit(Preference p) {
        SharedPreferences sp=getPreferenceManager().getSharedPreferences();
        int current=sp.getInt("max_sms_backups",-1), selected=0;
        for(int i=0;i<LIMITS.length;i++) if(LIMITS[i]==current) selected=i;
        String[] labels={getString(R.string.no_limit),"1","5","10","20","50","100"};
        new AlertDialog.Builder(requireContext())
                .setTitle(R.string.settings_max_backups)
                .setSingleChoiceItems(labels,selected,(d,which)->{
                    sp.edit().putInt("max_sms_backups",LIMITS[which]).apply();
                    d.dismiss(); refresh();
                }).setNegativeButton(R.string.cancel,null).show();
    }

    private void refresh() {
        Preference p=findPreference("max_sms_backups");
        if(p!=null) {
            int n=getPreferenceManager().getSharedPreferences().getInt("max_sms_backups",-1);
            p.setSummary(n>0?String.valueOf(n):getString(R.string.no_limit));
        }
        Preference m=findPreference("messages_backup_mms");
        if(m instanceof MSwitchPreference)
            ((MSwitchPreference)m).setChecked(getPreferenceManager().getSharedPreferences().getBoolean("messages_backup_mms",true));
    }
}
