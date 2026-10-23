package defpackage;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qj8 extends Drawable.ConstantState {
    public final Drawable.ConstantState a;

    public qj8(Drawable.ConstantState constantState) {
        this.a = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        return this.a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        rj8 rj8Var = new rj8();
        rj8Var.a = (VectorDrawable) this.a.newDrawable();
        return rj8Var;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        rj8 rj8Var = new rj8();
        rj8Var.a = (VectorDrawable) this.a.newDrawable(resources);
        return rj8Var;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
        rj8 rj8Var = new rj8();
        rj8Var.a = (VectorDrawable) this.a.newDrawable(resources, theme);
        return rj8Var;
    }
}
