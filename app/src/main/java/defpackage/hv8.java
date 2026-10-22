package defpackage;

import android.graphics.Rect;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class hv8 {
    public final tv8 a;
    public vc4[] b;
    public final Rect[][] c;
    public final Rect[][] d;

    public hv8(tv8 tv8Var) {
        this.c = new Rect[10][];
        this.d = new Rect[10][];
        this.a = tv8Var;
        c(tv8Var);
    }

    public final void a() {
        vc4[] vc4VarArr = this.b;
        if (vc4VarArr != null) {
            vc4 vc4VarH = vc4VarArr[0];
            vc4 vc4VarH2 = vc4VarArr[1];
            tv8 tv8Var = this.a;
            if (vc4VarH2 == null) {
                vc4VarH2 = tv8Var.a.h(2);
            }
            if (vc4VarH == null) {
                vc4VarH = tv8Var.a.h(1);
            }
            h(vc4.a(vc4VarH, vc4VarH2));
            vc4 vc4Var = this.b[x13.A(16)];
            if (vc4Var != null) {
                g(vc4Var);
            }
            vc4 vc4Var2 = this.b[x13.A(32)];
            if (vc4Var2 != null) {
                e(vc4Var2);
            }
            vc4 vc4Var3 = this.b[x13.A(64)];
            if (vc4Var3 != null) {
                i(vc4Var3);
            }
        }
    }

    public abstract tv8 b();

    public void c(tv8 tv8Var) {
        for (int i = 1; i <= 512; i <<= 1) {
            List<Rect> listE = tv8Var.a.e(i);
            int iA = x13.A(i);
            this.c[iA] = (Rect[]) listE.toArray(new Rect[listE.size()]);
            if (i != 8) {
                List<Rect> listF = tv8Var.a.f(i);
                this.d[iA] = (Rect[]) listF.toArray(new Rect[listF.size()]);
            }
        }
    }

    public void d(int i, vc4 vc4Var) {
        if (this.b == null) {
            this.b = new vc4[10];
        }
        for (int i2 = 1; i2 <= 512; i2 <<= 1) {
            if ((i & i2) != 0) {
                this.b[x13.A(i2)] = vc4Var;
            }
        }
    }

    public abstract void f(vc4 vc4Var);

    public abstract void h(vc4 vc4Var);

    public hv8() {
        this(new tv8());
    }

    public void e(vc4 vc4Var) {
    }

    public void g(vc4 vc4Var) {
    }

    public void i(vc4 vc4Var) {
    }
}
