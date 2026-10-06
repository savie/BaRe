package defpackage;

import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o60 implements Drawable.Callback {
    public final Drawable.Callback a;
    public final /* synthetic */ p60 b;

    public o60(p60 p60Var, Drawable.Callback callback) {
        this.b = p60Var;
        this.a = callback;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        this.a.invalidateDrawable(this.b);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        this.a.scheduleDrawable(this.b, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        this.a.unscheduleDrawable(this.b, runnable);
    }
}
