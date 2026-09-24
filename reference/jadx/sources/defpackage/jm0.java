package defpackage;

import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jm0 extends zb {
    public final /* synthetic */ km0 b;

    public jm0(km0 km0Var) {
        this.b = km0Var;
    }

    @Override // defpackage.zb
    public final void a(Drawable drawable) {
        km0 km0Var = this.b;
        if (km0Var.n) {
            return;
        }
        km0Var.setVisibility(km0Var.p);
    }
}
