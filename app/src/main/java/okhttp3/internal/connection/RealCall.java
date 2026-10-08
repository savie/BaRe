package okhttp3.internal.connection;

import defpackage.bn0;
import defpackage.c70;
import defpackage.el1;
import defpackage.l0;
import defpackage.pe4;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.Dispatcher;
import okhttp3.EventListener;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.cache.CacheInterceptor;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.http.BridgeInterceptor;
import okhttp3.internal.http.CallServerInterceptor;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RetryAndFollowUpInterceptor;
import okhttp3.internal.platform.Platform;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class RealCall implements Call, Cloneable, Lockable {
    public volatile boolean G;
    public volatile Exchange H;
    public final CopyOnWriteArrayList I;
    public final OkHttpClient a;
    public final Request b;
    public final RealConnectionPool c;
    public final EventListener d;
    public final RealCall$timeout$1 e;
    public final AtomicBoolean f;
    public Object k;
    public ExchangeFinder n;
    public RealConnection p;
    public boolean q;
    public Exchange r;
    public boolean t;
    public boolean x;
    public boolean y;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class AsyncCall implements Runnable {
        public final bn0 a;
        public volatile AtomicInteger b = new AtomicInteger(0);

        public AsyncCall(bn0 bn0Var) {
            this.a = bn0Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            Dispatcher dispatcher;
            String strConcat = "OkHttp ".concat(RealCall.this.b.a.h());
            RealCall realCall = RealCall.this;
            Thread threadCurrentThread = Thread.currentThread();
            String name = threadCurrentThread.getName();
            threadCurrentThread.setName(strConcat);
            try {
                realCall.e.h();
                boolean z = false;
                try {
                    try {
                        Response responseD = realCall.d();
                        try {
                            try {
                                bn0 bn0Var = this.a;
                                try {
                                    bn0Var.b(responseD);
                                } catch (Exception e) {
                                    bn0Var.a.completeExceptionally(e);
                                }
                                dispatcher = realCall.a.a;
                            } catch (Throwable th) {
                                th = th;
                                z = true;
                                realCall.cancel();
                                if (!z) {
                                    IOException iOException = new IOException("canceled due to " + th);
                                    iOException.initCause(th);
                                    this.a.a(realCall, iOException);
                                }
                                if (!(th instanceof InterruptedException)) {
                                    throw th;
                                }
                                Thread.currentThread().interrupt();
                                dispatcher = realCall.a.a;
                            }
                        } catch (IOException e2) {
                            e = e2;
                            z = true;
                            if (z) {
                                Platform platform = Platform.a;
                                Platform.a.j(4, "Callback failure for ".concat(RealCall.a(realCall)), e);
                            } else {
                                this.a.a(realCall, e);
                            }
                            dispatcher = realCall.a.a;
                        }
                    } catch (Throwable th2) {
                        Dispatcher dispatcher2 = realCall.a.a;
                        dispatcher2.getClass();
                        Dispatcher.c(dispatcher2, null, null, this, 3);
                        throw th2;
                    }
                } catch (IOException e3) {
                    e = e3;
                } catch (Throwable th3) {
                    th = th3;
                }
                dispatcher.getClass();
                Dispatcher.c(dispatcher, null, null, this, 3);
                threadCurrentThread.setName(name);
            } catch (Throwable th4) {
                threadCurrentThread.setName(name);
                throw th4;
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class CallReference extends WeakReference<RealCall> {
        public final Object a;

        public CallReference(RealCall realCall, Object obj) {
            super(realCall);
            this.a = obj;
        }
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [f48, okhttp3.internal.connection.RealCall$timeout$1] */
    public RealCall(OkHttpClient okHttpClient, Request request) {
        okHttpClient.getClass();
        request.getClass();
        this.a = okHttpClient;
        this.b = request;
        this.c = okHttpClient.C.a;
        okHttpClient.d.getClass();
        TimeZone timeZone = _UtilJvmKt.a;
        this.d = EventListener.a;
        ?? r3 = new c70() { // from class: okhttp3.internal.connection.RealCall$timeout$1
            @Override // defpackage.c70
            public final void k() {
                this.n.cancel();
            }
        };
        r3.g(0L, TimeUnit.MILLISECONDS);
        this.e = r3;
        this.f = new AtomicBoolean();
        this.y = true;
        this.I = new CopyOnWriteArrayList();
    }

    public static final String a(RealCall realCall) {
        StringBuilder sb = new StringBuilder();
        sb.append(realCall.G ? "canceled " : "");
        sb.append("call");
        sb.append(" to ");
        sb.append(realCall.b.a.h());
        return sb.toString();
    }

    public final IOException b(IOException iOException) {
        IOException interruptedIOException;
        Socket socketH;
        TimeZone timeZone = _UtilJvmKt.a;
        RealConnection realConnection = this.p;
        if (realConnection != null) {
            synchronized (realConnection) {
                socketH = h();
            }
            if (this.p == null) {
                if (socketH != null) {
                    _UtilJvmKt.c(socketH);
                }
                this.d.getClass();
            } else if (socketH != null) {
                l0.e("Check failed.");
                return null;
            }
        }
        if (!this.q && i()) {
            interruptedIOException = new InterruptedIOException("timeout");
            if (iOException != null) {
                interruptedIOException.initCause(iOException);
            }
        } else {
            interruptedIOException = iOException;
        }
        EventListener eventListener = this.d;
        if (iOException == null) {
            eventListener.getClass();
            return interruptedIOException;
        }
        interruptedIOException.getClass();
        eventListener.getClass();
        return interruptedIOException;
    }

    public final void c(boolean z) {
        Exchange exchange;
        synchronized (this) {
            if (!this.y) {
                throw new IllegalStateException("released");
            }
        }
        if (z && (exchange = this.H) != null) {
            exchange.d.cancel();
            exchange.a.e(exchange, true, true, null);
        }
        this.r = null;
    }

    @Override // okhttp3.Call
    public final void cancel() {
        if (this.G) {
            return;
        }
        this.G = true;
        Exchange exchange = this.H;
        if (exchange != null) {
            exchange.d.cancel();
        }
        Iterator it = this.I.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((RoutePlanner.Plan) it.next()).cancel();
        }
        this.d.getClass();
    }

    @Override // okhttp3.Call
    public final RealCall clone() {
        return new RealCall(this.a, this.b);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x007b  */
    public final Response d() {
        ArrayList arrayList = new ArrayList();
        el1.K0(this.a.b, arrayList);
        arrayList.add(new RetryAndFollowUpInterceptor(this.a));
        arrayList.add(new BridgeInterceptor(this.a.j));
        this.a.getClass();
        arrayList.add(new CacheInterceptor());
        arrayList.add(ConnectInterceptor.a);
        el1.K0(this.a.c, arrayList);
        arrayList.add(CallServerInterceptor.a);
        Request request = this.b;
        OkHttpClient okHttpClient = this.a;
        RealInterceptorChain realInterceptorChain = new RealInterceptorChain(this, arrayList, 0, null, request, okHttpClient.v, okHttpClient.w, okHttpClient.x);
        boolean z = false;
        try {
            try {
                Response responseB = realInterceptorChain.b(this.b);
                if (this.G) {
                    _UtilCommonKt.b(responseB);
                    throw new IOException("Canceled");
                }
                f(null);
                return responseB;
            } catch (IOException e) {
                z = true;
                IOException iOExceptionF = f(e);
                iOExceptionF.getClass();
                throw iOExceptionF;
            }
        } catch (Throwable th) {
            if (!z) {
                f(null);
            }
            throw th;
        }
        if (!z) {
            f(null);
        }
        throw th;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x001e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0020 A[Catch: all -> 0x0016, TryCatch #1 {all -> 0x0016, blocks: (B:8:0x0011, B:17:0x0020, B:19:0x0024, B:20:0x0026, B:22:0x002a, B:27:0x0033, B:29:0x0037, B:14:0x001a), top: B:53:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x0024 A[Catch: all -> 0x0016, TryCatch #1 {all -> 0x0016, blocks: (B:8:0x0011, B:17:0x0020, B:19:0x0024, B:20:0x0026, B:22:0x002a, B:27:0x0033, B:29:0x0037, B:14:0x001a), top: B:53:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0030  */
    public final IOException e(Exchange exchange, boolean z, boolean z2, IOException iOException) {
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        exchange.getClass();
        if (exchange.equals(this.H)) {
            synchronized (this) {
                z3 = false;
                if (z) {
                    try {
                        if (this.t) {
                            if (z) {
                                this.t = false;
                            }
                            if (z2) {
                                this.x = false;
                            }
                            z5 = this.t;
                            if (z5) {
                                z6 = false;
                            } else {
                                z6 = false;
                            }
                            if (!z5) {
                                z3 = true;
                            }
                            z4 = z3;
                            z3 = z6;
                        } else if (z2 || !this.x) {
                            z4 = false;
                        } else {
                            if (z) {
                                this.t = false;
                            }
                            if (z2) {
                                this.x = false;
                            }
                            z5 = this.t;
                            if (z5 || this.x) {
                                z6 = false;
                            } else {
                                z6 = true;
                            }
                            if (!z5 && !this.x && !this.y) {
                                z3 = true;
                            }
                            z4 = z3;
                            z3 = z6;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                } else {
                    if (z2) {
                    }
                    z4 = false;
                }
            }
            if (z3) {
                this.H = null;
                RealConnection realConnection = this.p;
                if (realConnection != null) {
                    synchronized (realConnection) {
                        realConnection.H++;
                    }
                }
            }
            if (z4) {
                return b(iOException);
            }
        }
        return iOException;
    }

    public final IOException f(IOException iOException) {
        boolean z;
        synchronized (this) {
            z = false;
            if (this.y) {
                this.y = false;
                if (!this.t && !this.x) {
                    z = true;
                }
            }
        }
        return z ? b(iOException) : iOException;
    }

    @Override // okhttp3.Call
    public final Response g() {
        if (!this.f.compareAndSet(false, true)) {
            l0.e("Already Executed");
            return null;
        }
        h();
        Platform platform = Platform.a;
        this.k = Platform.a.h();
        this.d.getClass();
        try {
            Dispatcher dispatcher = this.a.a;
            synchronized (dispatcher) {
                dispatcher.d.add(this);
            }
            Response responseD = d();
            Dispatcher dispatcher2 = this.a.a;
            dispatcher2.getClass();
            Dispatcher.c(dispatcher2, null, this, null, 5);
            return responseD;
        } catch (Throwable th) {
            Dispatcher dispatcher3 = this.a.a;
            dispatcher3.getClass();
            Dispatcher.c(dispatcher3, null, this, null, 5);
            throw th;
        }
    }

    public final Socket h() {
        RealConnection realConnection = this.p;
        realConnection.getClass();
        TimeZone timeZone = _UtilJvmKt.a;
        ArrayList arrayList = realConnection.K;
        Iterator it = arrayList.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            if (pe4.d(((Reference) it.next()).get(), this)) {
                break;
            }
            i++;
        }
        if (i == -1) {
            l0.e("Check failed.");
            return null;
        }
        arrayList.remove(i);
        this.p = null;
        if (!arrayList.isEmpty()) {
            return null;
        }
        realConnection.L = System.nanoTime();
        RealConnectionPool realConnectionPool = this.c;
        ConcurrentLinkedQueue concurrentLinkedQueue = realConnectionPool.g;
        TimeZone timeZone2 = _UtilJvmKt.a;
        if (!realConnection.x && realConnectionPool.a != 0) {
            realConnectionPool.e.d(realConnectionPool.f, 0L);
            return null;
        }
        realConnection.x = true;
        concurrentLinkedQueue.remove(realConnection);
        if (concurrentLinkedQueue.isEmpty()) {
            realConnectionPool.e.a();
        }
        Address address = realConnection.d.a;
        address.getClass();
        RealConnectionPool.AddressState addressState = (RealConnectionPool.AddressState) realConnectionPool.d.get(address);
        if (addressState == null) {
            return realConnection.f;
        }
        realConnectionPool.b(addressState);
        throw null;
    }
}
