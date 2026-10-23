package defpackage;

import android.view.WindowInsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class lv8 extends kv8 {
    public vc4 s;
    public vc4 t;
    public vc4 u;

    public lv8(tv8 tv8Var, WindowInsets windowInsets) {
        super(tv8Var, windowInsets);
        this.s = null;
        this.t = null;
        this.u = null;
    }

    @Override // defpackage.qv8
    public vc4 j() {
        if (this.t == null) {
            this.t = vc4.d(this.c.getMandatorySystemGestureInsets());
        }
        return this.t;
    }

    @Override // defpackage.qv8
    public vc4 l() {
        if (this.s == null) {
            this.s = vc4.d(this.c.getSystemGestureInsets());
        }
        return this.s;
    }

    @Override // defpackage.qv8
    public vc4 n() {
        if (this.u == null) {
            this.u = vc4.d(this.c.getTappableElementInsets());
        }
        return this.u;
    }

    @Override // defpackage.iv8, defpackage.qv8
    public tv8 q(int i, int i2, int i3, int i4) {
        return tv8.h(this.c.inset(i, i2, i3, i4), null);
    }

    @Override // defpackage.jv8, defpackage.qv8
    public void w(vc4 vc4Var) {
    }
}
