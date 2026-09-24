package defpackage;

import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tv9 implements ke9 {
    public final WeakReference a;
    public final wu9 b = new wu9(this);

    public tv9(ct9 ct9Var) {
        this.a = new WeakReference(ct9Var);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        ct9 ct9Var = (ct9) this.a.get();
        boolean zCancel = this.b.cancel(z);
        if (!zCancel || ct9Var == null) {
            return zCancel;
        }
        ct9Var.a = null;
        ct9Var.b = null;
        ct9Var.c.g(null);
        return true;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.b.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.b.a instanceof bg9;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.b.isDone();
    }

    @Override // defpackage.ke9
    public final void o(Runnable runnable, Executor executor) {
        this.b.o(runnable, executor);
    }

    public final String toString() {
        return this.b.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.b.get(j, timeUnit);
    }
}
