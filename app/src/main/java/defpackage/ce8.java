package defpackage;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ce8 implements ll6 {
    public final Bitmap a;

    public ce8(Bitmap bitmap) {
        this.a = bitmap;
    }

    @Override // defpackage.ll6
    public final int c() {
        return xh8.l(this.a);
    }

    @Override // defpackage.ll6
    public final Class d() {
        return Bitmap.class;
    }

    @Override // defpackage.ll6
    public final Object get() {
        return this.a;
    }

    @Override // defpackage.ll6
    public final void b() {
    }
}
