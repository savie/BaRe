package com.bare.settings;

import android.content.Intent;
import android.content.SharedPreferences;

import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceScreen;

import com.bare.blacklist.BlacklistActivity;
import com.bare.appconfigs.list.ConfigListActivity;

public final class SettingsAppsFragment extends SettingsDetailBaseFragment {
    private static final String PREFS = "swift_backup_settings";

    @Override protected void build(PreferenceScreen s) {
        PreferenceCategory general=category(s,"General");
        toggle(general,"show_system_apps","Show system apps",null,false);
        item(general,"swipe_actions","Swipe actions",null);
        item(general,"manage_labels","Manage app labels","Manage labels for apps");
        item(general,"configs","Custom configurations","Custom application configurations");
        item(general,"blacklist_apps","Blacklist","Apps excluded from backup/restore");

        PreferenceCategory multi=category(s,"Multiple backups");
        item(multi,"multiple_backups_strategy","Multiple backups strategy",null);

        PreferenceCategory enc=category(s,"Encryption and compression");
        Preference p=item(enc,"apps_encryption_on","Encrypt app data","Backups encrypted with Aegis by default");
        disabled(p);
        item(enc,"compression_level_app_data","Compression level",null);

        PreferenceCategory data=category(s,"App data");
        item(data,"restore_runtime_permissions","Restore runtime permissions",null);
        item(data,"restore_special_permissions","Restore special data","Special permissions");
        toggle(data,"restore_ssaids","Restore app SSAIDs","Restores app SSAIDs",false);
        item(data,"app_backup_limits","App backup limits",null);
        toggle(data,"backup_app_cache","Backup cache","Back up application cache",false);
        toggle(data,"in_place_apk_downgrades","In-place APK downgrades","Allow APK downgrades in place",false);

        wire(s);
    }

    private void wire(PreferenceScreen s) {
        SharedPreferences prefs=getPreferenceManager().getSharedPreferences();
        Preference show=s.findPreference("show_system_apps");
        if(show!=null) {
            show.setOnPreferenceChangeListener((p,v)->{ prefs.edit().putBoolean("show_system_apps",(Boolean)v).apply(); return true; });
        }
        Preference swipe=s.findPreference("swipe_actions");
        if(swipe!=null) swipe.setOnPreferenceClickListener(p->{ startActivity(new Intent(requireContext(), AppSwipeActionsActivity.class)); return true; });
        Preference configs=s.findPreference("configs");
        if(configs!=null) configs.setOnPreferenceClickListener(p->{ startActivity(new Intent(requireContext(), ConfigListActivity.class)); return true; });
        Preference blacklist=s.findPreference("blacklist_apps");
        if(blacklist!=null) blacklist.setOnPreferenceClickListener(p->{ startActivity(new Intent(requireContext(), BlacklistActivity.class)); return true; });
        Preference special=s.findPreference("restore_special_permissions");
        if(special!=null) special.setOnPreferenceClickListener(p->{ startActivity(new Intent(requireContext(), RestoreSpecialDataDetailsActivity.class)); return true; });
        Preference ssaids=s.findPreference("restore_ssaids");
        if(ssaids!=null) {
            ssaids.setOnPreferenceChangeListener((p,v)->{ prefs.edit().putBoolean("restore_ssaids",(Boolean)v).apply(); return true; });
        }
        Preference cache=s.findPreference("backup_app_cache");
        if(cache!=null) cache.setOnPreferenceChangeListener((p,v)->{ prefs.edit().putBoolean("backup_app_cache",(Boolean)v).apply(); return true; });
        Preference downgrade=s.findPreference("in_place_apk_downgrades");
        if(downgrade!=null) downgrade.setOnPreferenceChangeListener((p,v)->{ prefs.edit().putBoolean("in_place_apk_downgrades",(Boolean)v).apply(); return true; });
    }

    @Override public void onResume() {
        super.onResume();
        SharedPreferences prefs=getPreferenceManager().getSharedPreferences();
        Preference p=findPreference("show_system_apps");
        if(p instanceof MSwitchPreference) ((MSwitchPreference)p).setChecked(prefs.getBoolean("show_system_apps",false));
        p=findPreference("restore_ssaids");
        if(p instanceof MSwitchPreference) ((MSwitchPreference)p).setChecked(prefs.getBoolean("restore_ssaids",false));
        p=findPreference("backup_app_cache");
        if(p instanceof MSwitchPreference) ((MSwitchPreference)p).setChecked(prefs.getBoolean("backup_app_cache",false));
        p=findPreference("in_place_apk_downgrades");
        if(p instanceof MSwitchPreference) ((MSwitchPreference)p).setChecked(prefs.getBoolean("in_place_apk_downgrades",false));
    }
}
