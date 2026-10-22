package defpackage;

import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class co5 extends xo2 {
    @Override // defpackage.ll6
    public final int c() {
        Drawable drawable = this.a;
        return Math.max(1, drawable.getIntrinsicHeight() * drawable.getIntrinsicWidth() * 4);
    }

    @Override // defpackage.ll6
    public final Class d() {
        return this.a.getClass();
    }

    @Override // defpackage.ll6
    public final void b() {
    }
}
