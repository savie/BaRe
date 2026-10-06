package org.swiftapps.swiftbackup.settings;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import androidx.fragment.app.u;
import androidx.preference.Preference;
import defpackage.ai8;
import defpackage.ak;
import defpackage.bb;
import defpackage.bh;
import defpackage.ck;
import defpackage.cr3;
import defpackage.cz4;
import defpackage.dk;
import defpackage.dv;
import defpackage.ej;
import defpackage.el1;
import defpackage.fj;
import defpackage.fl1;
import defpackage.fm0;
import defpackage.fs;
import defpackage.g67;
import defpackage.gj;
import defpackage.gv7;
import defpackage.ho6;
import defpackage.hv1;
import defpackage.jb9;
import defpackage.k9;
import defpackage.kf;
import defpackage.kz4;
import defpackage.lf;
import defpackage.m9;
import defpackage.mp6;
import defpackage.nc8;
import defpackage.nk;
import defpackage.ok;
import defpackage.ox;
import defpackage.pe4;
import defpackage.px;
import defpackage.q;
import defpackage.ra;
import defpackage.s35;
import defpackage.t36;
import defpackage.ua1;
import defpackage.up1;
import defpackage.us2;
import defpackage.vp1;
import defpackage.wu;
import defpackage.xp1;
import defpackage.xy;
import defpackage.yu;
import defpackage.z85;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.appconfigs.list.ConfigListActivity;
import org.swiftapps.swiftbackup.appslist.ui.labels.LabelsActivity;
import org.swiftapps.swiftbackup.blacklist.BlacklistActivity;
import org.swiftapps.swiftbackup.settings.appbackuplimits.AppBackupLimitItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class a extends fm0 implements t36 {
    public final gv7 I;
    public final cr3 J;
    public final cr3 K;
    public final gv7 p;
    public final gv7 q;
    public final gv7 r;
    public final gv7 t;
    public final gv7 x = new gv7(new fj(this, 8));
    public final gv7 y = new gv7(new gj(this, 7));
    public final gv7 G = new gv7(new ak(this, 4));
    public final gv7 H = new gv7(new ck(this, 5));

    public a() {
        int i = 6;
        this.p = new gv7(new bh(this, i));
        this.q = new gv7(new kf(this, i));
        this.r = new gv7(new lf(this, i));
        this.t = new gv7(new ej(this, i));
        this.I = new gv7(new dk(this, i));
        int i2 = 1;
        this.J = (cr3) registerForActivityResult(new bb(this, i2), new m9(1));
        this.K = (cr3) registerForActivityResult(new fs(this, i2), new k9(i2));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // defpackage.t36
    public final boolean d(Preference preference) {
        String str = preference.t;
        int i = 0;
        if (str != null) {
            switch (str.hashCode()) {
                case -1115426992:
                    if (str.equals("multiple_backups_strategy")) {
                        MultipleBackupStrategy.Companion.getClass();
                        this.K.a(b.c());
                    }
                    break;
                case -560557161:
                    if (str.equals("app_backup_limits")) {
                        this.J.a(ok.c());
                        return false;
                    }
                    break;
                case -180659224:
                    if (str.equals("restore_ssaids")) {
                        boolean z = r().f0;
                        SharedPreferences.Editor editor = cz4.k;
                        if (editor == null) {
                            pe4.F("editor");
                            throw null;
                        }
                        editor.putBoolean("restore_ssaids", z).apply();
                        if (r().f0) {
                            SettingsDetailActivity settingsDetailActivityQ = q();
                            s35 s35Var = new s35(settingsDetailActivityQ, R.style.M3AlertDialogTheme, new hv1(settingsDetailActivityQ, R.style.M3AlertDialogTheme), null);
                            s35Var.v(R.string.note);
                            ((ra) s35Var.b).f = getString(R.string.restore_app_ssaids_note);
                            s35Var.s(R.string.ok, null);
                            s35Var.m();
                            return false;
                        }
                    }
                    break;
                case 23593308:
                    if (str.equals("compression_level_app_data")) {
                        vp1.a(requireActivity(), z85.r(), new px(this, i));
                        return false;
                    }
                    break;
                case 80860185:
                    if (str.equals("manage_labels")) {
                        int i2 = LabelsActivity.Z;
                        us2.D(q());
                        return false;
                    }
                    break;
                case 589282368:
                    if (str.equals("show_system_apps")) {
                        boolean z2 = ((MSwitchPreference) this.p.getValue()).f0;
                        SharedPreferences.Editor editor2 = cz4.k;
                        if (editor2 == null) {
                            pe4.F("editor");
                            throw null;
                        }
                        editor2.putBoolean("show_system_apps", z2).apply();
                        dv.i(kz4.g, true, null, false, false, 14);
                        dv.i(ua1.g, true, null, false, false, 14);
                        return false;
                    }
                    break;
                case 736843175:
                    if (str.equals("backup_app_cache")) {
                        boolean z3 = s().f0;
                        SharedPreferences.Editor editor3 = cz4.k;
                        if (editor3 == null) {
                            pe4.F("editor");
                            throw null;
                        }
                        editor3.putBoolean("backup_app_cache", z3).apply();
                        if (s().f0) {
                            SettingsDetailActivity settingsDetailActivityQ2 = q();
                            s35 s35Var2 = new s35(settingsDetailActivityQ2, R.style.M3AlertDialogTheme, new hv1(settingsDetailActivityQ2, R.style.M3AlertDialogTheme), null);
                            s35Var2.v(R.string.warning);
                            s35Var2.n(R.string.backup_cache_warning);
                            s35Var2.s(R.string.ok, null);
                            s35Var2.m();
                            return false;
                        }
                    }
                    break;
                case 951117169:
                    if (str.equals("configs")) {
                        int i3 = ConfigListActivity.R;
                        jb9.f0(q());
                        return false;
                    }
                    break;
                case 1576315756:
                    if (str.equals("restore_runtime_permissions")) {
                        wu wuVar = yu.Companion;
                        u uVarRequireActivity = requireActivity();
                        wuVar.getClass();
                        wu.c(uVarRequireActivity, wu.a(), new ox(this, i));
                        return false;
                    }
                    break;
                case 1721926740:
                    if (str.equals("blacklist_apps")) {
                        ai8.q(q(), BlacklistActivity.class);
                        return false;
                    }
                    break;
                case 1890473208:
                    if (str.equals("swipe_actions")) {
                        int i4 = AppSwipeActionsActivity.Q;
                        SettingsDetailActivity settingsDetailActivityQ3 = q();
                        settingsDetailActivityQ3.startActivity(new Intent(settingsDetailActivityQ3, (Class<?>) AppSwipeActionsActivity.class));
                        return false;
                    }
                    break;
                case 1934414541:
                    if (str.equals("restore_special_permissions")) {
                        int i5 = RestoreSpecialDataDetailsActivity.R;
                        SettingsDetailActivity settingsDetailActivityQ4 = q();
                        settingsDetailActivityQ4.startActivity(new Intent(settingsDetailActivityQ4, (Class<?>) RestoreSpecialDataDetailsActivity.class));
                        return false;
                    }
                    break;
            }
        }
        return false;
    }

    @Override // defpackage.c46
    public final void l() {
        boolean z;
        i(R.xml.settings_apps);
        Iterator it = n().iterator();
        while (it.hasNext()) {
            ((Preference) it.next()).f = this;
        }
        MSwitchPreference mSwitchPreference = (MSwitchPreference) this.p.getValue();
        boolean z2 = false;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("show_system_apps", false);
            mSwitchPreference.G(z);
            v();
            List listI = nc8.I(r());
            gv7 gv7Var = this.r;
            boolean z3 = true;
            List listA0 = fl1.A0((Preference) gv7Var.getValue(), r(), (Preference) this.y.getValue(), s());
            for (Preference preference : el1.g1(listI, listA0)) {
                if (!el1.M0(listI, preference) || mp6.g) {
                    if (listA0.contains(preference)) {
                        mp6 mp6Var = mp6.a;
                        if (!mp6.f()) {
                        }
                    }
                }
                preference.y();
                preference.B(preference.a.getString(R.string.root_access_needed));
            }
            if (r().g()) {
                MSwitchPreference mSwitchPreferenceR = r();
                try {
                    SharedPreferences sharedPreferences2 = cz4.f;
                    if (sharedPreferences2 == null) {
                        pe4.F("prefs");
                        throw null;
                    }
                    z2 = sharedPreferences2.getBoolean("restore_ssaids", false);
                    mSwitchPreferenceR.G(z2);
                    MSwitchPreference mSwitchPreferenceR2 = r();
                    mSwitchPreferenceR2.B(mSwitchPreferenceR2.a.getString(R.string.restore_app_ssaids_summary));
                } catch (ClassCastException unused) {
                }
            }
            if (((Preference) gv7Var.getValue()).g()) {
                Preference preference2 = (Preference) gv7Var.getValue();
                yu.Companion.getClass();
                preference2.B(wu.a().asDisplayString());
            }
            Preference preference3 = (Preference) this.t.getValue();
            try {
                SharedPreferences sharedPreferences3 = cz4.f;
                if (sharedPreferences3 == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z3 = sharedPreferences3.getBoolean("restore_special_permissions", true);
                preference3.B(getString(z3 ? R.string.enabled : R.string.disabled));
                MultipleBackupStrategy.Companion.getClass();
                ((Preference) this.G.getValue()).B(f.a(b.c()).preferenceSummary());
                u();
                t();
                if (s().g()) {
                    s().G(z85.w());
                    MSwitchPreference mSwitchPreferenceS = s();
                    mSwitchPreferenceS.B(mSwitchPreferenceS.a.getString(R.string.backup_cache_summary));
                }
            } catch (ClassCastException unused2) {
            }
        } catch (ClassCastException unused3) {
            z = false;
        }
    }

    @Override // androidx.fragment.app.o
    public final void onResume() {
        super.onResume();
        Preference preference = (Preference) this.t.getValue();
        boolean z = true;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            z = sharedPreferences.getBoolean("restore_special_permissions", true);
            preference.B(getString(z ? R.string.enabled : R.string.disabled));
            v();
        } catch (ClassCastException unused) {
        }
    }

    public final SettingsDetailActivity q() {
        u activity = getActivity();
        activity.getClass();
        return (SettingsDetailActivity) activity;
    }

    public final MSwitchPreference r() {
        return (MSwitchPreference) this.I.getValue();
    }

    public final MSwitchPreference s() {
        return (MSwitchPreference) this.x.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0055  */
    public final void t() {
        String string;
        gv7 gv7Var = this.H;
        if (((Preference) gv7Var.getValue()).g()) {
            ArrayList arrayListD = ok.d();
            Preference preference = (Preference) gv7Var.getValue();
            if (arrayListD != null) {
                ArrayList arrayList = new ArrayList();
                for (Object obj : arrayListD) {
                    if (((AppBackupLimitItem) obj).hasLimits()) {
                        arrayList.add(obj);
                    }
                }
                string = !arrayList.isEmpty() ? el1.Y0(arrayList, "\n", null, null, new nk(0), 30) : null;
                if (string == null) {
                    string = getString(R.string.no_limit);
                    string.getClass();
                }
            } else {
                string = getString(R.string.no_limit);
                string.getClass();
            }
            preference.B(string);
        }
    }

    public final void u() {
        int i;
        gv7 gv7Var = this.y;
        if (((Preference) gv7Var.getValue()).g()) {
            Preference preference = (Preference) gv7Var.getValue();
            xp1 xp1VarR = z85.r();
            xp1VarR.getClass();
            switch (up1.a[xp1VarR.ordinal()]) {
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
            preference.B(string);
        }
    }

    public final void v() {
        Preference preference = (Preference) this.q.getValue();
        Context contextRequireContext = requireContext();
        String string = contextRequireContext.getString(R.string.swipe_actions_summary_format, contextRequireContext.getString(R.string.right_direction), g67.r(contextRequireContext, ho6.o(xy.Right)), contextRequireContext.getString(R.string.left_direction), g67.r(contextRequireContext, ho6.o(xy.Left)));
        string.getClass();
        preference.B(string);
    }
}
