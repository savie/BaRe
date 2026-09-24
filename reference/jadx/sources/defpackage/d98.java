package defpackage;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d98 implements Executor {
    public final Executor a;
    public final ArrayDeque b;
    public Runnable c;
    public final Object d;

    public d98(Executor executor) {
        executor.getClass();
        this.a = executor;
        this.b = new ArrayDeque();
        this.d = new Object();
    }

    public final void a() {
        synchronized (this.d) {
            Object objPoll = this.b.poll();
            Runnable runnable = (Runnable) objPoll;
            this.c = runnable;
            if (objPoll != null) {
                this.a.execute(runnable);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.getClass();
        synchronized (this.d) {
            this.b.offer(new xu1(runnable, this, 9));
            if (this.c == null) {
                a();
            }
        }
    }
}
