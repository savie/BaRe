package defpackage;

import android.content.SharedPreferences;
import androidx.fragment.app.u;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.settings.MSwitchPreference;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class fs4 extends fm0 implements t36 {
    public final gv7 p = new gv7(new mo3(this, 6));
    public final gv7 q = new gv7(new xq4(this, 1));
    public final gv7 r = new gv7(new as4(this, 0));
    public final gv7 t = new gv7(new pr4(this, 1));
    public final gv7 x = new gv7(new lf(this, 26));
    public final gv7 y = new gv7(new ej(this, 26));

    public fs4() {
        new gv7(new fj(this, 29));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:72:0x013a  */
    /* JADX WARN: Code duplicated, block: B:73:0x013d  */
    /* JADX WARN: Code duplicated, block: B:77:0x0171 A[LOOP:2: B:75:0x016b->B:77:0x0171, LOOP_END] */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r2v11 java.lang.Object, still in use, count: 2, list:
          (r2v11 java.lang.Object) from 0x0136: PHI (r2 I:??) = (r2v2 java.lang.Object), (r2v11 java.lang.Object) binds: [B:69:0x0135, B:112:0x0136] A[DONT_GENERATE, DONT_INLINE]
          (r2v11 java.lang.Object) from 0x012e: CHECK_CAST (t80) (r2v11 java.lang.Object)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    @Override // defpackage.t36
    public final boolean d(androidx.preference.Preference r13) {
        /*
            Method dump skipped, instruction units count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.fs4.d(androidx.preference.Preference):boolean");
    }

    /* JADX WARN: Code duplicated, block: B:28:0x008a  */
    /* JADX WARN: Code duplicated, block: B:54:0x00e5  */
    @Override // defpackage.c46
    public final void l() {
        Boolean boolValueOf;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        i(R.xml.settings_labs);
        Iterator it = n().iterator();
        while (it.hasNext()) {
            ((Preference) it.next()).f = this;
        }
        PreferenceGroup preferenceGroup = (PreferenceGroup) j("labs_cloud_settings");
        if (preferenceGroup != null) {
            try {
                d45.b.getClass();
                MFirebaseUser mFirebaseUserA = d45.a();
                boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
            } catch (Exception unused) {
            }
            preferenceGroup.C(!pe4.d(boolValueOf, Boolean.TRUE));
        }
        Preference preferenceJ = j("scan_orphaned_cloud_files");
        if (preferenceJ != null) {
            preferenceJ.C(false);
        }
        r();
        gv7 gv7Var = this.q;
        MSwitchPreference mSwitchPreference = (MSwitchPreference) gv7Var.getValue();
        V v = V.INSTANCE;
        mSwitchPreference.C(v.getT());
        MSwitchPreference mSwitchPreference2 = (MSwitchPreference) gv7Var.getValue();
        if (v.getT()) {
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z6 = sharedPreferences.getBoolean("use_test_pdras", false);
                if (z6) {
                    z = true;
                } else {
                    z = false;
                }
            } catch (ClassCastException unused2) {
                z6 = false;
            }
        } else {
            z = false;
        }
        mSwitchPreference2.G(z);
        MSwitchPreference mSwitchPreference3 = (MSwitchPreference) this.r.getValue();
        try {
            SharedPreferences sharedPreferences2 = cz4.f;
            if (sharedPreferences2 == null) {
                pe4.F("prefs");
                throw null;
            }
            z2 = sharedPreferences2.getBoolean("extra_logging", false);
            mSwitchPreference3.G(z2);
            MSwitchPreference mSwitchPreference4 = (MSwitchPreference) this.t.getValue();
            try {
                SharedPreferences sharedPreferences3 = cz4.f;
                if (sharedPreferences3 == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z3 = sharedPreferences3.getBoolean("skip_disk_space_checks", false);
                mSwitchPreference4.G(z3);
                gv7 gv7Var2 = this.x;
                MSwitchPreference mSwitchPreference5 = (MSwitchPreference) gv7Var2.getValue();
                if (b67.f()) {
                    try {
                        SharedPreferences sharedPreferences4 = cz4.f;
                        if (sharedPreferences4 == null) {
                            pe4.F("prefs");
                            throw null;
                        }
                        z5 = sharedPreferences4.getBoolean("extend_data_sync_fgs_timeout_for_schedules", false);
                        z4 = z5;
                    } catch (ClassCastException unused3) {
                        z5 = false;
                    }
                }
                mSwitchPreference5.G(z4);
                if (!b67.f() || !mp6.g) {
                    ((MSwitchPreference) gv7Var2.getValue()).y();
                    MSwitchPreference mSwitchPreference6 = (MSwitchPreference) gv7Var2.getValue();
                    mSwitchPreference6.B(mSwitchPreference6.a.getString(R.string.requires_android_15_root_access));
                }
                if (mp6.g) {
                    return;
                }
                gv7 gv7Var3 = this.y;
                ((Preference) gv7Var3.getValue()).y();
                Preference preference = (Preference) gv7Var3.getValue();
                preference.B(preference.a.getString(R.string.root_access_needed));
            } catch (ClassCastException unused4) {
                z3 = false;
            }
        } catch (ClassCastException unused5) {
            z2 = false;
        }
    }

    public final SettingsDetailActivity q() {
        u activity = getActivity();
        if (activity instanceof SettingsDetailActivity) {
            return (SettingsDetailActivity) activity;
        }
        return null;
    }

    public final void r() {
        String str;
        Preference preference = (Preference) this.p.getValue();
        int iOrdinal = bs4.a().ordinal();
        if (iOrdinal == 0 || iOrdinal == 1) {
            str = "WebView";
        } else {
            if (iOrdinal != 2) {
                q.j();
                return;
            }
            str = "Browser";
        }
        preference.B(str);
    }
}
