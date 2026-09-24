package defpackage;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qs4 implements ll6, dc4 {
    public final Resources a;
    public final ll6 b;

    public qs4(Resources resources, ll6 ll6Var) {
        ms8.j(resources, "Argument must not be null");
        this.a = resources;
        ms8.j(ll6Var, "Argument must not be null");
        this.b = ll6Var;
    }

    @Override // defpackage.dc4
    public final void a() {
        ll6 ll6Var = this.b;
        if (ll6Var instanceof dc4) {
            ((dc4) ll6Var).a();
        }
    }

    @Override // defpackage.ll6
    public final void b() {
        this.b.b();
    }

    @Override // defpackage.ll6
    public final int c() {
        return this.b.c();
    }

    @Override // defpackage.ll6
    public final Class d() {
        return BitmapDrawable.class;
    }

    @Override // defpackage.ll6
    public final Object get() {
        return new BitmapDrawable(this.a, (Bitmap) this.b.get());
    }
}
