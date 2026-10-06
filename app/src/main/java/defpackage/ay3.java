package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ay3 extends xo2 {
    public final /* synthetic */ Drawable b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ay3(Drawable drawable) {
        super(drawable);
        this.b = drawable;
    }

    @Override // defpackage.ll6
    public final int c() {
        Bitmap bitmapC = ai8.c(this.b);
        if (bitmapC != null) {
            return xh8.l(bitmapC);
        }
        return 1;
    }

    @Override // defpackage.ll6
    public final Class d() {
        return Drawable.class;
    }

    @Override // defpackage.ll6
    public final void b() {
    }
}
