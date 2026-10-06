package okhttp3;

import defpackage.el1;
import defpackage.pe4;
import defpackage.uz8;
import java.io.InterruptedIOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RealCall;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Dispatcher {
    public ThreadPoolExecutor a;
    public final ArrayDeque b = new ArrayDeque();
    public final ArrayDeque c = new ArrayDeque();
    public final ArrayDeque d = new ArrayDeque();

    public static void c(Dispatcher dispatcher, RealCall.AsyncCall asyncCall, RealCall realCall, RealCall.AsyncCall asyncCall2, int i) {
        Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects;
        if ((i & 1) != 0) {
            asyncCall = null;
        }
        if ((i & 2) != 0) {
            realCall = null;
        }
        if ((i & 4) != 0) {
            asyncCall2 = null;
        }
        dispatcher.getClass();
        TimeZone timeZone = _UtilJvmKt.a;
        boolean zIsShutdown = ((ThreadPoolExecutor) dispatcher.a()).isShutdown();
        synchronized (dispatcher) {
            if (realCall != null) {
                try {
                    if (!dispatcher.d.remove(realCall)) {
                        throw new IllegalStateException("Call wasn't in-flight!");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (asyncCall2 != null) {
                asyncCall2.b.decrementAndGet();
                if (!dispatcher.c.remove(asyncCall2)) {
                    throw new IllegalStateException("Call wasn't in-flight!");
                }
            }
            if (asyncCall != null) {
                dispatcher.b.add(asyncCall);
                RealCall.AsyncCall asyncCallB = dispatcher.b(RealCall.this.b.a.d);
                if (asyncCallB != null) {
                    asyncCall.b = asyncCallB.b;
                }
            }
            if ((realCall != null || asyncCall2 != null) && (zIsShutdown || dispatcher.c.isEmpty())) {
                dispatcher.d.isEmpty();
            }
            if (zIsShutdown) {
                List listV1 = el1.v1(dispatcher.b);
                dispatcher.b.clear();
                dispatcher$promoteAndExecute$Effects = new Dispatcher$promoteAndExecute$Effects(listV1);
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = dispatcher.b.iterator();
                it.getClass();
                while (it.hasNext()) {
                    RealCall.AsyncCall asyncCall3 = (RealCall.AsyncCall) it.next();
                    if (dispatcher.c.size() >= 64) {
                        break;
                    }
                    if (asyncCall3.b.get() < 5) {
                        it.remove();
                        asyncCall3.b.incrementAndGet();
                        arrayList.add(asyncCall3);
                        dispatcher.c.add(asyncCall3);
                    }
                }
                dispatcher$promoteAndExecute$Effects = new Dispatcher$promoteAndExecute$Effects(arrayList);
            }
        }
        int size = dispatcher$promoteAndExecute$Effects.a.size();
        boolean z = true;
        for (int i2 = 0; i2 < size; i2++) {
            RealCall.AsyncCall asyncCall4 = (RealCall.AsyncCall) dispatcher$promoteAndExecute$Effects.a.get(i2);
            if (asyncCall4 == asyncCall) {
                z = false;
            } else {
                RealCall.this.d.getClass();
            }
            if (zIsShutdown) {
                asyncCall4.getClass();
                InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                interruptedIOException.initCause(null);
                RealCall realCall2 = RealCall.this;
                realCall2.f(interruptedIOException);
                asyncCall4.a.a(realCall2, interruptedIOException);
            } else {
                ExecutorService executorServiceA = dispatcher.a();
                asyncCall4.getClass();
                RealCall realCall3 = RealCall.this;
                realCall3.a.a.getClass();
                try {
                    try {
                        ((ThreadPoolExecutor) executorServiceA).execute(asyncCall4);
                    } catch (Throwable th2) {
                        Dispatcher dispatcher2 = realCall3.a.a;
                        dispatcher2.getClass();
                        c(dispatcher2, null, null, asyncCall4, 3);
                        throw th2;
                    }
                } catch (RejectedExecutionException e) {
                    InterruptedIOException interruptedIOException2 = new InterruptedIOException("executor rejected");
                    interruptedIOException2.initCause(e);
                    RealCall realCall4 = RealCall.this;
                    realCall4.f(interruptedIOException2);
                    asyncCall4.a.a(realCall4, interruptedIOException2);
                    Dispatcher dispatcher3 = realCall3.a.a;
                    dispatcher3.getClass();
                    c(dispatcher3, null, null, asyncCall4, 3);
                }
            }
        }
        if (!z || asyncCall == null) {
            return;
        }
        RealCall.this.d.getClass();
    }

    public final synchronized ExecutorService a() {
        ThreadPoolExecutor threadPoolExecutor;
        try {
            if (this.a == null) {
                this.a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new uz8(_UtilJvmKt.b + " Dispatcher", false));
            }
            threadPoolExecutor = this.a;
            threadPoolExecutor.getClass();
        } catch (Throwable th) {
            throw th;
        }
        return threadPoolExecutor;
    }

    public final RealCall.AsyncCall b(String str) {
        Iterator it = this.c.iterator();
        it.getClass();
        while (it.hasNext()) {
            RealCall.AsyncCall asyncCall = (RealCall.AsyncCall) it.next();
            if (pe4.d(RealCall.this.b.a.d, str)) {
                return asyncCall;
            }
        }
        Iterator it2 = this.b.iterator();
        it2.getClass();
        while (it2.hasNext()) {
            RealCall.AsyncCall asyncCall2 = (RealCall.AsyncCall) it2.next();
            if (pe4.d(RealCall.this.b.a.d, str)) {
                return asyncCall2;
            }
        }
        return null;
    }
}
