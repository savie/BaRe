package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jw8 {
    public final AtomicReferenceArray a = new AtomicReferenceArray(128);
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    private volatile /* synthetic */ int consumerIndex$volatile;
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;
    public static final /* synthetic */ AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(jw8.class, Object.class, "lastScheduledTask$volatile");
    public static final /* synthetic */ long f = oh6.a.objectFieldOffset(jw8.class.getDeclaredField("lastScheduledTask$volatile"));
    public static final /* synthetic */ AtomicIntegerFieldUpdater c = AtomicIntegerFieldUpdater.newUpdater(jw8.class, "producerIndex$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater d = AtomicIntegerFieldUpdater.newUpdater(jw8.class, "consumerIndex$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater e = AtomicIntegerFieldUpdater.newUpdater(jw8.class, "blockingTasksInBuffer$volatile");

    public final tx7 a(tx7 tx7Var) {
        b.getClass();
        tx7 tx7Var2 = (tx7) oh6.a.getAndSetObject(this, f, tx7Var);
        if (tx7Var2 == null) {
            return null;
        }
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = c;
        if (atomicIntegerFieldUpdater.get(this) - d.get(this) == 127) {
            return tx7Var2;
        }
        if (tx7Var2.b) {
            e.incrementAndGet(this);
        }
        int i = atomicIntegerFieldUpdater.get(this) & 127;
        while (true) {
            AtomicReferenceArray atomicReferenceArray = this.a;
            if (atomicReferenceArray.get(i) == null) {
                atomicReferenceArray.lazySet(i, tx7Var2);
                atomicIntegerFieldUpdater.incrementAndGet(this);
                return null;
            }
            Thread.yield();
        }
    }

    public final int b() {
        b.getClass();
        Object objectVolatile = oh6.a.getObjectVolatile(this, f);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = d;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = c;
        return objectVolatile != null ? (atomicIntegerFieldUpdater2.get(this) - atomicIntegerFieldUpdater.get(this)) + 1 : atomicIntegerFieldUpdater2.get(this) - atomicIntegerFieldUpdater.get(this);
    }

    public final void c(vy3 vy3Var) {
        b.getClass();
        tx7 tx7Var = (tx7) oh6.a.getAndSetObject(this, f, (Object) null);
        if (tx7Var != null) {
            vy3Var.a(tx7Var);
        }
        while (true) {
            tx7 tx7VarE = e();
            if (tx7VarE == null) {
                return;
            } else {
                vy3Var.a(tx7VarE);
            }
        }
    }

    public final tx7 d() {
        b.getClass();
        tx7 tx7Var = (tx7) oh6.a.getAndSetObject(this, f, (Object) null);
        return tx7Var == null ? e() : tx7Var;
    }

    public final tx7 e() {
        tx7 tx7Var;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = d;
            int i = atomicIntegerFieldUpdater.get(this);
            if (i - c.get(this) == 0) {
                return null;
            }
            int i2 = i & 127;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i, i + 1) && (tx7Var = (tx7) this.a.getAndSet(i2, null)) != null) {
                if (tx7Var.b) {
                    e.decrementAndGet(this);
                }
                return tx7Var;
            }
        }
    }

    public final tx7 f() {
        jw8 jw8Var;
        while (true) {
            b.getClass();
            Unsafe unsafe = oh6.a;
            long j = f;
            tx7 tx7Var = (tx7) unsafe.getObjectVolatile(this, j);
            if (tx7Var == null || !tx7Var.b) {
                break;
            }
            while (true) {
                Unsafe unsafe2 = oh6.a;
                jw8Var = this;
                if (unsafe2.compareAndSwapObject(jw8Var, f, tx7Var, (Object) null)) {
                    return tx7Var;
                }
                if (unsafe2.getObjectVolatile(jw8Var, j) != tx7Var) {
                    break;
                }
                this = jw8Var;
            }
            this = jw8Var;
        }
        jw8 jw8Var2 = this;
        int i = d.get(jw8Var2);
        int i2 = c.get(jw8Var2);
        while (i != i2 && e.get(jw8Var2) != 0) {
            i2--;
            tx7 tx7VarG = jw8Var2.g(i2, true);
            if (tx7VarG != null) {
                return tx7VarG;
            }
        }
        return null;
    }

    public final tx7 g(int i, boolean z) {
        int i2 = i & 127;
        AtomicReferenceArray atomicReferenceArray = this.a;
        tx7 tx7Var = (tx7) atomicReferenceArray.get(i2);
        if (tx7Var != null && tx7Var.b == z) {
            while (!atomicReferenceArray.compareAndSet(i2, tx7Var, null)) {
                if (atomicReferenceArray.get(i2) != tx7Var) {
                }
            }
            if (z) {
                e.decrementAndGet(this);
            }
            return tx7Var;
        }
        return null;
    }

    public final long h(int i, lh6 lh6Var) {
        jw8 jw8Var;
        while (true) {
            b.getClass();
            Unsafe unsafe = oh6.a;
            long j = f;
            tx7 tx7Var = (tx7) unsafe.getObjectVolatile(this, j);
            if (tx7Var == null) {
                return -2L;
            }
            if (((tx7Var.b ? 1 : 2) & i) == 0) {
                return -2L;
            }
            jz7.f.getClass();
            long jNanoTime = System.nanoTime() - tx7Var.a;
            long j2 = jz7.b;
            if (jNanoTime < j2) {
                return j2 - jNanoTime;
            }
            while (true) {
                Unsafe unsafe2 = oh6.a;
                jw8Var = this;
                if (unsafe2.compareAndSwapObject(jw8Var, f, tx7Var, (Object) null)) {
                    lh6Var.a = tx7Var;
                    return -1L;
                }
                if (unsafe2.getObjectVolatile(jw8Var, j) != tx7Var) {
                    break;
                }
                this = jw8Var;
            }
            this = jw8Var;
        }
    }
}
