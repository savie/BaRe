package org.swiftapps.swiftbackup.settings;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.widget.CompoundButton;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.cz4;
import defpackage.dj;
import defpackage.fl1;
import defpackage.gv7;
import defpackage.ha7;
import defpackage.hs4;
import defpackage.ix0;
import defpackage.mp6;
import defpackage.nc8;
import defpackage.pe4;
import defpackage.qo0;
import defpackage.sa1;
import defpackage.sz8;
import defpackage.um6;
import defpackage.wm6;
import defpackage.xm6;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;
import org.swiftapps.swiftbackup.settings.RestoreSpecialDataDetailsActivity;
import org.swiftapps.swiftbackup.views.PreCachingLinearLayoutManager;
import org.swiftapps.swiftbackup.views.SwiftBackupMaterialSwitch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class RestoreSpecialDataDetailsActivity extends sa1 {
    public static final /* synthetic */ int R = 0;
    public final gv7 P = new gv7(new hs4(this, 9));
    public ConfigSettings Q;

    @Override // defpackage.il0
    /* JADX INFO: renamed from: F */
    public final qo0 V() {
        return null;
    }

    public final xm6 U() {
        return (xm6) this.P.getValue();
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.k28, androidx.fragment.app.u, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onCreate(Bundle bundle) {
        ConfigSettings configSettings;
        boolean z;
        boolean restoreSpecialPermissions;
        super.onCreate(bundle);
        setContentView(U().a);
        setSupportActionBar((Toolbar) ((ix0) U().b.c).c);
        nc8 supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.Z(true);
            supportActionBar.a0();
            supportActionBar.b0(false);
        }
        if (bundle == null || (configSettings = (ConfigSettings) bundle.getParcelable("extra_config_settings")) == null) {
            Intent intent = getIntent();
            configSettings = (ConfigSettings) (intent != null ? intent.getParcelableExtra("extra_config_settings") : null);
        }
        this.Q = configSettings;
        sz8.b(U().e, 7);
        RecyclerView recyclerView = U().d;
        recyclerView.setLayoutManager(new PreCachingLinearLayoutManager(this));
        String string = getString(R.string.restore_special_data_notification_settings_title);
        string.getClass();
        String string2 = getString(R.string.restore_special_data_notification_settings_summary);
        string2.getClass();
        um6 um6Var = new um6(R.drawable.ic_settings_notifications_filled, string, string2);
        String string3 = getString(R.string.restore_special_data_notification_access_title);
        string3.getClass();
        String string4 = getString(R.string.restore_special_data_notification_access_summary);
        string4.getClass();
        um6 um6Var2 = new um6(R.drawable.ic_settings_security_filled, string3, string4);
        String string5 = getString(R.string.restore_special_data_accessibility_service_title);
        string5.getClass();
        String string6 = getString(R.string.restore_special_data_accessibility_service_summary);
        string6.getClass();
        um6 um6Var3 = new um6(R.drawable.ic_settings_admin_panel_settings_filled, string5, string6);
        String string7 = getString(R.string.restore_special_data_usage_access_title);
        string7.getClass();
        String string8 = getString(R.string.restore_special_data_usage_access_summary);
        string8.getClass();
        um6 um6Var4 = new um6(R.drawable.ic_settings_history_filled, string7, string8);
        String string9 = getString(R.string.restore_special_data_install_unknown_apps_title);
        string9.getClass();
        String string10 = getString(R.string.restore_special_data_install_unknown_apps_summary);
        string10.getClass();
        um6 um6Var5 = new um6(R.drawable.ic_settings_install_mobile_filled, string9, string10);
        String string11 = getString(R.string.restore_special_data_display_over_apps_title);
        string11.getClass();
        String string12 = getString(R.string.restore_special_data_display_over_apps_summary);
        string12.getClass();
        um6 um6Var6 = new um6(R.drawable.ic_settings_picture_in_picture_alt_filled, string11, string12);
        String string13 = getString(R.string.restore_special_data_modify_system_settings_title);
        string13.getClass();
        String string14 = getString(R.string.restore_special_data_modify_system_settings_summary);
        string14.getClass();
        um6 um6Var7 = new um6(R.drawable.ic_settings_settings_filled, string13, string14);
        String string15 = getString(R.string.restore_special_data_battery_optimization_title);
        string15.getClass();
        String string16 = getString(R.string.restore_special_data_battery_optimization_summary);
        string16.getClass();
        um6 um6Var8 = new um6(R.drawable.ic_settings_battery_full_filled, string15, string16);
        String string17 = getString(R.string.restore_special_data_network_modes_title);
        string17.getClass();
        String string18 = getString(R.string.restore_special_data_network_modes_summary);
        string18.getClass();
        um6 um6Var9 = new um6(R.drawable.ic_any_network_filled, string17, string18);
        String string19 = getString(R.string.restore_special_data_all_files_access_title);
        string19.getClass();
        String string20 = getString(R.string.restore_special_data_all_files_access_summary);
        string20.getClass();
        um6 um6Var10 = new um6(R.drawable.ic_folder_full, string19, string20);
        String string21 = getString(R.string.restore_special_data_alarms_reminders_title);
        string21.getClass();
        String string22 = getString(R.string.restore_special_data_alarms_reminders_summary);
        string22.getClass();
        um6 um6Var11 = new um6(R.drawable.ic_settings_alarm_filled, string21, string22);
        String string23 = getString(R.string.restore_special_data_system_modes_title);
        string23.getClass();
        String string24 = getString(R.string.restore_special_data_system_modes_summary);
        string24.getClass();
        um6 um6Var12 = new um6(R.drawable.ic_settings_smartphone_filled, string23, string24);
        String string25 = getString(R.string.restore_special_data_magisk_title);
        string25.getClass();
        String string26 = getString(R.string.restore_special_data_magisk_summary);
        string26.getClass();
        recyclerView.setAdapter(new wm6(fl1.A0(um6Var, um6Var2, um6Var3, um6Var4, um6Var5, um6Var6, um6Var7, um6Var8, um6Var9, um6Var10, um6Var11, um6Var12, new um6(R.drawable.ic_settings_bolt_filled, string25, string26))));
        U().c.setOnClickListener(new dj(this, 11));
        SwiftBackupMaterialSwitch swiftBackupMaterialSwitch = U().f;
        ConfigSettings configSettings2 = this.Q;
        if (configSettings2 != null) {
            restoreSpecialPermissions = configSettings2.getRestoreSpecialPermissions();
        } else {
            try {
                SharedPreferences sharedPreferences = cz4.f;
                z = true;
                try {
                    if (sharedPreferences == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    z = sharedPreferences.getBoolean("restore_special_permissions", true);
                    restoreSpecialPermissions = z;
                } catch (ClassCastException unused) {
                }
            } catch (ClassCastException unused2) {
                z = true;
            }
        }
        swiftBackupMaterialSwitch.setChecked(restoreSpecialPermissions);
        if (this.Q == null) {
            mp6 mp6Var = mp6.a;
            if (!mp6.f()) {
                swiftBackupMaterialSwitch.setEnabled(false);
                U().k.setText(R.string.root_access_needed);
            }
        }
        swiftBackupMaterialSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: sm6
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                int i = RestoreSpecialDataDetailsActivity.R;
                compoundButton.getClass();
                RestoreSpecialDataDetailsActivity restoreSpecialDataDetailsActivity = this.a;
                ConfigSettings configSettings3 = restoreSpecialDataDetailsActivity.Q;
                if (configSettings3 == null) {
                    SharedPreferences.Editor editor = cz4.k;
                    if (editor != null) {
                        editor.putBoolean("restore_special_permissions", z2).apply();
                        return;
                    } else {
                        pe4.F("editor");
                        throw null;
                    }
                }
                ConfigSettings.Companion.getClass();
                Boolean boolValueOf = Boolean.valueOf(z2);
                if (z2) {
                    boolValueOf = null;
                }
                ConfigSettings configSettingsCopy$default = ConfigSettings.copy$default(configSettings3, 0, null, null, null, null, null, null, null, null, null, boolValueOf != null ? Integer.valueOf(boolValueOf.booleanValue() ? 1 : 0) : null, null, null, null, null, null, 64511, null);
                restoreSpecialDataDetailsActivity.Q = configSettingsCopy$default;
                restoreSpecialDataDetailsActivity.setResult(-1, new Intent().putExtra("extra_config_settings", configSettingsCopy$default));
            }
        });
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.zm, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        if (this.Q == null) {
            ha7.a.c(AppSettings.Companion.withSavedSettings());
        }
        super.onDestroy();
    }

    @Override // defpackage.sa1, defpackage.il0, defpackage.io1, defpackage.ho1, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        bundle.putParcelable("extra_config_settings", this.Q);
        super.onSaveInstanceState(bundle);
    }
}
