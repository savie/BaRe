package okhttp3.internal.http2;

import defpackage.bh;
import defpackage.c70;
import defpackage.dj7;
import defpackage.f48;
import defpackage.f6;
import defpackage.ij7;
import defpackage.l0;
import defpackage.nh7;
import defpackage.nw0;
import defpackage.u48;
import defpackage.wi7;
import defpackage.y5;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.TimeZone;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.http2.flowcontrol.WindowCounter;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Http2Stream implements Lockable, wi7 {
    public final int a;
    public final Http2Connection b;
    public final WindowCounter c;
    public long d;
    public long e;
    public final ArrayDeque f;
    public boolean k;
    public final FramingSource n;
    public final FramingSink p;
    public final StreamTimeout q;
    public final StreamTimeout r;
    public ErrorCode t;
    public IOException x;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class FramingSink implements nh7 {
        public final boolean a;
        public final nw0 b = new nw0();
        public boolean c;

        public FramingSink(boolean z) {
            this.a = z;
        }

        public final void a(boolean z) throws IOException {
            long jMin;
            boolean z2;
            Http2Stream http2Stream = Http2Stream.this;
            synchronized (http2Stream) {
                http2Stream.r.h();
                while (http2Stream.d >= http2Stream.e && !this.a && !this.c && http2Stream.g() == null) {
                    try {
                        try {
                            http2Stream.wait();
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th) {
                        http2Stream.r.l();
                        throw th;
                    }
                }
                http2Stream.r.l();
                http2Stream.c();
                jMin = Math.min(http2Stream.e - http2Stream.d, this.b.b);
                http2Stream.d += jMin;
                z2 = z && jMin == this.b.b;
            }
            Http2Stream.this.r.h();
            try {
                Http2Stream http2Stream2 = Http2Stream.this;
                http2Stream2.b.m(http2Stream2.a, z2, this.b, jMin);
            } finally {
                Http2Stream.this.r.l();
            }
        }

        @Override // defpackage.nh7, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            Http2Stream http2Stream = Http2Stream.this;
            TimeZone timeZone = _UtilJvmKt.a;
            synchronized (http2Stream) {
                if (this.c) {
                    return;
                }
                boolean z = http2Stream.g() == null;
                Http2Stream http2Stream2 = Http2Stream.this;
                if (!http2Stream2.p.a) {
                    if (this.b.b > 0) {
                        while (this.b.b > 0) {
                            a(true);
                        }
                    } else if (z) {
                        http2Stream2.b.m(http2Stream2.a, true, null, 0L);
                    }
                }
                Http2Stream http2Stream3 = Http2Stream.this;
                synchronized (http2Stream3) {
                    this.c = true;
                    http2Stream3.notifyAll();
                }
                Http2Stream.this.b.flush();
                Http2Stream.this.b();
            }
        }

        @Override // defpackage.nh7
        public final f48 d() {
            return Http2Stream.this.r;
        }

        @Override // defpackage.nh7
        public final void f0(nw0 nw0Var, long j) throws IOException {
            TimeZone timeZone = _UtilJvmKt.a;
            nw0 nw0Var2 = this.b;
            nw0Var2.f0(nw0Var, j);
            while (nw0Var2.b >= 16384) {
                a(false);
            }
        }

        @Override // defpackage.nh7, java.io.Flushable
        public final void flush() throws IOException {
            Http2Stream http2Stream = Http2Stream.this;
            TimeZone timeZone = _UtilJvmKt.a;
            synchronized (http2Stream) {
                http2Stream.c();
            }
            while (this.b.b > 0) {
                a(false);
                Http2Stream.this.b.flush();
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class FramingSource implements ij7 {
        public final long a;
        public boolean b;
        public final nw0 c = new nw0();
        public final nw0 d = new nw0();
        public boolean e;

        public FramingSource(long j, boolean z) {
            this.a = j;
            this.b = z;
        }

        @Override // defpackage.ij7
        public final long H(nw0 nw0Var, long j) throws Throwable {
            boolean z;
            Throwable streamResetException;
            long j2;
            long jH;
            nw0Var.getClass();
            long j3 = 0;
            if (j < 0) {
                f6.g(u48.l(j, "byteCount < 0: "));
                return 0L;
            }
            while (true) {
                Http2Stream http2Stream = Http2Stream.this;
                synchronized (http2Stream) {
                    http2Stream.b.getClass();
                    FramingSink framingSink = http2Stream.p;
                    z = true;
                    boolean z2 = framingSink.c || framingSink.a;
                    if (z2) {
                        http2Stream.q.h();
                    }
                    try {
                        if (http2Stream.g() == null || this.b) {
                            streamResetException = null;
                        } else {
                            streamResetException = http2Stream.x;
                            if (streamResetException == null) {
                                ErrorCode errorCodeG = http2Stream.g();
                                errorCodeG.getClass();
                                streamResetException = new StreamResetException(errorCodeG);
                            }
                        }
                        if (this.e) {
                            throw new IOException("stream closed");
                        }
                        nw0 nw0Var2 = this.d;
                        long j4 = nw0Var2.b;
                        if (j4 > j3) {
                            jH = nw0Var2.H(nw0Var, Math.min(j, j4));
                            WindowCounter.b(http2Stream.c, jH, 0L, 2);
                            long jA = http2Stream.c.a();
                            if (streamResetException == null) {
                                j2 = j3;
                                if (jA >= http2Stream.b.J.a() / 2) {
                                    http2Stream.b.q(http2Stream.a, jA);
                                    WindowCounter.b(http2Stream.c, 0L, jA, 1);
                                }
                            } else {
                                j2 = j3;
                            }
                            z = false;
                        } else {
                            j2 = j3;
                            if (this.b || streamResetException != null) {
                                z = false;
                            } else {
                                try {
                                    http2Stream.wait();
                                } catch (InterruptedException unused) {
                                    Thread.currentThread().interrupt();
                                    throw new InterruptedIOException();
                                }
                            }
                            jH = -1;
                        }
                        if (z2) {
                            http2Stream.q.l();
                        }
                    } catch (Throwable th) {
                        if (z2) {
                            http2Stream.q.l();
                        }
                        throw th;
                    }
                }
                Http2Stream http2Stream2 = Http2Stream.this;
                http2Stream2.b.I.a(http2Stream2.c);
                if (!z) {
                    if (jH != -1) {
                        return jH;
                    }
                    if (streamResetException == null) {
                        return -1L;
                    }
                    throw streamResetException;
                }
                j3 = j2;
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            long j;
            Http2Stream http2Stream = Http2Stream.this;
            synchronized (http2Stream) {
                this.e = true;
                nw0 nw0Var = this.d;
                j = nw0Var.b;
                nw0Var.a();
                http2Stream.notifyAll();
            }
            if (j > 0) {
                Http2Stream http2Stream2 = Http2Stream.this;
                TimeZone timeZone = _UtilJvmKt.a;
                http2Stream2.b.j(j);
            }
            Http2Stream.this.b();
        }

        @Override // defpackage.ij7
        public final f48 d() {
            return Http2Stream.this.q;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class StreamTimeout extends c70 {
        public StreamTimeout() {
        }

        @Override // defpackage.c70
        public final IOException j(IOException iOException) {
            return new SocketTimeoutException("timeout");
        }

        @Override // defpackage.c70
        public final void k() {
            Http2Stream.this.f(ErrorCode.CANCEL);
            Http2Connection http2Connection = Http2Stream.this.b;
            synchronized (http2Connection) {
                long j = http2Connection.G;
                long j2 = http2Connection.y;
                if (j < j2) {
                    return;
                }
                http2Connection.y = j2 + 1;
                http2Connection.H = System.nanoTime() + 1000000000;
                TaskQueue.c(http2Connection.n, dj7.n(new StringBuilder(), http2Connection.c, " ping"), new bh(http2Connection, 29), 6);
            }
        }

        public final void l() throws IOException {
            if (i()) {
                throw j(null);
            }
        }
    }

    public Http2Stream(int i, Http2Connection http2Connection, boolean z, boolean z2, Headers headers) {
        http2Connection.getClass();
        this.a = i;
        this.b = http2Connection;
        this.c = new WindowCounter(i);
        this.e = http2Connection.K.a();
        ArrayDeque arrayDeque = new ArrayDeque();
        this.f = arrayDeque;
        this.n = new FramingSource(http2Connection.J.a(), z2);
        this.p = new FramingSink(z);
        this.q = new StreamTimeout();
        this.r = new StreamTimeout();
        if (headers == null) {
            if (h()) {
                return;
            }
            l0.e("remotely-initiated streams should have headers");
            throw null;
        }
        if (h()) {
            l0.e("locally-initiated streams shouldn't have headers yet");
            throw null;
        }
        arrayDeque.add(headers);
    }

    @Override // defpackage.wi7
    public final nh7 a() {
        return this.p;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x001c  */
    public final void b() {
        boolean z;
        boolean zI;
        TimeZone timeZone = _UtilJvmKt.a;
        synchronized (this) {
            try {
                FramingSource framingSource = this.n;
                if (framingSource.b || !framingSource.e) {
                    z = false;
                } else {
                    FramingSink framingSink = this.p;
                    if (framingSink.a || framingSink.c) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
                zI = i();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            d(ErrorCode.CANCEL, null);
        } else {
            if (zI) {
                return;
            }
            this.b.g(this.a);
        }
    }

    public final void c() throws IOException {
        FramingSink framingSink = this.p;
        if (framingSink.c) {
            y5.m("stream closed");
            return;
        }
        if (framingSink.a) {
            y5.m("stream finished");
            return;
        }
        if (g() != null) {
            IOException iOException = this.x;
            if (iOException != null) {
                throw iOException;
            }
            ErrorCode errorCodeG = g();
            errorCodeG.getClass();
            throw new StreamResetException(errorCodeG);
        }
    }

    @Override // defpackage.wi7
    public final void cancel() {
        f(ErrorCode.CANCEL);
    }

    public final void d(ErrorCode errorCode, IOException iOException) {
        if (e(errorCode, iOException)) {
            Http2Connection http2Connection = this.b;
            http2Connection.getClass();
            http2Connection.P.n(this.a, errorCode);
        }
    }

    public final boolean e(ErrorCode errorCode, IOException iOException) {
        TimeZone timeZone = _UtilJvmKt.a;
        synchronized (this) {
            if (g() != null) {
                return false;
            }
            this.t = errorCode;
            this.x = iOException;
            notifyAll();
            if (this.n.b && this.p.a) {
                return false;
            }
            this.b.g(this.a);
            return true;
        }
    }

    public final void f(ErrorCode errorCode) {
        if (e(errorCode, null)) {
            this.b.n(this.a, errorCode);
        }
    }

    public final ErrorCode g() {
        ErrorCode errorCode;
        synchronized (this) {
            errorCode = this.t;
        }
        return errorCode;
    }

    @Override // defpackage.wi7
    public final ij7 getSource() {
        return this.n;
    }

    public final boolean h() {
        boolean z = (this.a & 1) == 1;
        this.b.getClass();
        return true == z;
    }

    public final boolean i() {
        synchronized (this) {
            try {
                if (g() != null) {
                    return false;
                }
                FramingSource framingSource = this.n;
                if (framingSource.b || framingSource.e) {
                    FramingSink framingSink = this.p;
                    if ((framingSink.a || framingSink.c) && this.k) {
                        return false;
                    }
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void j(Headers headers, boolean z) {
        boolean zI;
        headers.getClass();
        TimeZone timeZone = _UtilJvmKt.a;
        synchronized (this) {
            try {
                if (this.k && headers.d(":status") == null && headers.d(":method") == null) {
                    this.n.getClass();
                } else {
                    this.k = true;
                    this.f.add(headers);
                }
                if (z) {
                    this.n.b = true;
                }
                zI = i();
                notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zI) {
            return;
        }
        this.b.g(this.a);
    }
}
