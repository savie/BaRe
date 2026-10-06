package defpackage;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z46 extends k72 {
    public static final Handler e = new Handler(Looper.getMainLooper(), new y46());
    public final yk6 d;

    public z46(yk6 yk6Var, int i, int i2) {
        super(i, i2);
        this.d = yk6Var;
    }

    @Override // defpackage.px7
    public final void b(Object obj, x98 x98Var) {
        kk6 kk6Var = this.c;
        if (kk6Var == null || !kk6Var.k()) {
            return;
        }
        e.obtainMessage(1, this).sendToTarget();
    }

    @Override // defpackage.px7
    public final void l(Drawable drawable) {
    }
}
