package defpackage;

import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bh2 implements ScheduledExecutorService, AutoCloseable {
    public final ExecutorService a;
    public final ScheduledExecutorService b;

    public bh2(ExecutorService executorService, ScheduledExecutorService scheduledExecutorService) {
        this.a = executorService;
        this.b = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j, TimeUnit timeUnit) {
        return this.a.awaitTermination(j, timeUnit);
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        if (this == ForkJoinPool.commonPool() || isTerminated()) {
            return;
        }
        shutdown();
        throw null;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.a.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public final List invokeAll(Collection collection) {
        return this.a.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public final Object invokeAny(Collection collection) {
        return this.a.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return this.a.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return this.a.isTerminated();
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture schedule(final Runnable runnable, final long j, final TimeUnit timeUnit) {
        return new dh2(new ch2() { // from class: tg2
            @Override // defpackage.ch2
            public final ScheduledFuture a(final ln5 ln5Var) {
                final bh2 bh2Var = this.a;
                ScheduledExecutorService scheduledExecutorService = bh2Var.b;
                final Runnable runnable2 = runnable;
                return scheduledExecutorService.schedule(new Runnable() { // from class: yg2
                    @Override // java.lang.Runnable
                    public final void run() {
                        bh2Var.a.execute(new ro1(3, runnable2, ln5Var));
                    }
                }, j, timeUnit);
            }
        });
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture scheduleAtFixedRate(final Runnable runnable, final long j, final long j2, final TimeUnit timeUnit) {
        return new dh2(new ch2() { // from class: ug2
            @Override // defpackage.ch2
            public final ScheduledFuture a(final ln5 ln5Var) {
                final bh2 bh2Var = this.a;
                ScheduledExecutorService scheduledExecutorService = bh2Var.b;
                final Runnable runnable2 = runnable;
                return scheduledExecutorService.scheduleAtFixedRate(new Runnable() { // from class: xg2
                    @Override // java.lang.Runnable
                    public final void run() {
                        bh2Var.a.execute(new ty1(6, runnable2, ln5Var));
                    }
                }, j, j2, timeUnit);
            }
        });
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture scheduleWithFixedDelay(final Runnable runnable, final long j, final long j2, final TimeUnit timeUnit) {
        return new dh2(new ch2() { // from class: vg2
            @Override // defpackage.ch2
            public final ScheduledFuture a(final ln5 ln5Var) {
                final bh2 bh2Var = this.a;
                ScheduledExecutorService scheduledExecutorService = bh2Var.b;
                final Runnable runnable2 = runnable;
                return scheduledExecutorService.scheduleWithFixedDelay(new Runnable() { // from class: ah2
                    @Override // java.lang.Runnable
                    public final void run() {
                        bh2Var.a.execute(new xu1(runnable2, ln5Var, 8));
                    }
                }, j, j2, timeUnit);
            }
        });
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        throw new UnsupportedOperationException("Shutting down is not allowed.");
    }

    @Override // java.util.concurrent.ExecutorService
    public final List shutdownNow() {
        throw new UnsupportedOperationException("Shutting down is not allowed.");
    }

    @Override // java.util.concurrent.ExecutorService
    public final Future submit(Callable callable) {
        return this.a.submit(callable);
    }

    @Override // java.util.concurrent.ExecutorService
    public final List invokeAll(Collection collection, long j, TimeUnit timeUnit) {
        return this.a.invokeAll(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final Object invokeAny(Collection collection, long j, TimeUnit timeUnit) {
        return this.a.invokeAny(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final Future submit(Runnable runnable, Object obj) {
        return this.a.submit(runnable, obj);
    }

    @Override // java.util.concurrent.ExecutorService
    public final Future submit(Runnable runnable) {
        return this.a.submit(runnable);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final ScheduledFuture schedule(final Callable callable, final long j, final TimeUnit timeUnit) {
        return new dh2(new ch2() { // from class: wg2
            @Override // defpackage.ch2
            public final ScheduledFuture a(final ln5 ln5Var) {
                final bh2 bh2Var = this.a;
                ScheduledExecutorService scheduledExecutorService = bh2Var.b;
                final Callable callable2 = callable;
                return scheduledExecutorService.schedule(new Callable() { // from class: zg2
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return bh2Var.a.submit(new z22(5, callable2, ln5Var));
                    }
                }, j, timeUnit);
            }
        });
    }
}
