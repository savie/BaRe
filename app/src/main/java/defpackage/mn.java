package defpackage;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mn implements Executor {
    public final Object a = new Object();
    public final ArrayDeque b = new ArrayDeque();
    public final sl2 c;
    public Runnable d;

    public mn(sl2 sl2Var) {
        this.c = sl2Var;
    }

    public final void a() {
        synchronized (this.a) {
            try {
                Runnable runnable = (Runnable) this.b.poll();
                this.d = runnable;
                if (runnable != null) {
                    this.c.execute(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        synchronized (this.a) {
            try {
                this.b.add(new ln(0, this, runnable));
                if (this.d == null) {
                    a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
