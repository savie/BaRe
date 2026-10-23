package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ux1 extends Thread {
    public static final /* synthetic */ AtomicIntegerFieldUpdater p = AtomicIntegerFieldUpdater.newUpdater(ux1.class, "workerCtl$volatile");
    public final jw8 a;
    public final lh6 b;
    public vx1 c;
    public long d;
    public long e;
    public int f;
    private volatile int indexInArray;
    public boolean k;
    public final /* synthetic */ wx1 n;
    private volatile Object nextParkedWorker;
    private volatile /* synthetic */ int workerCtl$volatile;

    public ux1(wx1 wx1Var, int i) {
        this.n = wx1Var;
        setDaemon(true);
        setContextClassLoader(wx1.class.getClassLoader());
        this.a = new jw8();
        this.b = new lh6();
        this.c = vx1.d;
        this.nextParkedWorker = wx1.r;
        int iNanoTime = (int) System.nanoTime();
        this.f = iNanoTime == 0 ? 42 : iNanoTime;
        f(i);
    }

    public final tx7 a(boolean z) {
        tx7 tx7VarE;
        tx7 tx7VarE2;
        long j;
        vx1 vx1Var = this.c;
        wx1 wx1Var = this.n;
        jw8 jw8Var = this.a;
        vx1 vx1Var2 = vx1.a;
        if (vx1Var != vx1Var2) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = wx1.p;
            do {
                j = atomicLongFieldUpdater.get(wx1Var);
                if (((int) ((9223367638808264704L & j) >> 42)) == 0) {
                    tx7 tx7VarF = jw8Var.f();
                    return (tx7VarF == null && (tx7VarF = (tx7) wx1Var.f.d()) == null) ? i(1) : tx7VarF;
                }
            } while (!wx1.p.compareAndSet(wx1Var, j, j - 4398046511104L));
            this.c = vx1Var2;
        }
        if (z) {
            boolean z2 = d(wx1Var.a * 2) == 0;
            if (z2 && (tx7VarE2 = e()) != null) {
                return tx7VarE2;
            }
            tx7 tx7VarD = jw8Var.d();
            if (tx7VarD != null) {
                return tx7VarD;
            }
            if (!z2 && (tx7VarE = e()) != null) {
                return tx7VarE;
            }
        } else {
            tx7 tx7VarE3 = e();
            if (tx7VarE3 != null) {
                return tx7VarE3;
            }
        }
        return i(3);
    }

    public final int b() {
        return this.indexInArray;
    }

    public final Object c() {
        return this.nextParkedWorker;
    }

    public final int d(int i) {
        int i2 = this.f;
        int i3 = i2 ^ (i2 << 13);
        int i4 = i3 ^ (i3 >> 17);
        int i5 = i4 ^ (i4 << 5);
        this.f = i5;
        int i6 = i - 1;
        return (i6 & i) == 0 ? i6 & i5 : (Integer.MAX_VALUE & i5) % i;
    }

    public final tx7 e() {
        int iD = d(2);
        wx1 wx1Var = this.n;
        vy3 vy3Var = wx1Var.f;
        vy3 vy3Var2 = wx1Var.e;
        if (iD == 0) {
            tx7 tx7Var = (tx7) vy3Var2.d();
            return tx7Var != null ? tx7Var : (tx7) vy3Var.d();
        }
        tx7 tx7Var2 = (tx7) vy3Var.d();
        return tx7Var2 != null ? tx7Var2 : (tx7) vy3Var2.d();
    }

    public final void f(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.n.d);
        sb.append("-worker-");
        sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
        setName(sb.toString());
        this.indexInArray = i;
    }

    public final void g(Object obj) {
        this.nextParkedWorker = obj;
    }

    public final boolean h(vx1 vx1Var) {
        vx1 vx1Var2 = this.c;
        boolean z = vx1Var2 == vx1.a;
        if (z) {
            wx1.p.addAndGet(this.n, 4398046511104L);
        }
        if (vx1Var2 != vx1Var) {
            this.c = vx1Var;
        }
        return z;
    }

    public final tx7 i(int i) {
        tx7 tx7VarG;
        long jH;
        AtomicLongFieldUpdater atomicLongFieldUpdater = wx1.p;
        wx1 wx1Var = this.n;
        int i2 = (int) (atomicLongFieldUpdater.get(wx1Var) & 2097151);
        if (i2 < 2) {
            return null;
        }
        int iD = d(i2);
        long jMin = Long.MAX_VALUE;
        for (int i3 = 0; i3 < i2; i3++) {
            iD++;
            if (iD > i2) {
                iD = 1;
            }
            ux1 ux1Var = (ux1) wx1Var.k.b(iD);
            if (ux1Var != null && ux1Var != this) {
                jw8 jw8Var = ux1Var.a;
                jw8Var.getClass();
                if (i != 3) {
                    boolean z = i == 1;
                    int i4 = jw8.d.get(jw8Var);
                    int i5 = jw8.c.get(jw8Var);
                    while (true) {
                        if (i4 == i5 || (z && jw8.e.get(jw8Var) == 0)) {
                            tx7VarG = null;
                            break;
                        }
                        int i6 = i4 + 1;
                        tx7VarG = jw8Var.g(i4, z);
                        if (tx7VarG != null) {
                            break;
                        }
                        i4 = i6;
                    }
                } else {
                    tx7VarG = jw8Var.e();
                }
                lh6 lh6Var = this.b;
                if (tx7VarG != null) {
                    lh6Var.a = tx7VarG;
                    jH = -1;
                } else {
                    jH = jw8Var.h(i, lh6Var);
                }
                if (jH == -1) {
                    tx7 tx7Var = (tx7) lh6Var.a;
                    lh6Var.a = null;
                    return tx7Var;
                }
                if (jH > 0) {
                    jMin = Math.min(jMin, jH);
                }
            }
        }
        if (jMin == Long.MAX_VALUE) {
            jMin = 0;
        }
        this.e = jMin;
        return null;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        long j;
        loop0: while (true) {
            boolean z = false;
            while (true) {
                if (wx1.q.get(this.n) != 1) {
                    vx1 vx1Var = this.c;
                    vx1 vx1Var2 = vx1.e;
                    if (vx1Var == vx1Var2) {
                        break loop0;
                    }
                    tx7 tx7VarA = a(this.k);
                    if (tx7VarA != null) {
                        this.e = 0L;
                        wx1 wx1Var = this.n;
                        this.d = 0L;
                        if (this.c == vx1.c) {
                            this.c = vx1.b;
                        }
                        if (!tx7VarA.b) {
                            try {
                                tx7VarA.run();
                                break;
                            } catch (Throwable th) {
                                Thread threadCurrentThread = Thread.currentThread();
                                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
                                break;
                            }
                        }
                        if (h(vx1.b) && !wx1Var.j() && !wx1Var.h(wx1.p.get(wx1Var))) {
                            wx1Var.j();
                        }
                        try {
                            tx7VarA.run();
                        } catch (Throwable th2) {
                            Thread threadCurrentThread2 = Thread.currentThread();
                            threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th2);
                        }
                        wx1.p.addAndGet(wx1Var, -2097152L);
                        if (this.c == vx1Var2) {
                            break;
                        }
                        this.c = vx1.d;
                        break;
                    }
                    this.k = false;
                    if (this.e == 0) {
                        Object obj = this.nextParkedWorker;
                        du9 du9Var = wx1.r;
                        if (obj != du9Var) {
                            p.set(this, -1);
                            while (this.nextParkedWorker != wx1.r) {
                                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = p;
                                if (atomicIntegerFieldUpdater.get(this) != -1) {
                                    break;
                                }
                                wx1 wx1Var2 = this.n;
                                AtomicIntegerFieldUpdater atomicIntegerFieldUpdater2 = wx1.q;
                                if (atomicIntegerFieldUpdater2.get(wx1Var2) == 1) {
                                    break;
                                }
                                vx1 vx1Var3 = this.c;
                                vx1 vx1Var4 = vx1.e;
                                if (vx1Var3 == vx1Var4) {
                                    break;
                                }
                                h(vx1.c);
                                Thread.interrupted();
                                if (this.d == 0) {
                                    j = 2097151;
                                    this.d = System.nanoTime() + this.n.c;
                                } else {
                                    j = 2097151;
                                }
                                LockSupport.parkNanos(this.n.c);
                                if (System.nanoTime() - this.d >= 0) {
                                    this.d = 0L;
                                    wx1 wx1Var3 = this.n;
                                    synchronized (wx1Var3.k) {
                                        try {
                                            if (!(atomicIntegerFieldUpdater2.get(wx1Var3) == 1)) {
                                                AtomicLongFieldUpdater atomicLongFieldUpdater = wx1.p;
                                                if (((int) (atomicLongFieldUpdater.get(wx1Var3) & j)) > wx1Var3.a && atomicIntegerFieldUpdater.compareAndSet(this, -1, 1)) {
                                                    int i = this.indexInArray;
                                                    f(0);
                                                    wx1Var3.g(this, i, 0);
                                                    int andDecrement = (int) (atomicLongFieldUpdater.getAndDecrement(wx1Var3) & j);
                                                    if (andDecrement != i) {
                                                        Object objB = wx1Var3.k.b(andDecrement);
                                                        objB.getClass();
                                                        ux1 ux1Var = (ux1) objB;
                                                        wx1Var3.k.c(i, ux1Var);
                                                        ux1Var.f(i);
                                                        wx1Var3.g(ux1Var, andDecrement, i);
                                                    }
                                                    wx1Var3.k.c(andDecrement, null);
                                                    this.c = vx1Var4;
                                                }
                                            }
                                        } catch (Throwable th3) {
                                            throw th3;
                                        }
                                    }
                                }
                            }
                        } else {
                            wx1 wx1Var4 = this.n;
                            if (this.nextParkedWorker == du9Var) {
                                AtomicLongFieldUpdater atomicLongFieldUpdater2 = wx1.n;
                                while (true) {
                                    long j2 = atomicLongFieldUpdater2.get(wx1Var4);
                                    int i2 = this.indexInArray;
                                    this.nextParkedWorker = wx1Var4.k.b((int) (j2 & 2097151));
                                    wx1 wx1Var5 = wx1Var4;
                                    if (wx1.n.compareAndSet(wx1Var5, j2, ((j2 + 2097152) & (-2097152)) | ((long) i2))) {
                                        break;
                                    } else {
                                        wx1Var4 = wx1Var5;
                                    }
                                }
                            }
                        }
                    } else {
                        if (z) {
                            h(vx1.c);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.e);
                            this.e = 0L;
                            break;
                        }
                        z = true;
                    }
                } else {
                    break loop0;
                }
            }
        }
        h(vx1.e);
    }
}
