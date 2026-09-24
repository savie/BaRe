package okhttp3.internal.http2;

import defpackage.be8;
import defpackage.bt3;
import defpackage.d6;
import defpackage.dj7;
import defpackage.nw0;
import defpackage.pe4;
import defpackage.yq;
import defpackage.z64;
import defpackage.zw0;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.BufferedSocket;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.http2.flowcontrol.WindowCounter;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Http2Connection implements Closeable, Lockable {
    public static final Settings S;
    public long G;
    public long H;
    public final FlowControlListener I;
    public final Settings J;
    public Settings K;
    public final WindowCounter L;
    public long M;
    public long N;
    public final BufferedSocket O;
    public final Http2Writer P;
    public final ReaderRunnable Q;
    public final LinkedHashSet R;
    public final Listener a;
    public final LinkedHashMap b = new LinkedHashMap();
    public final String c;
    public int d;
    public int e;
    public boolean f;
    public final TaskRunner k;
    public final TaskQueue n;
    public final TaskQueue p;
    public final TaskQueue q;
    public final PushObserver r;
    public long t;
    public long x;
    public long y;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Builder {
        public final TaskRunner a;
        public BufferedSocket b;
        public String c;
        public Listener d;
        public final PushObserver e;
        public int f;
        public FlowControlListener g;

        public Builder(TaskRunner taskRunner) {
            taskRunner.getClass();
            this.a = taskRunner;
            this.d = Listener.a;
            this.e = PushObserver.a;
            this.g = FlowControlListener.None.a;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static abstract class Listener {
        public static final Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1 a = new Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1();

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static final class Companion {
        }

        public void a(Http2Connection http2Connection, Settings settings) {
            settings.getClass();
        }

        public abstract void c(Http2Stream http2Stream);
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class ReaderRunnable implements Http2Reader.Handler, bt3 {
        public final Http2Reader a;

        public ReaderRunnable(Http2Reader http2Reader) {
            this.a = http2Reader;
        }

        public final void b(final boolean z, final int i, zw0 zw0Var, final int i2) throws EOFException {
            boolean z2;
            boolean z3;
            zw0Var.getClass();
            final Http2Connection http2Connection = Http2Connection.this;
            Settings settings = Http2Connection.S;
            if (i != 0 && (i & 1) == 0) {
                final nw0 nw0Var = new nw0();
                long j = i2;
                zw0Var.j0(j);
                zw0Var.H(nw0Var, j);
                TaskQueue.c(http2Connection.p, http2Connection.c + '[' + i + "] onData", new bt3(i, nw0Var, i2, z) { // from class: okhttp3.internal.http2.a
                    public final /* synthetic */ int b;
                    public final /* synthetic */ nw0 c;
                    public final /* synthetic */ int d;

                    @Override // defpackage.bt3
                    public final Object invoke() {
                        Http2Connection http2Connection2 = this.a;
                        int i3 = this.b;
                        nw0 nw0Var2 = this.c;
                        int i4 = this.d;
                        Settings settings2 = Http2Connection.S;
                        try {
                            ((PushObserver.Companion.PushObserverCancel) http2Connection2.r).getClass();
                            nw0Var2.skip(i4);
                            http2Connection2.P.n(i3, ErrorCode.CANCEL);
                            synchronized (http2Connection2) {
                                http2Connection2.R.remove(Integer.valueOf(i3));
                            }
                        } catch (IOException unused) {
                        }
                        return be8.a;
                    }
                }, 6);
                return;
            }
            Http2Stream http2StreamB = http2Connection.b(i);
            if (http2StreamB == null) {
                Http2Connection.this.n(i, ErrorCode.PROTOCOL_ERROR);
                long j2 = i2;
                Http2Connection.this.j(j2);
                zw0Var.skip(j2);
                return;
            }
            TimeZone timeZone = _UtilJvmKt.a;
            Http2Stream.FramingSource framingSource = http2StreamB.n;
            long j3 = i2;
            framingSource.getClass();
            long j4 = j3;
            while (true) {
                Http2Stream http2Stream = Http2Stream.this;
                if (j4 <= 0) {
                    TimeZone timeZone2 = _UtilJvmKt.a;
                    http2Stream.b.j(j3);
                    Http2Stream http2Stream2 = Http2Stream.this;
                    http2Stream2.b.I.a(http2Stream2.c);
                    break;
                }
                synchronized (http2Stream) {
                    z2 = framingSource.b;
                    z3 = framingSource.d.b + j4 > framingSource.a;
                }
                if (z3) {
                    zw0Var.skip(j4);
                    Http2Stream.this.f(ErrorCode.FLOW_CONTROL_ERROR);
                    break;
                }
                if (z2) {
                    zw0Var.skip(j4);
                    break;
                }
                long jH = zw0Var.H(framingSource.c, j4);
                if (jH == -1) {
                    d6.d();
                    return;
                }
                j4 -= jH;
                Http2Stream http2Stream3 = Http2Stream.this;
                synchronized (http2Stream3) {
                    try {
                        if (framingSource.e) {
                            framingSource.c.a();
                        } else {
                            nw0 nw0Var2 = framingSource.d;
                            boolean z4 = nw0Var2.b == 0;
                            nw0Var2.B(framingSource.c);
                            if (z4) {
                                http2Stream3.notifyAll();
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            if (z) {
                http2StreamB.j(Headers.b, true);
            }
        }

        public final void c(final int i, final List list, final boolean z) {
            final Http2Connection http2Connection = Http2Connection.this;
            Settings settings = Http2Connection.S;
            int i2 = 6;
            if (i != 0 && (i & 1) == 0) {
                TaskQueue.c(http2Connection.p, http2Connection.c + '[' + i + "] onHeaders", new bt3(i, list, z) { // from class: okhttp3.internal.http2.d
                    public final /* synthetic */ int b;
                    public final /* synthetic */ List c;

                    @Override // defpackage.bt3
                    public final Object invoke() {
                        Http2Connection http2Connection2 = this.a;
                        int i3 = this.b;
                        ((PushObserver.Companion.PushObserverCancel) http2Connection2.r).getClass();
                        try {
                            http2Connection2.P.n(i3, ErrorCode.CANCEL);
                            synchronized (http2Connection2) {
                                http2Connection2.R.remove(Integer.valueOf(i3));
                            }
                        } catch (IOException unused) {
                        }
                        return be8.a;
                    }
                }, 6);
                return;
            }
            synchronized (http2Connection) {
                Http2Stream http2StreamB = http2Connection.b(i);
                if (http2StreamB != null) {
                    http2StreamB.j(_UtilJvmKt.h(list), z);
                    return;
                }
                if (http2Connection.f) {
                    return;
                }
                if (i <= http2Connection.d) {
                    return;
                }
                if (i % 2 == http2Connection.e % 2) {
                    return;
                }
                Http2Stream http2Stream = new Http2Stream(i, http2Connection, false, z, _UtilJvmKt.h(list));
                http2Connection.d = i;
                http2Connection.b.put(Integer.valueOf(i), http2Stream);
                TaskQueue.c(http2Connection.k.d(), http2Connection.c + '[' + i + "] onStream", new yq(i2, http2Connection, http2Stream), 6);
            }
        }

        public final void e(final int i, final int i2, boolean z) {
            Http2Connection http2Connection = Http2Connection.this;
            if (!z) {
                TaskQueue taskQueue = http2Connection.n;
                String strN = dj7.n(new StringBuilder(), Http2Connection.this.c, " ping");
                final Http2Connection http2Connection2 = Http2Connection.this;
                TaskQueue.c(taskQueue, strN, new bt3() { // from class: c74
                    @Override // defpackage.bt3
                    public final Object invoke() {
                        Http2Connection http2Connection3 = http2Connection2;
                        try {
                            http2Connection3.P.m(i, i2, true);
                        } catch (IOException e) {
                            ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                            http2Connection3.a(errorCode, errorCode, e);
                        }
                        return be8.a;
                    }
                }, 6);
                return;
            }
            synchronized (http2Connection) {
                try {
                    if (i == 1) {
                        http2Connection.x++;
                    } else if (i == 2) {
                        http2Connection.G++;
                    } else if (i == 3) {
                        http2Connection.notifyAll();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void f(final int i, final List list) {
            final Http2Connection http2Connection = Http2Connection.this;
            synchronized (http2Connection) {
                if (http2Connection.R.contains(Integer.valueOf(i))) {
                    http2Connection.n(i, ErrorCode.PROTOCOL_ERROR);
                    return;
                }
                http2Connection.R.add(Integer.valueOf(i));
                TaskQueue.c(http2Connection.p, http2Connection.c + '[' + i + "] onRequest", new bt3() { // from class: okhttp3.internal.http2.b
                    @Override // defpackage.bt3
                    public final Object invoke() {
                        Http2Connection http2Connection2 = http2Connection;
                        int i2 = i;
                        ((PushObserver.Companion.PushObserverCancel) http2Connection2.r).getClass();
                        try {
                            http2Connection2.P.n(i2, ErrorCode.CANCEL);
                            synchronized (http2Connection2) {
                                http2Connection2.R.remove(Integer.valueOf(i2));
                            }
                        } catch (IOException unused) {
                        }
                        return be8.a;
                    }
                }, 6);
            }
        }

        public final void g(final int i, final ErrorCode errorCode) {
            final Http2Connection http2Connection = Http2Connection.this;
            Settings settings = Http2Connection.S;
            if (i == 0 || (i & 1) != 0) {
                Http2Stream http2StreamG = http2Connection.g(i);
                if (http2StreamG != null) {
                    synchronized (http2StreamG) {
                        if (http2StreamG.g() == null) {
                            http2StreamG.t = errorCode;
                            http2StreamG.notifyAll();
                        }
                    }
                    return;
                }
                return;
            }
            TaskQueue.c(http2Connection.p, http2Connection.c + '[' + i + "] onReset", new bt3(i, errorCode) { // from class: okhttp3.internal.http2.c
                public final /* synthetic */ int b;

                @Override // defpackage.bt3
                public final Object invoke() {
                    Http2Connection http2Connection2 = this.a;
                    int i2 = this.b;
                    ((PushObserver.Companion.PushObserverCancel) http2Connection2.r).getClass();
                    synchronized (http2Connection2) {
                        http2Connection2.R.remove(Integer.valueOf(i2));
                    }
                    return be8.a;
                }
            }, 6);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v12 */
        /* JADX WARN: Type inference failed for: r5v13 */
        /* JADX WARN: Type inference failed for: r5v8 */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // defpackage.bt3
        public final Object invoke() throws Throwable {
            Throwable th;
            Http2Connection http2Connection = Http2Connection.this;
            Http2Reader http2Reader = this.a;
            ErrorCode errorCode = ErrorCode.INTERNAL_ERROR;
            IOException iOException = null;
            try {
                try {
                    try {
                        if (!http2Reader.a(true, this)) {
                            throw new IOException("Required SETTINGS preface not received");
                        }
                        do {
                            try {
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } while (http2Reader.a(false, this));
                        ErrorCode errorCode2 = ErrorCode.NO_ERROR;
                        try {
                            errorCode = ErrorCode.CANCEL;
                            http2Connection.a(errorCode2, errorCode, null);
                            this = errorCode2;
                        } catch (IOException e) {
                            iOException = e;
                            ErrorCode errorCode3 = ErrorCode.PROTOCOL_ERROR;
                            http2Connection.a(errorCode3, errorCode3, iOException);
                            this = errorCode3;
                        }
                        _UtilCommonKt.b(http2Reader);
                        return be8.a;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                } catch (IOException e2) {
                    iOException = e2;
                }
            } catch (Throwable th4) {
                th = th4;
            }
            this = errorCode;
            http2Connection.a(this, errorCode, iOException);
            _UtilCommonKt.b(http2Reader);
            throw th;
        }
    }

    static {
        Settings settings = new Settings();
        settings.b(4, 65535);
        settings.b(5, 16384);
        S = settings;
    }

    public Http2Connection(Builder builder) {
        this.a = builder.d;
        String str = builder.c;
        if (str == null) {
            pe4.F("connectionName");
            throw null;
        }
        this.c = str;
        this.e = 3;
        TaskRunner taskRunner = builder.a;
        this.k = taskRunner;
        TaskQueue taskQueueD = taskRunner.d();
        this.n = taskQueueD;
        this.p = taskRunner.d();
        this.q = taskRunner.d();
        this.r = PushObserver.a;
        this.I = builder.g;
        Settings settings = new Settings();
        settings.b(4, 16777216);
        this.J = settings;
        Settings settings2 = S;
        this.K = settings2;
        this.L = new WindowCounter(0);
        this.N = settings2.a();
        BufferedSocket bufferedSocket = builder.b;
        if (bufferedSocket == null) {
            pe4.F("socket");
            throw null;
        }
        this.O = bufferedSocket;
        this.P = new Http2Writer(bufferedSocket.a());
        this.Q = new ReaderRunnable(new Http2Reader(bufferedSocket.getSource()));
        this.R = new LinkedHashSet();
        int i = builder.f;
        if (i != 0) {
            long nanos = TimeUnit.MILLISECONDS.toNanos(i);
            final String strConcat = str.concat(" ping");
            final z64 z64Var = new z64(this, nanos);
            taskQueueD.d(new Task(strConcat) { // from class: okhttp3.internal.concurrent.TaskQueue$schedule$2
                @Override // okhttp3.internal.concurrent.Task
                public final long a() {
                    return ((Number) z64Var.invoke()).longValue();
                }
            }, nanos);
        }
    }

    public final void a(ErrorCode errorCode, ErrorCode errorCode2, IOException iOException) {
        int i;
        Object[] array;
        TimeZone timeZone = _UtilJvmKt.a;
        try {
            h(errorCode);
        } catch (IOException unused) {
        }
        synchronized (this) {
            if (this.b.isEmpty()) {
                array = null;
            } else {
                array = this.b.values().toArray(new Http2Stream[0]);
                this.b.clear();
            }
        }
        Http2Stream[] http2StreamArr = (Http2Stream[]) array;
        if (http2StreamArr != null) {
            for (Http2Stream http2Stream : http2StreamArr) {
                try {
                    http2Stream.d(errorCode2, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.P.close();
        } catch (IOException unused3) {
        }
        try {
            this.O.cancel();
        } catch (IOException unused4) {
        }
        this.n.f();
        this.p.f();
        this.q.f();
    }

    public final Http2Stream b(int i) {
        Http2Stream http2Stream;
        synchronized (this) {
            http2Stream = (Http2Stream) this.b.get(Integer.valueOf(i));
        }
        return http2Stream;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a(ErrorCode.NO_ERROR, ErrorCode.CANCEL, null);
    }

    public final void flush() {
        this.P.flush();
    }

    public final Http2Stream g(int i) {
        Http2Stream http2Stream;
        synchronized (this) {
            http2Stream = (Http2Stream) this.b.remove(Integer.valueOf(i));
            notifyAll();
        }
        return http2Stream;
    }

    public final void h(ErrorCode errorCode) {
        synchronized (this.P) {
            synchronized (this) {
                if (this.f) {
                    return;
                }
                this.f = true;
                this.P.h(this.d, errorCode, _UtilCommonKt.a);
            }
        }
    }

    public final void j(long j) {
        synchronized (this) {
            try {
                WindowCounter.b(this.L, j, 0L, 2);
                long jA = this.L.a();
                if (jA >= this.J.a() / 2) {
                    q(0, jA);
                    WindowCounter.b(this.L, 0L, jA, 1);
                }
                this.I.b(this.L);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void m(int i, boolean z, nw0 nw0Var, long j) {
        long j2;
        long j3;
        int iMin;
        long j4;
        if (j == 0) {
            this.P.b(z, i, nw0Var, 0);
            return;
        }
        while (j > 0) {
            synchronized (this) {
                while (true) {
                    try {
                        try {
                            j2 = this.M;
                            j3 = this.N;
                            if (j2 >= j3) {
                                if (!this.b.containsKey(Integer.valueOf(i))) {
                                    throw new IOException("stream closed");
                                }
                                wait();
                            }
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                iMin = Math.min((int) Math.min(j, j3 - j2), this.P.c);
                j4 = iMin;
                this.M += j4;
            }
            j -= j4;
            this.P.b(z && j == 0, i, nw0Var, iMin);
        }
    }

    public final void n(final int i, final ErrorCode errorCode) {
        TaskQueue.c(this.n, this.c + '[' + i + "] writeSynReset", new bt3() { // from class: b74
            @Override // defpackage.bt3
            public final Object invoke() {
                Http2Connection http2Connection = this.a;
                int i2 = i;
                ErrorCode errorCode2 = errorCode;
                Settings settings = Http2Connection.S;
                try {
                    http2Connection.P.n(i2, errorCode2);
                } catch (IOException e) {
                    ErrorCode errorCode3 = ErrorCode.PROTOCOL_ERROR;
                    http2Connection.a(errorCode3, errorCode3, e);
                }
                return be8.a;
            }
        }, 6);
    }

    public final void q(final int i, final long j) {
        TaskQueue.c(this.n, this.c + '[' + i + "] windowUpdate", new bt3() { // from class: a74
            @Override // defpackage.bt3
            public final Object invoke() {
                Http2Connection http2Connection = this.a;
                int i2 = i;
                long j2 = j;
                Settings settings = Http2Connection.S;
                try {
                    http2Connection.P.q(i2, j2);
                } catch (IOException e) {
                    ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                    http2Connection.a(errorCode, errorCode, e);
                }
                return be8.a;
            }
        }, 6);
    }
}
