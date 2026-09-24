package defpackage;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wx1 implements Executor, Closeable {
    public static final /* synthetic */ AtomicLongFieldUpdater n = AtomicLongFieldUpdater.newUpdater(wx1.class, "parkedWorkersStack$volatile");
    public static final /* synthetic */ AtomicLongFieldUpdater p = AtomicLongFieldUpdater.newUpdater(wx1.class, "controlState$volatile");
    public static final /* synthetic */ AtomicIntegerFieldUpdater q = AtomicIntegerFieldUpdater.newUpdater(wx1.class, "_isTerminated$volatile");
    public static final du9 r = new du9("NOT_IN_STACK", 2);
    private volatile /* synthetic */ int _isTerminated$volatile;
    public final int a;
    public final int b;
    public final long c;
    private volatile /* synthetic */ long controlState$volatile;
    public final String d;
    public final vy3 e;
    public final vy3 f;
    public final fl6 k;
    private volatile /* synthetic */ long parkedWorkersStack$volatile;

    public wx1(int i, int i2, long j, String str) {
        this.a = i;
        this.b = i2;
        this.c = j;
        this.d = str;
        if (i < 1) {
            f6.g(xs1.h(i, "Core pool size ", " should be at least 1"));
            throw null;
        }
        if (i2 < i) {
            f6.g(dj7.i("Max pool size ", i2, i, " should be greater than or equals to core pool size "));
            throw null;
        }
        if (i2 > 2097150) {
            f6.g(xs1.h(i2, "Max pool size ", " should not exceed maximal supported number of threads 2097150"));
            throw null;
        }
        if (j <= 0) {
            f6.g(fz5.m("Idle worker keep alive time ", " must be positive", j));
            throw null;
        }
        this.e = new vy3();
        this.f = new vy3();
        this.k = new fl6((i + 1) * 2);
        this.controlState$volatile = ((long) i) << 42;
    }

    public final int a() {
        synchronized (this.k) {
            try {
                if (q.get(this) == 1) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = p;
                long j = atomicLongFieldUpdater.get(this);
                int i = (int) (j & 2097151);
                int i2 = i - ((int) ((j & 4398044413952L) >> 21));
                if (i2 < 0) {
                    i2 = 0;
                }
                if (i2 >= this.a) {
                    return 0;
                }
                if (i >= this.b) {
                    return 0;
                }
                int i3 = ((int) (atomicLongFieldUpdater.get(this) & 2097151)) + 1;
                if (i3 <= 0 || this.k.b(i3) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                ux1 ux1Var = new ux1(this, i3);
                this.k.c(i3, ux1Var);
                if (i3 != ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i4 = i2 + 1;
                ux1Var.start();
                return i4;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(Runnable runnable, boolean z) {
        tx7 fy7Var;
        vx1 vx1Var;
        jz7.f.getClass();
        long jNanoTime = System.nanoTime();
        if (runnable instanceof tx7) {
            fy7Var = (tx7) runnable;
            fy7Var.a = jNanoTime;
            fy7Var.b = z;
        } else {
            fy7Var = new fy7(runnable, jNanoTime, z);
        }
        boolean z2 = fy7Var.b;
        AtomicLongFieldUpdater atomicLongFieldUpdater = p;
        long jAddAndGet = z2 ? atomicLongFieldUpdater.addAndGet(this, 2097152L) : 0L;
        Thread threadCurrentThread = Thread.currentThread();
        ux1 ux1Var = null;
        ux1 ux1Var2 = threadCurrentThread instanceof ux1 ? (ux1) threadCurrentThread : null;
        if (ux1Var2 != null && ux1Var2.n == this) {
            ux1Var = ux1Var2;
        }
        if (ux1Var != null && (vx1Var = ux1Var.c) != vx1.e && (fy7Var.b || vx1Var != vx1.b)) {
            ux1Var.k = true;
            fy7Var = ux1Var.a.a(fy7Var);
        }
        if (fy7Var != null) {
            if (!(fy7Var.b ? this.f.a(fy7Var) : this.e.a(fy7Var))) {
                throw new RejectedExecutionException(dj7.n(new StringBuilder(), this.d, " was terminated"));
            }
        }
        if (z2) {
            if (j() || h(jAddAndGet)) {
                return;
            }
            j();
            return;
        }
        if (j() || h(atomicLongFieldUpdater.get(this))) {
            return;
        }
        j();
    }

    /* JADX WARN: Code duplicated, block: B:33:0x006e  */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws InterruptedException {
        int i;
        tx7 tx7VarA;
        if (q.compareAndSet(this, 0, 1)) {
            Thread threadCurrentThread = Thread.currentThread();
            ux1 ux1Var = null;
            ux1 ux1Var2 = threadCurrentThread instanceof ux1 ? (ux1) threadCurrentThread : null;
            if (ux1Var2 != null && ux1Var2.n == this) {
                ux1Var = ux1Var2;
            }
            synchronized (this.k) {
                i = (int) (p.get(this) & 2097151);
            }
            if (1 <= i) {
                int i2 = 1;
                while (true) {
                    Object objB = this.k.b(i2);
                    objB.getClass();
                    ux1 ux1Var3 = (ux1) objB;
                    if (ux1Var3 != ux1Var) {
                        while (ux1Var3.getState() != Thread.State.TERMINATED) {
                            LockSupport.unpark(ux1Var3);
                            ux1Var3.join(10000L);
                        }
                        ux1Var3.a.c(this.f);
                    }
                    if (i2 == i) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            this.f.b();
            this.e.b();
            while (true) {
                if (ux1Var != null) {
                    tx7VarA = ux1Var.a(true);
                    if (tx7VarA == null) {
                        tx7VarA = (tx7) this.e.d();
                        if (tx7VarA == null) {
                            break;
                            break;
                        }
                    }
                } else {
                    tx7VarA = (tx7) this.e.d();
                    if (tx7VarA == null && (tx7VarA = (tx7) this.f.d()) == null) {
                        break;
                    }
                }
                try {
                    tx7VarA.run();
                } catch (Throwable th) {
                    Thread threadCurrentThread2 = Thread.currentThread();
                    threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
                }
            }
            if (ux1Var != null) {
                ux1Var.h(vx1.e);
            }
            n.set(this, 0L);
            p.set(this, 0L);
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        b(runnable, false);
    }

    public final void g(ux1 ux1Var, int i, int i2) {
        while (true) {
            long j = n.get(this);
            int i3 = (int) (2097151 & j);
            long j2 = (2097152 + j) & (-2097152);
            if (i3 == i) {
                if (i2 == 0) {
                    Object objC = ux1Var.c();
                    while (true) {
                        if (objC == r) {
                            i3 = -1;
                            break;
                        }
                        if (objC == null) {
                            i3 = 0;
                            break;
                        }
                        ux1 ux1Var2 = (ux1) objC;
                        int iB = ux1Var2.b();
                        if (iB != 0) {
                            i3 = iB;
                            break;
                        }
                        objC = ux1Var2.c();
                    }
                } else {
                    i3 = i2;
                }
            }
            if (i3 >= 0) {
                wx1 wx1Var = this;
                if (n.compareAndSet(wx1Var, j, ((long) i3) | j2)) {
                    return;
                } else {
                    this = wx1Var;
                }
            }
        }
    }

    public final boolean h(long j) {
        int i = ((int) (2097151 & j)) - ((int) ((j & 4398044413952L) >> 21));
        if (i < 0) {
            i = 0;
        }
        int i2 = this.a;
        if (i < i2) {
            int iA = a();
            if (iA == 1 && i2 > 1) {
                a();
            }
            if (iA > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean j() {
        wx1 wx1Var;
        du9 du9Var;
        int iB;
        while (true) {
            long j = n.get(this);
            ux1 ux1Var = (ux1) this.k.b((int) (2097151 & j));
            if (ux1Var == null) {
                ux1Var = null;
                wx1Var = this;
            } else {
                long j2 = (2097152 + j) & (-2097152);
                Object objC = ux1Var.c();
                while (true) {
                    du9Var = r;
                    if (objC == du9Var) {
                        iB = -1;
                        break;
                    }
                    if (objC == null) {
                        iB = 0;
                        break;
                    }
                    ux1 ux1Var2 = (ux1) objC;
                    iB = ux1Var2.b();
                    if (iB != 0) {
                        break;
                    }
                    objC = ux1Var2.c();
                    j = j;
                }
                if (iB >= 0) {
                    wx1 wx1Var2 = this;
                    boolean zCompareAndSet = n.compareAndSet(wx1Var2, j, ((long) iB) | j2);
                    wx1Var = wx1Var2;
                    if (zCompareAndSet) {
                        ux1Var.g(du9Var);
                    }
                    this = wx1Var;
                } else {
                    continue;
                }
            }
            if (ux1Var == null) {
                return false;
            }
            if (ux1.p.compareAndSet(ux1Var, -1, 0)) {
                LockSupport.unpark(ux1Var);
                return true;
            }
            this = wx1Var;
        }
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        fl6 fl6Var = this.k;
        int iA = fl6Var.a();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 1; i6 < iA; i6++) {
            ux1 ux1Var = (ux1) fl6Var.b(i6);
            if (ux1Var != null) {
                int iB = ux1Var.a.b();
                int iOrdinal = ux1Var.c.ordinal();
                if (iOrdinal == 0) {
                    i++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(iB);
                    sb.append('c');
                    arrayList.add(sb.toString());
                } else if (iOrdinal == 1) {
                    i2++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(iB);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (iOrdinal == 2) {
                    i3++;
                } else if (iOrdinal == 3) {
                    i4++;
                    if (iB > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(iB);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else {
                    if (iOrdinal != 4) {
                        q.j();
                        return null;
                    }
                    i5++;
                }
            }
        }
        long j = p.get(this);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.d);
        sb4.append('@');
        sb4.append(od2.l(this));
        sb4.append("[Pool Size {core = ");
        int i7 = this.a;
        sb4.append(i7);
        sb4.append(", max = ");
        xs1.s(sb4, this.b, "}, Worker States {CPU = ", i, ", blocking = ");
        xs1.s(sb4, i2, ", parked = ", i3, ", dormant = ");
        xs1.s(sb4, i4, ", terminated = ", i5, "}, running workers queues = ");
        sb4.append(arrayList);
        sb4.append(", global CPU queue size = ");
        sb4.append(this.e.c());
        sb4.append(", global blocking queue size = ");
        sb4.append(this.f.c());
        sb4.append(", Control State {created workers= ");
        sb4.append((int) (2097151 & j));
        sb4.append(", blocking tasks = ");
        sb4.append((int) ((4398044413952L & j) >> 21));
        sb4.append(", CPUs acquired = ");
        sb4.append(i7 - ((int) ((j & 9223367638808264704L) >> 42)));
        sb4.append("}]");
        return sb4.toString();
    }
}
