package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pc implements ll6 {
    public final AnimatedImageDrawable a;

    public pc(AnimatedImageDrawable animatedImageDrawable) {
        this.a = animatedImageDrawable;
    }

    @Override // defpackage.ll6
    public final void b() {
        this.a.stop();
        this.a.clearAnimationCallbacks();
    }

    @Override // defpackage.ll6
    public final int c() {
        return xh8.m(Bitmap.Config.ARGB_8888) * this.a.getIntrinsicHeight() * this.a.getIntrinsicWidth() * 2;
    }

    @Override // defpackage.ll6
    public final Class d() {
        return Drawable.class;
    }

    @Override // defpackage.ll6
    public final Object get() {
        return this.a;
    }
}
