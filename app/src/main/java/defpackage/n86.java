package defpackage;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n86 extends k {
    public m86 a;

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) throws ExecutionException {
        try {
            m86 m86Var = this.a;
            Object objA = m86Var.a(j, timeUnit);
            if (objA != null) {
                return objA;
            }
            throw ((nh4) m86Var.d).r(new TimeoutException("Timeout expired"));
        } catch (Throwable th) {
            throw new ExecutionException(th);
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        m86 m86Var = this.a;
        ReentrantLock reentrantLock = (ReentrantLock) m86Var.e;
        reentrantLock.lock();
        try {
            return ((Throwable) m86Var.n) == null && ((rt6) m86Var.k) != null;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws ExecutionException {
        try {
            return this.a.a(0L, TimeUnit.SECONDS);
        } catch (Throwable th) {
            throw new ExecutionException(th);
        }
    }
}
