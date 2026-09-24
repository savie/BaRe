package defpackage;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class or0 implements ll6, dc4 {
    public final Bitmap a;
    public final nr0 b;

    public or0(nr0 nr0Var, Bitmap bitmap) {
        ms8.j(bitmap, "Bitmap must not be null");
        this.a = bitmap;
        ms8.j(nr0Var, "BitmapPool must not be null");
        this.b = nr0Var;
    }

    public static or0 e(nr0 nr0Var, Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return new or0(nr0Var, bitmap);
    }

    @Override // defpackage.dc4
    public final void a() {
        this.a.prepareToDraw();
    }

    @Override // defpackage.ll6
    public final void b() {
        this.b.f(this.a);
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
}
