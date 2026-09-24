package defpackage;

import android.graphics.Bitmap;
import java.util.Iterator;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class pw6 {
    public final cz7 a;
    public final dz7 b;
    public final gj5 c;
    public final gj5 d;
    public final ex6 e;
    public final ex6 f;
    public final ex6 g;
    public final ex6 h;
    public final ex6 i;
    public final gj5 j;
    public ag8 k;
    public boolean l;

    public pw6(cz7 cz7Var, dz7 dz7Var) {
        cz7Var.getClass();
        this.a = cz7Var;
        this.b = dz7Var;
        gj5 gj5Var = new gj5();
        this.c = gj5Var;
        this.d = new gj5();
        this.e = new ex6();
        this.f = new ex6();
        this.g = new ex6();
        this.h = new ex6();
        ex6 ex6Var = new ex6();
        this.i = ex6Var;
        this.j = new gj5();
        SwiftApp.Companion companion = SwiftApp.d;
        ex6Var.i(SwiftApp.Companion.c().getString(R.string.waiting));
        gj5Var.i(gz7.WAITING);
    }

    public static void m(String str, Bitmap bitmap) {
        str.getClass();
        jy7 jy7Var = hy7.e;
        jy7Var.getClass();
        wo5 wo5Var = jy7Var.a;
        StringBuilder sb = new StringBuilder();
        sb.append(hy7.b);
        if (str.length() > 0) {
            sb.append(": ".concat(str));
        }
        String string = sb.toString();
        wo5Var.getClass();
        wo5Var.e = wo5.b(string);
        wo5Var.d(bitmap);
    }

    public abstract void a();

    public abstract void b();

    public abstract String c();

    public abstract int d();

    public final gz7 e() {
        gz7 gz7Var = (gz7) this.c.d();
        return gz7Var == null ? gz7.WAITING : gz7Var;
    }

    public abstract int f();

    public final boolean g() {
        return f() > 1;
    }

    public abstract String h();

    public final boolean i() {
        return this.l || this.b.c();
    }

    public abstract String j();

    public final synchronized void k(r62 r62Var) {
        this.f.k(r62Var);
    }

    public void l() {
        m(h(), null);
    }

    public final synchronized void n(int i) {
        int iIntValue;
        pw6 pw6Var;
        Integer num;
        try {
            this.e.k(Integer.valueOf(i));
            hy7 hy7Var = hy7.a;
            if (hy7.f()) {
                Iterator it = hy7.c.iterator();
                int i2 = 0;
                while (true) {
                    int i3 = 10;
                    if (!it.hasNext()) {
                        break;
                    }
                    if (((rw6) it.next()).a.equals(c40.class)) {
                        i3 = 100;
                    }
                    i2 += i3;
                }
                int i4 = 0;
                for (rw6 rw6Var : hy7.c) {
                    qw6 qw6Var = rw6Var.c;
                    if (qw6Var == null || (pw6Var = qw6Var.a) == null || (num = (Integer) pw6Var.e.d()) == null) {
                        iIntValue = 0;
                    } else {
                        int iIntValue2 = num.intValue();
                        int iD = pw6Var.d();
                        int iQ = rw6Var.a.equals(c40.class) ? Const.q(iIntValue2, iD) : Const.q(iIntValue2, iD) / 10;
                        Integer numValueOf = Integer.valueOf(iQ);
                        if (iQ >= i2) {
                            numValueOf = null;
                        }
                        iIntValue = numValueOf != null ? numValueOf.intValue() : i2;
                    }
                    i4 += iIntValue;
                }
                jy7 jy7Var = hy7.e;
                if (jy7Var != null) {
                    jy7Var.e(i4, i2);
                }
            } else {
                jy7 jy7Var2 = hy7.e;
                if (jy7Var2 != null) {
                    jy7Var2.e(i, d());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void o(String str) {
        try {
            this.g.k(str);
            if (str == null || str.length() == 0) {
                synchronized (this) {
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
