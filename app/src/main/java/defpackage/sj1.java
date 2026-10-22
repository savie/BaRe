package defpackage;

import android.content.Intent;
import android.content.SharedPreferences;
import androidx.fragment.app.u;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.cloud.diagnostics.CloudDiagnosticsActivity;
import org.swiftapps.swiftbackup.settings.MSwitchPreference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class sj1 extends fm0 implements t36 {
    public final gv7 G;
    public final gv7 H;
    public final gv7 p = new gv7(new d76(this, 12));
    public final gv7 q = new gv7(new kf(this, 17));
    public final gv7 r;
    public final gv7 t;
    public final gv7 x;
    public final gv7 y;

    public sj1() {
        final int i = 1;
        this.r = new gv7(new bt3(this) { // from class: nj1
            public final /* synthetic */ sj1 b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i2 = i;
                sj1 sj1Var = this.b;
                switch (i2) {
                    case 0:
                        Preference preferenceJ = sj1Var.j("nextcloud_chunk_size");
                        preferenceJ.getClass();
                        return preferenceJ;
                    default:
                        Preference preferenceJ2 = sj1Var.j("multithreaded_downloads_chunk_count");
                        preferenceJ2.getClass();
                        return preferenceJ2;
                }
            }
        });
        final int i2 = 1;
        this.t = new gv7(new bt3(this) { // from class: oj1
            public final /* synthetic */ sj1 b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i3 = i2;
                sj1 sj1Var = this.b;
                switch (i3) {
                    case 0:
                        Preference preferenceJ = sj1Var.j("nextcloud_force_chunked_uploads");
                        preferenceJ.getClass();
                        return (MSwitchPreference) preferenceJ;
                    default:
                        Preference preferenceJ2 = sj1Var.j("dropbox_chunk_size");
                        preferenceJ2.getClass();
                        return preferenceJ2;
                }
            }
        });
        final int i3 = 1;
        this.x = new gv7(new bt3(this) { // from class: pj1
            public final /* synthetic */ sj1 b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i4 = i3;
                sj1 sj1Var = this.b;
                switch (i4) {
                    case 0:
                        Preference preferenceJ = sj1Var.j("s3_chunk_size");
                        preferenceJ.getClass();
                        return preferenceJ;
                    default:
                        Preference preferenceJ2 = sj1Var.j("onedrive_chunk_size");
                        preferenceJ2.getClass();
                        return preferenceJ2;
                }
            }
        });
        final int i4 = 0;
        this.y = new gv7(new bt3(this) { // from class: nj1
            public final /* synthetic */ sj1 b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i5 = i4;
                sj1 sj1Var = this.b;
                switch (i5) {
                    case 0:
                        Preference preferenceJ = sj1Var.j("nextcloud_chunk_size");
                        preferenceJ.getClass();
                        return preferenceJ;
                    default:
                        Preference preferenceJ2 = sj1Var.j("multithreaded_downloads_chunk_count");
                        preferenceJ2.getClass();
                        return preferenceJ2;
                }
            }
        });
        final int i5 = 0;
        this.G = new gv7(new bt3(this) { // from class: oj1
            public final /* synthetic */ sj1 b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i6 = i5;
                sj1 sj1Var = this.b;
                switch (i6) {
                    case 0:
                        Preference preferenceJ = sj1Var.j("nextcloud_force_chunked_uploads");
                        preferenceJ.getClass();
                        return (MSwitchPreference) preferenceJ;
                    default:
                        Preference preferenceJ2 = sj1Var.j("dropbox_chunk_size");
                        preferenceJ2.getClass();
                        return preferenceJ2;
                }
            }
        });
        final int i6 = 0;
        this.H = new gv7(new bt3(this) { // from class: pj1
            public final /* synthetic */ sj1 b;

            {
                this.b = this;
            }

            @Override // defpackage.bt3
            public final Object invoke() {
                int i7 = i6;
                sj1 sj1Var = this.b;
                switch (i7) {
                    case 0:
                        Preference preferenceJ = sj1Var.j("s3_chunk_size");
                        preferenceJ.getClass();
                        return preferenceJ;
                    default:
                        Preference preferenceJ2 = sj1Var.j("onedrive_chunk_size");
                        preferenceJ2.getClass();
                        return preferenceJ2;
                }
            }
        });
    }

    public static /* synthetic */ void r(sj1 sj1Var, int i, int i2, mt3 mt3Var, int i3) {
        sj1Var.q(i, i2, (i3 & 4) != 0 ? 1 : 5, (i3 & 8) != 0 ? Integer.MAX_VALUE : 150, mt3Var);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // defpackage.t36
    public final boolean d(Preference preference) {
        String str = preference.t;
        if (str != null) {
            int i = 5;
            switch (str.hashCode()) {
                case -2112729490:
                    if (str.equals("nextcloud_force_chunked_uploads")) {
                        ho6.U(((MSwitchPreference) this.G.getValue()).f0);
                    }
                    break;
                case -1825561070:
                    if (str.equals("s3_chunk_size")) {
                        r(this, 5, ho6.y(), new zs(this, 4), 8);
                        return false;
                    }
                    break;
                case -650299866:
                    if (str.equals("parallel_cloud_transfers")) {
                        boolean z = ((MSwitchPreference) this.p.getValue()).f0;
                        SharedPreferences.Editor editor = cz4.k;
                        if (editor != null) {
                            editor.putBoolean("parallel_cloud_transfers", z).apply();
                            return false;
                        }
                        pe4.F("editor");
                        throw null;
                    }
                    break;
                case 447174350:
                    if (str.equals("onedrive_chunk_size")) {
                        q(5, ho6.w(), 5, 60, new v10(this, i));
                        return false;
                    }
                    break;
                case 902540854:
                    if (str.equals("dropbox_chunk_size")) {
                        r(this, 25, ho6.q(), new u10(this, 2), 4);
                        return false;
                    }
                    break;
                case 961767244:
                    if (str.equals("multithreaded_downloads_chunk_count")) {
                        w20 w20Var = new w20(this, 7);
                        gv7 gv7Var = oi5.L;
                        List listU = ly8.u();
                        int iIndexOf = listU.indexOf(Integer.valueOf(ho6.t()));
                        jh6 jh6Var = new jh6();
                        jh6Var.a = iIndexOf;
                        u uVarRequireActivity = requireActivity();
                        s35 s35Var = new s35(uVarRequireActivity, R.style.M3AlertDialogTheme, new hv1(uVarRequireActivity, R.style.M3AlertDialogTheme), null);
                        s35Var.v(R.string.max_connections_per_download_title);
                        ArrayList arrayList = new ArrayList(hl1.G0(listU, 10));
                        Iterator it = listU.iterator();
                        while (it.hasNext()) {
                            arrayList.add(String.valueOf(((Number) it.next()).intValue()));
                        }
                        s35Var.u((CharSequence[]) arrayList.toArray(new String[0]), iIndexOf, new t11(jh6Var, 1));
                        s35Var.s(R.string.ok, new u11(w20Var, listU, jh6Var));
                        s35Var.q(R.string.cancel, null);
                        s35Var.m();
                        return false;
                    }
                    break;
                case 1489042766:
                    if (str.equals("multithreaded_downloads")) {
                        boolean z2 = ((MSwitchPreference) this.q.getValue()).f0;
                        SharedPreferences.Editor editor2 = cz4.k;
                        if (editor2 == null) {
                            pe4.F("editor");
                            throw null;
                        }
                        editor2.putBoolean("multithreaded_downloads", z2).apply();
                        t();
                        return false;
                    }
                    break;
                case 1501047760:
                    if (str.equals("nextcloud_chunk_size")) {
                        r(this, 100, ho6.v(), new px(this, 3), 12);
                        return false;
                    }
                    break;
                case 1706307234:
                    if (str.equals("cloud_diagnostics")) {
                        int i2 = CloudDiagnosticsActivity.Z;
                        u uVarRequireActivity2 = requireActivity();
                        uVarRequireActivity2.startActivity(new Intent(uVarRequireActivity2, (Class<?>) CloudDiagnosticsActivity.class));
                        return true;
                    }
                    break;
            }
        }
        return false;
    }

    @Override // defpackage.c46
    public final void l() {
        Boolean boolValueOf;
        boolean z;
        i(R.xml.settings_cloud);
        Iterator it = n().iterator();
        while (it.hasNext()) {
            ((Preference) it.next()).f = this;
        }
        ((MSwitchPreference) this.p.getValue()).G(ho6.B());
        try {
            d45.b.getClass();
            MFirebaseUser mFirebaseUserA = d45.a();
            boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
        } catch (Exception unused) {
        }
        if (pe4.d(boolValueOf, Boolean.TRUE)) {
            z = false;
        } else {
            try {
                SharedPreferences sharedPreferences = cz4.f;
                if (sharedPreferences == null) {
                    pe4.F("prefs");
                    throw null;
                }
                z = sharedPreferences.getBoolean("allow_multithreaded_downloads", false);
            } catch (ClassCastException unused2) {
                z = false;
            }
        }
        if (z) {
            ((MSwitchPreference) this.q.getValue()).G(ho6.A());
            t();
        } else {
            PreferenceGroup preferenceGroup = (PreferenceGroup) j("multithreaded_downloads_category");
            if (preferenceGroup != null) {
                preferenceGroup.C(false);
            }
        }
        s();
        v();
        u();
        ((MSwitchPreference) this.G.getValue()).G(ho6.z());
        w();
    }

    public final void q(int i, int i2, int i3, int i4, mt3 mt3Var) {
        Integer numValueOf = Integer.valueOf(i);
        Integer numValueOf2 = Integer.valueOf(i2);
        Integer numValueOf3 = Integer.valueOf(i4);
        if (i4 == Integer.MAX_VALUE) {
            numValueOf3 = null;
        }
        List listM1 = el1.m1(el1.v1(new LinkedHashSet(x50.p0(new Integer[]{numValueOf, numValueOf2, numValueOf3, null, null, 10, 50, 100, 150, 200, 300, 400, 500, Integer.valueOf(PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT)}))));
        ArrayList arrayList = new ArrayList();
        for (Object obj : listM1) {
            int iIntValue = ((Number) obj).intValue();
            if (i3 <= iIntValue && iIntValue <= i4) {
                arrayList.add(obj);
            }
        }
        int iIndexOf = arrayList.indexOf(Integer.valueOf(i2));
        Integer numValueOf4 = Integer.valueOf(iIndexOf);
        if (iIndexOf < 0) {
            numValueOf4 = null;
        }
        int i5 = 0;
        int iIntValue2 = numValueOf4 != null ? numValueOf4.intValue() : 0;
        jh6 jh6Var = new jh6();
        jh6Var.a = iIntValue2;
        u uVarRequireActivity = requireActivity();
        s35 s35Var = new s35(uVarRequireActivity, R.style.M3AlertDialogTheme, new hv1(uVarRequireActivity, R.style.M3AlertDialogTheme), null);
        ((ra) s35Var.b).d = getString(R.string.upload_chunk_size);
        ArrayList arrayList2 = new ArrayList(hl1.G0(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((Number) it.next()).intValue() + " MB");
        }
        s35Var.u((CharSequence[]) arrayList2.toArray(new String[0]), iIntValue2, new qj1(jh6Var, 0));
        s35Var.s(R.string.ok, new rj1(i5, mt3Var, arrayList, jh6Var));
        s35Var.q(R.string.cancel, null);
        s35Var.m();
    }

    public final void s() {
        ((Preference) this.t.getValue()).B(ho6.q() + " MB");
    }

    public final void t() {
        gv7 gv7Var = this.r;
        ((Preference) gv7Var.getValue()).C(ho6.A());
        ((Preference) gv7Var.getValue()).B(String.valueOf(ho6.t()));
    }

    public final void u() {
        ((Preference) this.y.getValue()).B(ho6.v() + " MB");
    }

    public final void v() {
        ((Preference) this.x.getValue()).B(ho6.w() + " MB");
    }

    public final void w() {
        ((Preference) this.H.getValue()).B(ho6.y() + " MB");
    }
}
