package defpackage;

import java.util.logging.Level;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dk0 implements Runnable {
    public final ix0 a = new ix0(4, false);
    public final ny2 b;
    public volatile boolean c;

    public dk0(ny2 ny2Var) {
        this.b = ny2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        wy5 wy5VarG;
        while (true) {
            try {
                try {
                    ix0 ix0Var = this.a;
                    synchronized (ix0Var) {
                        try {
                            if (((wy5) ix0Var.b) == null) {
                                ix0Var.wait(1000L);
                            }
                            wy5VarG = ix0Var.g();
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (wy5VarG == null) {
                        synchronized (this) {
                            wy5VarG = this.a.g();
                            if (wy5VarG == null) {
                                this.c = false;
                                this.c = false;
                                return;
                            }
                        }
                    }
                    this.b.c(wy5VarG);
                } catch (InterruptedException e) {
                    this.b.p.u(Level.WARNING, Thread.currentThread().getName() + " was interruppted", e);
                    this.c = false;
                    return;
                }
            } catch (Throwable th2) {
                this.c = false;
                throw th2;
            }
        }
    }
}
