package defpackage;

import android.os.Looper;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ix6 extends gj5 {
    public final AtomicBoolean l = new AtomicBoolean(false);

    @Override // defpackage.zy4
    public final void e(fu4 fu4Var, final es5 es5Var) {
        super.e(fu4Var, new es5() { // from class: ah7
            @Override // defpackage.es5
            public final void b(Object obj) {
                if (this.a.l.compareAndSet(true, false)) {
                    es5Var.b(obj);
                }
            }
        });
    }

    @Override // defpackage.zy4
    public final void k(Object obj) {
        if (!pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            i(obj);
        } else {
            this.l.set(true);
            super.k(obj);
        }
    }
}
