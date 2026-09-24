package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v77 extends t65 {
    public static final kf2 x;
    public static final int y;
    public final r56 r;
    public final int t;

    static {
        int i = r56.v;
        kf2 kf2Var = new kf2();
        kf2Var.a = jf2.a;
        kf2Var.b = re2.d;
        kf2Var.c = new z77(TokenAuthenticationScheme.SCHEME_DELIMITER);
        kf2Var.e = fz5.a(':', 4);
        kf2Var.f = fz5.a(',', 1);
        kf2Var.k = TokenAuthenticationScheme.SCHEME_DELIMITER;
        kf2Var.n = fz5.a(',', 1);
        kf2Var.p = TokenAuthenticationScheme.SCHEME_DELIMITER;
        x = kf2Var;
        y = s65.b(x77.class);
    }

    public v77(en0 en0Var, un7 un7Var, jg7 jg7Var, op6 op6Var, mp7 mp7Var, cd2 cd2Var) {
        super(en0Var, un7Var, jg7Var, op6Var, mp7Var, cd2Var);
        this.t = y;
        this.r = x;
    }

    @Override // defpackage.s65
    public final boolean h(ad2 ad2Var) {
        cd2 cd2Var = this.n;
        cd2Var.getClass();
        int iB = ad2Var.b();
        if (iB == 0) {
            return ad2Var.a(cd2Var.a);
        }
        if (iB == 1) {
            return ad2Var.a(cd2Var.b);
        }
        int i = yj8.a;
        g84.h("Internal error: this code path should never get executed");
        return false;
    }

    public final t65 j(long j) {
        return new v77(this, j, this.t);
    }

    public final wo0 k(gc8 gc8Var) {
        ((xo0) this.b.b).getClass();
        wo0 wo0VarP0 = xo0.p0(this, gc8Var);
        Class cls = gc8Var.f;
        if (wo0VarP0 == null) {
            wo0VarP0 = (!gc8Var.x0() || (gc8Var instanceof t50) || !u81.p(cls) || !(Collection.class.isAssignableFrom(cls) || Map.class.isAssignableFrom(cls)) || cls.toString().indexOf(36) > 0) ? null : wo0.d(this, gc8Var, xo0.q0(this, gc8Var, this));
            if (wo0VarP0 == null) {
                hd hdVarQ0 = xo0.q0(this, gc8Var, this);
                return new wo0(new xv5(this, gc8Var, hdVarQ0, u81.s(cls) ? new zd2(this, hdVarQ0) : new ae2(this, "set")));
            }
        }
        return wo0VarP0;
    }

    public final boolean l(x77 x77Var) {
        return (this.t & x77Var.b) != 0;
    }

    public v77(v77 v77Var, long j, int i) {
        super(v77Var, j);
        this.t = i;
        this.r = v77Var.r;
    }
}
