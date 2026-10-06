package okhttp3.internal.connection;

import defpackage.yc9;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskRunner;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class FastFallbackExchangeFinder implements ExchangeFinder {
    public final RoutePlanner a;
    public final TaskRunner b;
    public long c;
    public final CopyOnWriteArrayList d;
    public final BlockingQueue e;

    public FastFallbackExchangeFinder(RoutePlanner routePlanner, TaskRunner taskRunner) {
        taskRunner.getClass();
        this.a = routePlanner;
        this.b = taskRunner;
        this.c = Long.MIN_VALUE;
        this.d = new CopyOnWriteArrayList();
        this.e = new LinkedBlockingDeque();
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public final RealConnection a() throws IOException {
        RoutePlanner.ConnectResult connectResultD;
        CopyOnWriteArrayList copyOnWriteArrayList = this.d;
        IOException iOException = null;
        while (true) {
            try {
                boolean zIsEmpty = copyOnWriteArrayList.isEmpty();
                RoutePlanner routePlanner = this.a;
                if (zIsEmpty && !routePlanner.b(null)) {
                    c();
                    iOException.getClass();
                    throw iOException;
                }
                if (routePlanner.a()) {
                    throw new IOException("Canceled");
                }
                TaskRunner.RealBackend realBackend = this.b.a;
                long jNanoTime = System.nanoTime();
                long j = this.c - jNanoTime;
                if (copyOnWriteArrayList.isEmpty() || j <= 0) {
                    connectResultD = d();
                    j = 250000000;
                    this.c = jNanoTime + 250000000;
                } else {
                    connectResultD = null;
                }
                if (connectResultD == null) {
                    TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                    if (copyOnWriteArrayList.isEmpty() || (connectResultD = (RoutePlanner.ConnectResult) this.e.poll(j, timeUnit)) == null) {
                        connectResultD = null;
                    } else {
                        copyOnWriteArrayList.remove(connectResultD.a);
                    }
                    if (connectResultD == null) {
                    }
                }
                RoutePlanner.Plan plan = connectResultD.a;
                boolean z = false;
                if (connectResultD.b == null && connectResultD.c == null) {
                    c();
                    if (!plan.d()) {
                        connectResultD = plan.g();
                    }
                    if (connectResultD.b == null && connectResultD.c == null) {
                        z = true;
                    }
                    if (z) {
                        RealConnection realConnectionC = connectResultD.a.c();
                        c();
                        return realConnectionC;
                    }
                }
                Throwable th = connectResultD.c;
                if (th != null) {
                    if (!(th instanceof IOException)) {
                        throw th;
                    }
                    if (iOException == null) {
                        iOException = (IOException) th;
                    } else {
                        yc9.a(iOException, th);
                    }
                }
                RoutePlanner.Plan plan2 = connectResultD.b;
                if (plan2 != null) {
                    routePlanner.e().addFirst(plan2);
                }
            } catch (Throwable th2) {
                c();
                throw th2;
            }
        }
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public final RoutePlanner b() {
        return this.a;
    }

    public final void c() {
        CopyOnWriteArrayList copyOnWriteArrayList = this.d;
        Iterator it = copyOnWriteArrayList.iterator();
        it.getClass();
        while (it.hasNext()) {
            RoutePlanner.Plan plan = (RoutePlanner.Plan) it.next();
            plan.cancel();
            RoutePlanner.Plan planA = plan.a();
            if (planA != null) {
                this.a.e().addLast(planA);
            }
        }
        copyOnWriteArrayList.clear();
    }

    public final RoutePlanner.ConnectResult d() {
        final RoutePlanner.Plan failedPlan;
        RoutePlanner routePlanner = this.a;
        if (routePlanner.b(null)) {
            try {
                failedPlan = routePlanner.f();
            } catch (Throwable th) {
                failedPlan = new FailedPlan(th);
            }
            if (failedPlan.d()) {
                return new RoutePlanner.ConnectResult(failedPlan, null, null, 6);
            }
            if (failedPlan instanceof FailedPlan) {
                return ((FailedPlan) failedPlan).a;
            }
            this.d.add(failedPlan);
            final String str = _UtilJvmKt.b + " connect " + routePlanner.c().h.h();
            this.b.d().d(new Task(str) { // from class: okhttp3.internal.connection.FastFallbackExchangeFinder$launchTcpConnect$1
                @Override // okhttp3.internal.concurrent.Task
                public final long a() throws InterruptedException {
                    RoutePlanner.ConnectResult connectResult;
                    RoutePlanner.Plan plan = failedPlan;
                    try {
                        connectResult = plan.e();
                    } catch (Throwable th2) {
                        connectResult = new RoutePlanner.ConnectResult(plan, null, th2, 2);
                    }
                    FastFallbackExchangeFinder fastFallbackExchangeFinder = this;
                    if (!fastFallbackExchangeFinder.d.contains(plan)) {
                        return -1L;
                    }
                    fastFallbackExchangeFinder.e.put(connectResult);
                    return -1L;
                }
            }, 0L);
        }
        return null;
    }
}
