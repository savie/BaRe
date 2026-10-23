package defpackage;

import android.view.WindowInsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class bv8 extends hv8 {
    public final WindowInsets.Builder e;

    public bv8(tv8 tv8Var) {
        super(tv8Var);
        WindowInsets windowInsetsG = tv8Var.g();
        this.e = windowInsetsG != null ? av8.b(windowInsetsG) : av8.a();
    }

    @Override // defpackage.hv8
    public tv8 b() {
        a();
        tv8 tv8VarH = tv8.h(this.e.build(), null);
        vc4[] vc4VarArr = this.b;
        qv8 qv8Var = tv8VarH.a;
        qv8Var.u(vc4VarArr);
        qv8Var.t(null);
        qv8Var.y(this.c);
        qv8Var.z(this.d);
        return tv8VarH;
    }

    @Override // defpackage.hv8
    public void e(vc4 vc4Var) {
        this.e.setMandatorySystemGestureInsets(vc4Var.e());
    }

    @Override // defpackage.hv8
    public void f(vc4 vc4Var) {
        this.e.setStableInsets(vc4Var.e());
    }

    @Override // defpackage.hv8
    public void g(vc4 vc4Var) {
        this.e.setSystemGestureInsets(vc4Var.e());
    }

    @Override // defpackage.hv8
    public void h(vc4 vc4Var) {
        this.e.setSystemWindowInsets(vc4Var.e());
    }

    @Override // defpackage.hv8
    public void i(vc4 vc4Var) {
        this.e.setTappableElementInsets(vc4Var.e());
    }

    public bv8() {
        this.e = av8.a();
    }
}
