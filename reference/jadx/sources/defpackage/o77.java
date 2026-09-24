package defpackage;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o77 implements Executor {
    public static final Logger f = Logger.getLogger(o77.class.getName());
    public final Executor a;
    public final ArrayDeque b = new ArrayDeque();
    public int c = 1;
    public long d = 0;
    public final n77 e = new n77(this);

    public o77(Executor executor) {
        ly8.h(executor);
        this.a = executor;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        ly8.h(runnable);
        synchronized (this.b) {
            int i = this.c;
            if (i != 4) {
                int i2 = 3;
                if (i != 3) {
                    long j = this.d;
                    bo0 bo0Var = new bo0(runnable, i2);
                    this.b.add(bo0Var);
                    this.c = 2;
                    try {
                        this.a.execute(this.e);
                        if (this.c != 2) {
                            return;
                        }
                        synchronized (this.b) {
                            try {
                                if (this.d == j && this.c == 2) {
                                    this.c = 3;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        return;
                    } catch (Error | RuntimeException e) {
                        synchronized (this.b) {
                            try {
                                int i3 = this.c;
                                boolean z = true;
                                if ((i3 != 1 && i3 != 2) || !this.b.removeLastOccurrence(bo0Var)) {
                                    z = false;
                                }
                                if (!(e instanceof RejectedExecutionException) || z) {
                                    throw e;
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                        return;
                    }
                }
            }
            this.b.add(runnable);
        }
    }

    public final String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + this.a + "}";
    }
}
