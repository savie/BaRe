package defpackage;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wc extends Drawable.ConstantState {
    public final Drawable.ConstantState a;

    public wc(Drawable.ConstantState constantState) {
        this.a = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        return this.a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        xc xcVar = new xc(null);
        Drawable drawableNewDrawable = this.a.newDrawable();
        xcVar.a = drawableNewDrawable;
        drawableNewDrawable.setCallback(xcVar.f);
        return xcVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        xc xcVar = new xc(null);
        Drawable drawableNewDrawable = this.a.newDrawable(resources);
        xcVar.a = drawableNewDrawable;
        drawableNewDrawable.setCallback(xcVar.f);
        return xcVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
        xc xcVar = new xc(null);
        Drawable drawableNewDrawable = this.a.newDrawable(resources, theme);
        xcVar.a = drawableNewDrawable;
        drawableNewDrawable.setCallback(xcVar.f);
        return xcVar;
    }
}
