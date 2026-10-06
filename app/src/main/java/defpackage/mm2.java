package defpackage;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class mm2 implements Closeable {
    public final l15 a = o15.b(getClass());
    public final wm2 b;
    public final nr6 c;
    public final fi7 d;

    public mm2(nr6 nr6Var, wm2 wm2Var, fi7 fi7Var) {
        new ArrayList();
        new ReentrantReadWriteLock();
        this.c = nr6Var;
        this.d = fi7Var;
        this.b = wm2Var;
        o15.b(getClass());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws va8 {
        wm2 wm2Var = this.b;
        ks6 ks6Var = new ks6(24, wm2Var.e, it6.SMB2_CLOSE, wm2Var.t, wm2Var.c);
        nr6 nr6Var = this.c;
        ks6Var.e = nr6Var;
        vc7.a(wm2Var.b(ks6Var), "Close", nr6Var, vc7.G, wm2Var.r);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        mm2 mm2Var = (mm2) obj;
        wm2 wm2Var = mm2Var.b;
        fi7 fi7Var = mm2Var.d;
        fi7 fi7Var2 = this.d;
        if (fi7Var2 == null) {
            if (fi7Var != null) {
                return false;
            }
        } else if (!fi7Var2.equals(fi7Var)) {
            return false;
        }
        wm2 wm2Var2 = this.b;
        if (wm2Var2 == null) {
            return wm2Var == null;
        }
        return wm2Var2.equals(wm2Var);
    }

    public final void g() {
        try {
            close();
        } catch (Exception e) {
            this.a.n(getClass().getSimpleName(), this.d, this.b, this.c, e);
        }
    }

    public final int hashCode() {
        fi7 fi7Var = this.d;
        int iHashCode = ((fi7Var == null ? 0 : fi7Var.hashCode()) + 31) * 31;
        wm2 wm2Var = this.b;
        return iHashCode + (wm2Var != null ? wm2Var.hashCode() : 0);
    }

    public final g93 s0(Class cls) {
        wm2 wm2Var = this.b;
        wm2Var.getClass();
        r73 r73VarA = n83.a(cls);
        int iA = r73VarA.a();
        us6 us6Var = wm2Var.e;
        long j = wm2Var.t;
        long j2 = wm2Var.c;
        nr6 nr6Var = this.c;
        au6 au6Var = new au6(us6Var, j, j2, nr6Var, 1, iA, 0);
        try {
            return (g93) r73VarA.c(new jw0(((bu6) vc7.a(wm2Var.b(au6Var), "QueryInfo", nr6Var, zm7.w, wm2Var.r)).e, true, vw2.b));
        } catch (iw0 e) {
            throw new gv6(e);
        }
    }

    public final void u() {
        wm2 wm2Var = this.b;
        wm2Var.getClass();
        wm2Var.A(this.c, new j73());
    }
}
