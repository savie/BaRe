package defpackage;

import android.os.Looper;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f40 extends ms8 {
    public static volatile f40 e;
    public static final e40 f = new e40();
    public final dg2 d = new dg2();

    public static f40 W() {
        if (e != null) {
            return e;
        }
        synchronized (f40.class) {
            try {
                if (e == null) {
                    e = new f40();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return e;
    }

    public final void X(Runnable runnable) {
        dg2 dg2Var = this.d;
        if (dg2Var.f == null) {
            synchronized (dg2Var.d) {
                try {
                    if (dg2Var.f == null) {
                        dg2Var.f = dg2.W(Looper.getMainLooper());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        dg2Var.f.post(runnable);
    }
}
