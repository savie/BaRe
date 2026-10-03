package com.bare.settings;

import android.content.SharedPreferences;

import androidx.appcompat.app.AlertDialog;
import androidx.preference.Preference;
import androidx.preference.PreferenceScreen;

public final class SettingsCallsFragment extends SettingsDetailBaseFragment {
    private static final int[] LIMITS={-1,1,5,10,20,50,100};

    @Override protected void build(PreferenceScreen s) {
        item(s,"max_call_backups",getString(R.string.settings_max_backups),null);
        Preference p=item(s,"calls_encryption_on",getString(R.string.encrypt_backups),getString(R.string.backups_encrypted_aegis)); disabled(p);
        p=item(s,"compression_level_calls",getString(R.string.compression_level),null); hidden(p);
        Preference max=s.findPreference("max_call_backups");
        if(max!=null) max.setOnPreferenceClickListener(pref->{chooseLimit(pref);return true;});
        refresh();
    }

    private void chooseLimit(Preference p) {
        SharedPreferences sp=getPreferenceManager().getSharedPreferences();
        int current=sp.getInt("max_call_backups",-1), selected=0;
        for(int i=0;i<LIMITS.length;i++) if(LIMITS[i]==current) selected=i;
        String[] labels={getString(R.string.no_limit),"1","5","10","20","50","100"};
        new AlertDialog.Builder(requireContext())
                .setTitle(R.string.settings_max_backups)
                .setSingleChoiceItems(labels,selected,(d,which)->{
                    sp.edit().putInt("max_call_backups",LIMITS[which]).apply();
                    d.dismiss(); refresh();
                }).setNegativeButton(R.string.cancel,null).show();
    }

    private void refresh() {
        Preference p=findPreference("max_call_backups");
        if(p!=null) {
            int n=getPreferenceManager().getSharedPreferences().getInt("max_call_backups",-1);
            p.setSummary(n>0?String.valueOf(n):getString(R.string.no_limit));
        }
    }
}
