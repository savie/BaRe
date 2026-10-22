package defpackage;

import java.lang.reflect.Method;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mz2 extends lz2 implements qg2 {
    public final Executor c;

    public mz2(Executor executor) {
        Method method;
        this.c = executor;
        Method method2 = cq1.a;
        try {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = executor instanceof ScheduledThreadPoolExecutor ? (ScheduledThreadPoolExecutor) executor : null;
            if (scheduledThreadPoolExecutor != null && (method = cq1.a) != null) {
                method.invoke(scheduledThreadPoolExecutor, Boolean.TRUE);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // defpackage.qg2
    public final in2 b(long j, h48 h48Var, ox1 ox1Var) {
        Executor executor = this.c;
        ScheduledFuture<?> scheduledFutureSchedule = null;
        ScheduledExecutorService scheduledExecutorService = executor instanceof ScheduledExecutorService ? (ScheduledExecutorService) executor : null;
        if (scheduledExecutorService != null) {
            try {
                scheduledFutureSchedule = scheduledExecutorService.schedule(h48Var, j, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                CancellationException cancellationException = new CancellationException("The task was rejected");
                cancellationException.initCause(e);
                oh4 oh4Var = (oh4) ox1Var.get(nh4.b);
                if (oh4Var != null) {
                    oh4Var.cancel(cancellationException);
                }
            }
        }
        return scheduledFutureSchedule != null ? new hn2(scheduledFutureSchedule) : ge2.t.b(j, h48Var, ox1Var);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Executor executor = this.c;
        ExecutorService executorService = executor instanceof ExecutorService ? (ExecutorService) executor : null;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof mz2) && ((mz2) obj).c == this.c;
    }

    @Override // defpackage.qg2
    public final void g(long j, o21 o21Var) {
        Executor executor = this.c;
        ScheduledFuture<?> scheduledFutureSchedule = null;
        ScheduledExecutorService scheduledExecutorService = executor instanceof ScheduledExecutorService ? (ScheduledExecutorService) executor : null;
        if (scheduledExecutorService != null) {
            ue2 ue2Var = new ue2(this, o21Var, 4, false);
            ox1 ox1Var = o21Var.e;
            try {
                scheduledFutureSchedule = scheduledExecutorService.schedule(ue2Var, j, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                CancellationException cancellationException = new CancellationException("The task was rejected");
                cancellationException.initCause(e);
                oh4 oh4Var = (oh4) ox1Var.get(nh4.b);
                if (oh4Var != null) {
                    oh4Var.cancel(cancellationException);
                }
            }
        }
        if (scheduledFutureSchedule != null) {
            o21Var.x(new h21(scheduledFutureSchedule));
        } else {
            ge2.t.g(j, o21Var);
        }
    }

    public final int hashCode() {
        return System.identityHashCode(this.c);
    }

    @Override // defpackage.rx1
    public final void j(ox1 ox1Var, Runnable runnable) {
        try {
            this.c.execute(runnable);
        } catch (RejectedExecutionException e) {
            CancellationException cancellationException = new CancellationException("The task was rejected");
            cancellationException.initCause(e);
            oh4 oh4Var = (oh4) ox1Var.get(nh4.b);
            if (oh4Var != null) {
                oh4Var.cancel(cancellationException);
            }
            rf2 rf2Var = cn2.a;
            se2.c.j(ox1Var, runnable);
        }
    }

    @Override // defpackage.rx1
    public final String toString() {
        return this.c.toString();
    }
}
