package defpackage;

import android.content.SharedPreferences;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.V;
import org.swiftapps.swiftbackup.jobs.AlarmReceiver;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class c64 extends qo0 {
    public static final ix6 l = new ix6();
    public static final ix6 m = new ix6();
    public final gv7 e;
    public final z54 f;
    public final a64 g;
    public final gv7 h;
    public ts1 i;
    public final gv7 j;
    public final ix6 k;

    public c64() {
        String string;
        gv7 gv7Var = new gv7(new jx(11));
        this.e = gv7Var;
        a64 a64Var = new a64(this);
        this.g = a64Var;
        this.h = new gv7(new zj(9));
        this.j = new gv7(new b7(19));
        this.k = new ix6();
        j(V.INSTANCE.getA());
        z54 z54Var = new z54(this);
        this.f = z54Var;
        ((zc2) gv7Var.getValue()).c(z54Var);
        lz3 lz3Var = lz3.d;
        SwiftApp.Companion companion = SwiftApp.d;
        if (lz3Var.c(SwiftApp.Companion.c(), mz3.a) == 0) {
            wq0.b.f(a64Var);
        } else {
            zn4.c(new lf(this, 23));
        }
        tb1 tb1Var = tb1.a;
        jv1 jv1Var = null;
        try {
            SharedPreferences sharedPreferences = cz4.f;
            if (sharedPreferences == null) {
                pe4.F("prefs");
                throw null;
            }
            string = sharedPreferences.getString("setup_cloud_first_startup", null);
            l.k(Boolean.valueOf(!(string == null || string.length() == 0)));
            zn4 zn4Var = zn4.a;
            zn4.b(null, new mg1(this, jv1Var, 2));
        } catch (ClassCastException unused) {
            string = null;
        }
    }

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        wq0 wq0Var = wq0.a;
        wq0.b.j(this.g);
        zc2 zc2Var = re3.a;
        re3.n((zc2) this.e.getValue(), this.f);
        re3.n((zc2) this.h.getValue(), this.i);
        super.b();
    }

    public final synchronized void j(boolean z) {
        V.INSTANCE.setA(z);
        if (o37.b() && z) {
            SwiftApp.Companion companion = SwiftApp.d;
            ((AlarmReceiver) SwiftApp.Companion.a().c.getValue()).c();
        } else {
            SharedPreferences.Editor editor = cz4.k;
            if (editor == null) {
                pe4.F("editor");
                throw null;
            }
            editor.putBoolean("KEY_SCHEDULE_ENABLED", false).apply();
            rs9.s(true);
            SwiftApp.Companion companion2 = SwiftApp.d;
            ((AlarmReceiver) SwiftApp.Companion.a().c.getValue()).a();
        }
        rs9.s(z);
        SwiftApp.Companion companion3 = SwiftApp.d;
        SwiftApp.Companion.a().a.k(Boolean.valueOf(z));
    }
}
