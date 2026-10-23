package defpackage;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class qv8 {
    public static final tv8 b;
    public final tv8 a;

    static {
        hv8 bv8Var;
        int i = Build.VERSION.SDK_INT;
        if (i >= 36) {
            bv8Var = new gv8();
        } else if (i >= 35) {
            bv8Var = new fv8();
        } else if (i >= 34) {
            bv8Var = new ev8();
        } else if (i >= 31) {
            bv8Var = new dv8();
        } else if (i >= 30) {
            bv8Var = new cv8();
        } else {
            bv8Var = i >= 29 ? new bv8() : new zu8();
        }
        b = bv8Var.b().a.a().a.b().a.c();
    }

    public qv8(tv8 tv8Var) {
        this.a = tv8Var;
    }

    public tv8 a() {
        return this.a;
    }

    public tv8 b() {
        return this.a;
    }

    public tv8 c() {
        return this.a;
    }

    public List<Rect> e(int i) {
        return Collections.EMPTY_LIST;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qv8)) {
            return false;
        }
        qv8 qv8Var = (qv8) obj;
        return s() == qv8Var.s() && r() == qv8Var.r() && Objects.equals(m(), qv8Var.m()) && Objects.equals(k(), qv8Var.k()) && Objects.equals(g(), qv8Var.g());
    }

    public List<Rect> f(int i) {
        return Collections.EMPTY_LIST;
    }

    public en2 g() {
        return null;
    }

    public vc4 h(int i) {
        return vc4.e;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(s()), Boolean.valueOf(r()), m(), k(), g());
    }

    public vc4 i(int i) {
        if ((i & 8) == 0) {
            return vc4.e;
        }
        c6.f("Unable to query the maximum insets for IME");
        return null;
    }

    public vc4 j() {
        return m();
    }

    public vc4 k() {
        return vc4.e;
    }

    public vc4 l() {
        return m();
    }

    public vc4 m() {
        return vc4.e;
    }

    public vc4 n() {
        return m();
    }

    public tv8 q(int i, int i2, int i3, int i4) {
        return b;
    }

    public boolean r() {
        return false;
    }

    public boolean s() {
        return false;
    }

    public void p() {
    }

    public void d(View view) {
    }

    public void o(View view) {
    }

    public void t(gn2 gn2Var) {
    }

    public void u(vc4[] vc4VarArr) {
    }

    public void v(tv8 tv8Var) {
    }

    public void w(vc4 vc4Var) {
    }

    public void x(int i) {
    }

    public void y(Rect[][] rectArr) {
    }

    public void z(Rect[][] rectArr) {
    }
}
