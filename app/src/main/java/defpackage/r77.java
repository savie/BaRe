package defpackage;

import com.topjohnwu.superuser.Shell;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r77 extends AbstractExecutorService implements Callable, AutoCloseable {
    public boolean a;
    public ArrayDeque b;
    public FutureTask c;

    @Override // java.util.concurrent.ExecutorService
    public final synchronized boolean awaitTermination(long j, TimeUnit timeUnit) {
        FutureTask futureTask = this.c;
        if (futureTask == null) {
            return true;
        }
        try {
            futureTask.get(j, timeUnit);
        } catch (ExecutionException unused) {
        } catch (TimeoutException unused2) {
            return false;
        }
        return true;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Runnable runnable;
        while (true) {
            synchronized (this) {
                try {
                    runnable = (Runnable) this.b.poll();
                    if (runnable == null) {
                        this.c = null;
                        return null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            runnable.run();
        }
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        boolean zIsTerminated;
        if (this == ForkJoinPool.commonPool() || (zIsTerminated = isTerminated())) {
            return;
        }
        shutdown();
        boolean z = false;
        while (!zIsTerminated) {
            try {
                zIsTerminated = awaitTermination(1L, TimeUnit.DAYS);
            } catch (InterruptedException unused) {
                if (!z) {
                    shutdownNow();
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    @Override // java.util.concurrent.Executor
    public final synchronized void execute(Runnable runnable) {
        if (this.a) {
            throw new RejectedExecutionException("Task " + runnable.toString() + " rejected from " + toString());
        }
        this.b.offer(runnable);
        if (this.c == null) {
            FutureTask futureTask = new FutureTask(this);
            this.c = futureTask;
            Shell.EXECUTOR.execute(futureTask);
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public final synchronized boolean isShutdown() {
        return this.a;
    }

    @Override // java.util.concurrent.ExecutorService
    public final synchronized boolean isTerminated() {
        return this.a && this.c == null;
    }

    @Override // java.util.concurrent.ExecutorService
    public final synchronized void shutdown() {
        this.a = true;
        this.b.clear();
    }

    @Override // java.util.concurrent.ExecutorService
    public final synchronized List shutdownNow() {
        ArrayList arrayList;
        this.a = true;
        FutureTask futureTask = this.c;
        if (futureTask != null) {
            futureTask.cancel(true);
        }
        try {
            arrayList = new ArrayList(this.b);
            this.b.clear();
        } catch (Throwable th) {
            this.b.clear();
            throw th;
        }
        return arrayList;
    }
}
