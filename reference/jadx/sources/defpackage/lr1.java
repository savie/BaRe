package defpackage;

import android.os.Bundle;
import android.view.View;
import androidx.preference.Preference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.data.ConfigSettings;
import org.swiftapps.swiftbackup.appconfigs.settings.ConfigSettingsActivity;
import org.swiftapps.swiftbackup.settings.MSwitchPreference;
import org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitItem;
import org.swiftapps.swiftbackup.settings.f;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class lr1 extends fm0 implements t36 {
    public final gv7 G;
    public final gv7 H;
    public final gv7 J;
    public final gv7 K;
    public final cr3 L;
    public final cr3 M;
    public final l90 p;
    public final gv7 q;
    public final gv7 r;
    public final gv7 t;
    public final gv7 y;
    public final gv7 x = new gv7(new bk(this, 14));
    public final gv7 I = new gv7(new ah(this, 19));
    public final cr3 N = (cr3) registerForActivityResult(new cb(this), new tm6());

    public lr1() {
        final int i = 1;
        this.p = new l90(ph6.a(mr1.class), new jr1(this), new t30(this, i), new kr1(this));
        this.q = new gv7(new bt3(this) { // from class: gr1
            public final /* synthetic */ lr1 b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i2 = i;
                lr1 lr1Var = this.b;
                switch (i2) {
                    case 0:
                        Preference preferenceJ = lr1Var.j("config_compression_level");
                        preferenceJ.getClass();
                        return preferenceJ;
                    default:
                        Preference preferenceJ2 = lr1Var.j("config_app_parts");
                        preferenceJ2.getClass();
                        return preferenceJ2;
                }
            }
        });
        this.r = new gv7(new bt3(this) { // from class: hr1
            public final /* synthetic */ lr1 b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i2 = i;
                lr1 lr1Var = this.b;
                switch (i2) {
                    case 0:
                        Preference preferenceJ = lr1Var.j("config_restore_special_permissions");
                        preferenceJ.getClass();
                        return preferenceJ;
                    default:
                        Preference preferenceJ2 = lr1Var.j("config_backup_locations");
                        preferenceJ2.getClass();
                        return preferenceJ2;
                }
            }
        });
        this.t = new gv7(new bt3(this) { // from class: ir1
            public final /* synthetic */ lr1 b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i2 = i;
                lr1 lr1Var = this.b;
                switch (i2) {
                    case 0:
                        Preference preferenceJ = lr1Var.j("config_restore_ssaids");
                        preferenceJ.getClass();
                        return (MSwitchPreference) preferenceJ;
                    default:
                        Preference preferenceJ2 = lr1Var.j("config_sync_options");
                        preferenceJ2.getClass();
                        return preferenceJ2;
                }
            }
        });
        final int i2 = 0;
        this.y = new gv7(new bt3(this) { // from class: gr1
            public final /* synthetic */ lr1 b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i2;
                lr1 lr1Var = this.b;
                switch (i3) {
                    case 0:
                        Preference preferenceJ = lr1Var.j("config_compression_level");
                        preferenceJ.getClass();
                        return preferenceJ;
                    default:
                        Preference preferenceJ2 = lr1Var.j("config_app_parts");
                        preferenceJ2.getClass();
                        return preferenceJ2;
                }
            }
        });
        int i3 = 20;
        this.G = new gv7(new dk(this, i3));
        this.H = new gv7(new ek(this, i3));
        this.J = new gv7(new bt3(this) { // from class: hr1
            public final /* synthetic */ lr1 b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i4 = i2;
                lr1 lr1Var = this.b;
                switch (i4) {
                    case 0:
                        Preference preferenceJ = lr1Var.j("config_restore_special_permissions");
                        preferenceJ.getClass();
                        return preferenceJ;
                    default:
                        Preference preferenceJ2 = lr1Var.j("config_backup_locations");
                        preferenceJ2.getClass();
                        return preferenceJ2;
                }
            }
        });
        this.K = new gv7(new bt3(this) { // from class: ir1
            public final /* synthetic */ lr1 b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i4 = i2;
                lr1 lr1Var = this.b;
                switch (i4) {
                    case 0:
                        Preference preferenceJ = lr1Var.j("config_restore_ssaids");
                        preferenceJ.getClass();
                        return (MSwitchPreference) preferenceJ;
                    default:
                        Preference preferenceJ2 = lr1Var.j("config_sync_options");
                        preferenceJ2.getClass();
                        return preferenceJ2;
                }
            }
        });
        int i4 = 2;
        this.L = (cr3) registerForActivityResult(new pf(this, i4), new m9(i));
        this.M = (cr3) registerForActivityResult(new bb(this, i4), new k9(i));
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0026  */
    /* JADX WARN: Code duplicated, block: B:24:0x0057  */
    /* JADX WARN: Code duplicated, block: B:35:0x0088  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b8  */
    public static List q(ConfigSettings configSettings) {
        AppBackupLimitItem appBackupLimitItem;
        AppBackupLimitItem appBackupLimitItem2;
        AppBackupLimitItem appBackupLimitItem3;
        AppBackupLimitItem appBackupLimitItem4;
        Object next;
        Object next2;
        Object next3;
        List<AppBackupLimitItem> backupLimits = configSettings.getBackupLimits();
        Object obj = null;
        if (backupLimits != null) {
            Iterator<T> it = backupLimits.iterator();
            do {
                if (!it.hasNext()) {
                    next3 = null;
                    break;
                }
                next3 = it.next();
            } while (((AppBackupLimitItem) next3).getAppPart() != iu.DATA);
            appBackupLimitItem = (AppBackupLimitItem) next3;
            if (appBackupLimitItem == null) {
                appBackupLimitItem = new AppBackupLimitItem(iu.DATA.toString(), null, null, 6, null);
            }
        } else {
            appBackupLimitItem = new AppBackupLimitItem(iu.DATA.toString(), null, null, 6, null);
        }
        if (backupLimits != null) {
            Iterator<T> it2 = backupLimits.iterator();
            do {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it2.next();
            } while (((AppBackupLimitItem) next2).getAppPart() != iu.EXTDATA);
            appBackupLimitItem2 = (AppBackupLimitItem) next2;
            if (appBackupLimitItem2 == null) {
                appBackupLimitItem2 = new AppBackupLimitItem(iu.EXTDATA.toString(), null, null, 6, null);
            }
        } else {
            appBackupLimitItem2 = new AppBackupLimitItem(iu.EXTDATA.toString(), null, null, 6, null);
        }
        if (backupLimits != null) {
            Iterator<T> it3 = backupLimits.iterator();
            do {
                if (!it3.hasNext()) {
                    next = null;
                    break;
                }
                next = it3.next();
            } while (((AppBackupLimitItem) next).getAppPart() != iu.EXPANSION);
            appBackupLimitItem3 = (AppBackupLimitItem) next;
            if (appBackupLimitItem3 == null) {
                appBackupLimitItem3 = new AppBackupLimitItem(iu.EXPANSION.toString(), null, null, 6, null);
            }
        } else {
            appBackupLimitItem3 = new AppBackupLimitItem(iu.EXPANSION.toString(), null, null, 6, null);
        }
        if (backupLimits != null) {
            for (Object obj2 : backupLimits) {
                if (((AppBackupLimitItem) obj2).getAppPart() == iu.MEDIA) {
                    obj = obj2;
                    break;
                }
            }
            appBackupLimitItem4 = (AppBackupLimitItem) obj;
            if (appBackupLimitItem4 == null) {
                appBackupLimitItem4 = new AppBackupLimitItem(iu.MEDIA.toString(), null, null, 6, null);
            }
        } else {
            appBackupLimitItem4 = new AppBackupLimitItem(iu.MEDIA.toString(), null, null, 6, null);
        }
        return fl1.A0(appBackupLimitItem, appBackupLimitItem2, appBackupLimitItem3, appBackupLimitItem4);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // defpackage.t36
    public final boolean d(Preference preference) {
        String str = preference.t;
        if (str != null) {
            int i = 9;
            int i2 = 8;
            switch (str.hashCode()) {
                case -1851553666:
                    if (str.equals("config_backup_locations")) {
                        ConfigSettingsActivity configSettingsActivity = (ConfigSettingsActivity) requireActivity();
                        List<q05> locations = r().j().getLocations();
                        ArrayList arrayList = new ArrayList(hl1.G0(locations, 10));
                        Iterator<T> it = locations.iterator();
                        while (it.hasNext()) {
                            arrayList.add(((q05) it.next()).toString());
                        }
                        t05.a(configSettingsActivity, el1.z1(arrayList), new c7(this, 13));
                        return true;
                    }
                    break;
                case -1362340881:
                    if (str.equals("config_restore_runtime_permissions")) {
                        wu wuVar = yu.Companion;
                        ConfigSettingsActivity configSettingsActivity2 = (ConfigSettingsActivity) requireActivity();
                        yu restorePermissionsMode = r().j().getRestorePermissionsMode();
                        w20 w20Var = new w20(this, i);
                        wuVar.getClass();
                        wu.c(configSettingsActivity2, restorePermissionsMode, w20Var);
                        return true;
                    }
                    break;
                case -1105077101:
                    if (str.equals("config_multiple_backups_strategy")) {
                        this.M.a(r().j().getMultipleBackupStrategy());
                        return true;
                    }
                    break;
                case -1004242096:
                    if (str.equals("config_restore_special_permissions")) {
                        this.N.a(r().j());
                        return true;
                    }
                    break;
                case -266584361:
                    if (str.equals("config_sync_options")) {
                        lg7.F((ConfigSettingsActivity) requireActivity(), r().j().getSyncOption(), new hj(this, i2));
                        return true;
                    }
                    break;
                case 69956570:
                    if (str.equals("config_app_backup_limits")) {
                        this.L.a(q(r().j()));
                        return true;
                    }
                    break;
                case 1442976686:
                    if (str.equals("config_compression_level")) {
                        vp1.a((ConfigSettingsActivity) requireActivity(), r().j().getCompressionLevel(), new d7(this, i));
                        return true;
                    }
                    break;
                case 1808723589:
                    if (str.equals("config_app_parts")) {
                        ConfigSettingsActivity configSettingsActivity3 = (ConfigSettingsActivity) requireActivity();
                        String string = getString(R.string.app_parts);
                        string.getClass();
                        List<iu> appParts = r().j().getAppParts();
                        ArrayList arrayList2 = new ArrayList(hl1.G0(appParts, 10));
                        Iterator<T> it2 = appParts.iterator();
                        while (it2.hasNext()) {
                            arrayList2.add(((iu) it2.next()).toString());
                        }
                        xx3.z(configSettingsActivity3, string, el1.z1(arrayList2), false, new k3(this, i2));
                        return true;
                    }
                    break;
            }
        }
        return false;
    }

    @Override // defpackage.c46
    public final void l() {
        i(R.xml.settings_config);
        for (Preference preference : n()) {
            preference.J = false;
            if (preference instanceof MSwitchPreference) {
                ((MSwitchPreference) preference).e = this;
            } else {
                preference.f = this;
            }
        }
        s();
    }

    @Override // defpackage.fm0, defpackage.c46, androidx.fragment.app.o
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        r().f.e(getViewLifecycleOwner(), new js(4, new e7(this, 10)));
    }

    public final mr1 r() {
        return (mr1) this.p.getValue();
    }

    public final void s() {
        int i;
        ConfigSettings configSettings = (ConfigSettings) r().f.d();
        if (configSettings == null) {
            return;
        }
        ((Preference) this.q.getValue()).B(el1.Y0(configSettings.getAppParts(), null, null, null, new rx(2), 31));
        ((Preference) this.r.getValue()).B(el1.Y0(configSettings.getLocations(), null, null, null, new sh(3), 31));
        Preference preference = (Preference) this.t.getValue();
        preference.C(ji8.r(configSettings.getLocations()));
        preference.B(configSettings.getSyncOption().toDisplayString());
        ((Preference) this.x.getValue()).B(f.a(configSettings.getMultipleBackupStrategy()).preferenceSummary());
        Preference preference2 = (Preference) this.y.getValue();
        xp1 compressionLevel = configSettings.getCompressionLevel();
        compressionLevel.getClass();
        switch (up1.a[compressionLevel.ordinal()]) {
            case 1:
                i = R.string.compression_level_type_store;
                break;
            case 2:
                i = R.string.compression_level_type_fastest;
                break;
            case 3:
                i = R.string.compression_level_type_fast;
                break;
            case 4:
                i = R.string.compression_level_type_normal;
                break;
            case 5:
                i = R.string.compression_level_type_maximum;
                break;
            case 6:
                i = R.string.compression_level_type_ultra;
                break;
            default:
                q.j();
                return;
        }
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(i);
        string.getClass();
        preference2.B(string);
        Preference preference3 = (Preference) this.G.getValue();
        List listQ = q(configSettings);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listQ) {
            if (((AppBackupLimitItem) obj).hasLimits()) {
                arrayList.add(obj);
            }
        }
        String strY0 = !arrayList.isEmpty() ? el1.Y0(arrayList, "\n", null, null, new nk(0), 30) : null;
        if (strY0 == null) {
            strY0 = getString(R.string.no_limit);
            strY0.getClass();
        }
        preference3.B(strY0);
        ((MSwitchPreference) this.H.getValue()).G(configSettings.getCacheBackup());
        ((Preference) this.I.getValue()).B(configSettings.getRestorePermissionsMode().asDisplayString());
        ((Preference) this.J.getValue()).B(getString(configSettings.getRestoreSpecialPermissions() ? R.string.enabled : R.string.disabled));
        ((MSwitchPreference) this.K.getValue()).G(configSettings.getRestoreSsaid());
    }
}
