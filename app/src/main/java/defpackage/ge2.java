package defpackage;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ge2 extends zy2 implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;
    public static final ge2 t;
    public static final long x;

    static {
        Long l;
        ge2 ge2Var = new ge2();
        t = ge2Var;
        ge2Var.r(false);
        try {
            l = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l = 1000L;
        }
        x = TimeUnit.MILLISECONDS.toNanos(l.longValue());
    }

    @Override // defpackage.zy2
    public final void D(Runnable runnable) {
        if (debugStatus == 4) {
            throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
        }
        super.D(runnable);
    }

    @Override // defpackage.zy2
    public final Thread S() {
        Thread thread;
        Thread thread2 = _thread;
        if (thread2 != null) {
            return thread2;
        }
        synchronized (this) {
            thread = _thread;
            if (thread == null) {
                thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                _thread = thread;
                thread.setContextClassLoader(t.getClass().getClassLoader());
                thread.setDaemon(true);
                thread.start();
            }
        }
        return thread;
    }

    @Override // defpackage.zy2
    public final void W(long j, xy2 xy2Var) {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    @Override // defpackage.qg2
    public final in2 b(long j, h48 h48Var, ox1 ox1Var) {
        long j2 = 0;
        if (j > 0) {
            j2 = j >= 9223372036854L ? Long.MAX_VALUE : 1000000 * j;
        }
        if (j2 >= 4611686018427387903L) {
            return ao5.a;
        }
        long jNanoTime = System.nanoTime();
        wy2 wy2Var = new wy2(j2 + jNanoTime, h48Var);
        b0(jNanoTime, wy2Var);
        return wy2Var;
    }

    public final synchronized void h0() {
        int i = debugStatus;
        if (i == 2 || i == 3) {
            debugStatus = 3;
            Z();
            notifyAll();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        r28.a.set(this);
        try {
            synchronized (this) {
                int i = debugStatus;
                if (i == 2 || i == 3) {
                    _thread = null;
                    h0();
                    if (U()) {
                        return;
                    }
                    S();
                    return;
                }
                debugStatus = 1;
                notifyAll();
                long j = Long.MAX_VALUE;
                while (true) {
                    Thread.interrupted();
                    long jU = u();
                    if (jU == Long.MAX_VALUE) {
                        long jNanoTime = System.nanoTime();
                        if (j == Long.MAX_VALUE) {
                            j = x + jNanoTime;
                        }
                        long j2 = j - jNanoTime;
                        if (j2 <= 0) {
                            _thread = null;
                            h0();
                            if (U()) {
                                return;
                            }
                            S();
                            return;
                        }
                        if (jU > j2) {
                            jU = j2;
                        }
                    } else {
                        j = Long.MAX_VALUE;
                    }
                    if (jU > 0) {
                        int i2 = debugStatus;
                        if (i2 == 2 || i2 == 3) {
                            _thread = null;
                            h0();
                            if (U()) {
                                return;
                            }
                            S();
                            return;
                        }
                        LockSupport.parkNanos(this, jU);
                    }
                }
            }
        } catch (Throwable th) {
            _thread = null;
            h0();
            if (!U()) {
                S();
            }
            throw th;
        }
    }

    @Override // defpackage.zy2, defpackage.uy2
    public final void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }

    @Override // defpackage.rx1
    public final String toString() {
        return "DefaultExecutor";
    }
}
