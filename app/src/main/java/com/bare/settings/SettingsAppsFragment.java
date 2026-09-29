package com.bare.settings;

import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceScreen;

public final class SettingsAppsFragment extends SettingsDetailBaseFragment {
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
    }
}
