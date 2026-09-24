package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jx3 extends k72 {
    public final Handler d;
    public final int e;
    public final long f;
    public Bitmap k;

    public jx3(Handler handler, int i, long j) {
        this.d = handler;
        this.e = i;
        this.f = j;
    }

    @Override // defpackage.px7
    public final void b(Object obj, x98 x98Var) {
        this.k = (Bitmap) obj;
        Handler handler = this.d;
        handler.sendMessageAtTime(handler.obtainMessage(1, this), this.f);
    }

    @Override // defpackage.px7
    public final void l(Drawable drawable) {
        this.k = null;
    }
}
