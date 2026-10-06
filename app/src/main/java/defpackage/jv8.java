package defpackage;

import android.view.WindowInsets;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class jv8 extends iv8 {
    public vc4 r;

    public jv8(tv8 tv8Var, WindowInsets windowInsets) {
        super(tv8Var, windowInsets);
        this.r = null;
    }

    @Override // defpackage.qv8
    public tv8 b() {
        return tv8.h(this.c.consumeStableInsets(), null);
    }

    @Override // defpackage.qv8
    public tv8 c() {
        return tv8.h(this.c.consumeSystemWindowInsets(), null);
    }

    @Override // defpackage.qv8
    public final vc4 k() {
        if (this.r == null) {
            WindowInsets windowInsets = this.c;
            this.r = vc4.c(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
        }
        return this.r;
    }

    @Override // defpackage.qv8
    public boolean r() {
        return this.c.isConsumed();
    }

    @Override // defpackage.qv8
    public void w(vc4 vc4Var) {
        this.r = vc4Var;
    }
}
