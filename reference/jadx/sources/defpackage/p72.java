package defpackage;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p72 extends a95 {
    public final RectF s;

    public p72(p72 p72Var) {
        super(p72Var);
        this.s = p72Var.s;
    }

    @Override // defpackage.a95, android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        q72 q72Var = new q72(this);
        q72Var.Z = this;
        q72Var.invalidateSelf();
        return q72Var;
    }

    public p72(tb7 tb7Var, RectF rectF) {
        super(tb7Var);
        this.s = rectF;
    }
}
