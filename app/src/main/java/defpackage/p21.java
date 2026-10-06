package defpackage;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p21 extends k {
    public final n86 a;
    public final tr1 b;
    public final AtomicBoolean c = new AtomicBoolean(false);
    public final ReentrantReadWriteLock d = new ReentrantReadWriteLock();

    public p21(n86 n86Var, tr1 tr1Var) {
        this.a = n86Var;
        this.b = tr1Var;
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        AtomicBoolean atomicBoolean = this.c;
        ReentrantReadWriteLock reentrantReadWriteLock = this.d;
        reentrantReadWriteLock.writeLock().lock();
        try {
            if (!isDone() && !atomicBoolean.getAndSet(true)) {
                this.b.a();
                reentrantReadWriteLock.writeLock().unlock();
                return true;
            }
            reentrantReadWriteLock.writeLock().unlock();
            return false;
        } catch (Throwable th) {
            try {
                atomicBoolean.set(false);
                if (th instanceof gv6) {
                    throw th;
                }
                throw new gv6(th);
            } catch (Throwable th2) {
                reentrantReadWriteLock.writeLock().unlock();
                throw th2;
            }
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.a.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        ReentrantReadWriteLock reentrantReadWriteLock = this.d;
        reentrantReadWriteLock.readLock().lock();
        try {
            return this.c.get();
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        ReentrantReadWriteLock reentrantReadWriteLock = this.d;
        reentrantReadWriteLock.readLock().lock();
        try {
            return this.c.get() || this.a.isDone();
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.a.get(j, timeUnit);
    }
}
