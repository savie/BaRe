package okhttp3.internal.http2;

import defpackage.dj7;
import defpackage.hy0;
import defpackage.ij7;
import defpackage.nh7;
import defpackage.wi7;
import defpackage.y5;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._HeadersCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Http2ExchangeCodec implements ExchangeCodec {
    public static final List g = _UtilJvmKt.k(new String[]{"connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority"});
    public static final List h = _UtilJvmKt.k(new String[]{"connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade"});
    public final RealConnection a;
    public final RealInterceptorChain b;
    public final Http2Connection c;
    public volatile Http2Stream d;
    public final Protocol e;
    public volatile boolean f;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    public Http2ExchangeCodec(OkHttpClient okHttpClient, RealConnection realConnection, RealInterceptorChain realInterceptorChain, Http2Connection http2Connection) {
        okHttpClient.getClass();
        http2Connection.getClass();
        this.a = realConnection;
        this.b = realInterceptorChain;
        this.c = http2Connection;
        List list = okHttpClient.r;
        Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
        this.e = list.contains(protocol) ? protocol : Protocol.HTTP_2;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void a() throws IOException {
        Http2Stream http2Stream = this.d;
        http2Stream.getClass();
        http2Stream.p.close();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void b(Request request) throws IOException {
        int i;
        Http2Stream http2Stream;
        boolean z;
        request.getClass();
        if (this.d != null) {
            return;
        }
        boolean z2 = request.d != null;
        Headers headers = request.c;
        ArrayList arrayList = new ArrayList(headers.size() + 4);
        arrayList.add(new Header(Header.f, request.b));
        hy0 hy0Var = Header.g;
        HttpUrl httpUrl = request.a;
        arrayList.add(new Header(hy0Var, RequestLine.a(httpUrl)));
        String strD = headers.d("Host");
        if (strD != null) {
            arrayList.add(new Header(Header.i, strD));
        }
        arrayList.add(new Header(Header.h, httpUrl.a));
        int size = headers.size();
        for (int i2 = 0; i2 < size; i2++) {
            String strE = headers.e(i2);
            Locale locale = Locale.US;
            String strQ = dj7.q(locale, strE, locale);
            if (!g.contains(strQ) || (strQ.equals("te") && headers.g(i2).equals("trailers"))) {
                arrayList.add(new Header(strQ, headers.g(i2)));
            }
        }
        Http2Connection http2Connection = this.c;
        http2Connection.getClass();
        boolean z3 = !z2;
        synchronized (http2Connection.P) {
            synchronized (http2Connection) {
                try {
                    if (http2Connection.e > 1073741823) {
                        http2Connection.h(ErrorCode.REFUSED_STREAM);
                    }
                    if (http2Connection.f) {
                        throw new ConnectionShutdownException();
                    }
                    i = http2Connection.e;
                    http2Connection.e = i + 2;
                    http2Stream = new Http2Stream(i, http2Connection, z3, false, null);
                    z = !z2 || http2Connection.M >= http2Connection.N || http2Stream.d >= http2Stream.e;
                    if (http2Stream.i()) {
                        http2Connection.b.put(Integer.valueOf(i), http2Stream);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            http2Connection.P.j(i, arrayList, z3);
        }
        if (z) {
            http2Connection.P.flush();
        }
        this.d = http2Stream;
        boolean z4 = this.f;
        Http2Stream http2Stream2 = this.d;
        if (z4) {
            http2Stream2.getClass();
            http2Stream2.f(ErrorCode.CANCEL);
            y5.m("Canceled");
            return;
        }
        http2Stream2.getClass();
        Http2Stream.StreamTimeout streamTimeout = http2Stream2.q;
        long j = this.b.g;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        streamTimeout.g(j, timeUnit);
        Http2Stream http2Stream3 = this.d;
        http2Stream3.getClass();
        http2Stream3.r.g(this.b.h, timeUnit);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final boolean c() {
        boolean z;
        Http2Stream http2Stream = this.d;
        if (http2Stream != null) {
            synchronized (http2Stream) {
                Http2Stream.FramingSource framingSource = http2Stream.n;
                z = framingSource.b && framingSource.d.x();
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void cancel() {
        this.f = true;
        Http2Stream http2Stream = this.d;
        if (http2Stream != null) {
            http2Stream.f(ErrorCode.CANCEL);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final ij7 d(Response response) {
        Http2Stream http2Stream = this.d;
        http2Stream.getClass();
        return http2Stream.n;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002d  */
    @Override // okhttp3.internal.http.ExchangeCodec
    public final Response.Builder e(boolean z) throws IOException {
        int i;
        Headers headers;
        Http2Stream http2Stream = this.d;
        if (http2Stream == null) {
            y5.m("stream wasn't created");
            return null;
        }
        synchronized (http2Stream) {
            while (true) {
                if (!http2Stream.f.isEmpty() || http2Stream.g() != null) {
                    break;
                }
                if (!z) {
                    http2Stream.b.getClass();
                    Http2Stream.FramingSink framingSink = http2Stream.p;
                    i = framingSink.c || framingSink.a ? 1 : 0;
                }
                if (i != 0) {
                    http2Stream.q.h();
                }
                try {
                    try {
                        http2Stream.wait();
                        if (i != 0) {
                            http2Stream.q.l();
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                } catch (Throwable th) {
                    if (i != 0) {
                        http2Stream.q.l();
                    }
                    throw th;
                }
            }
            if (http2Stream.f.isEmpty()) {
                IOException iOException = http2Stream.x;
                if (iOException != null) {
                    throw iOException;
                }
                ErrorCode errorCodeG = http2Stream.g();
                errorCodeG.getClass();
                throw new StreamResetException(errorCodeG);
            }
            Object objRemoveFirst = http2Stream.f.removeFirst();
            objRemoveFirst.getClass();
            headers = (Headers) objRemoveFirst;
        }
        Protocol protocol = this.e;
        protocol.getClass();
        Headers.Builder builder = new Headers.Builder();
        int size = headers.size();
        StatusLine statusLineA = null;
        for (i = 0; i < size; i++) {
            String strE = headers.e(i);
            String strG = headers.g(i);
            if (strE.equals(":status")) {
                statusLineA = StatusLine.Companion.a("HTTP/1.1 ".concat(strG));
            } else if (!h.contains(strE)) {
                _HeadersCommonKt.a(builder, strE, strG);
            }
        }
        if (statusLineA == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        Response.Builder builder2 = new Response.Builder();
        builder2.b = protocol;
        builder2.c = statusLineA.b;
        String str = statusLineA.c;
        str.getClass();
        builder2.d = str;
        builder2.f = builder.b().f();
        if (z && builder2.c == 100) {
            return null;
        }
        return builder2;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void f() {
        this.c.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final long g(Response response) {
        if (HttpHeaders.a(response)) {
            return _UtilJvmKt.e(response);
        }
        return 0L;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final wi7 getSocket() {
        Http2Stream http2Stream = this.d;
        http2Stream.getClass();
        return http2Stream;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final ExchangeCodec.Carrier h() {
        return this.a;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final nh7 i(Request request, long j) {
        request.getClass();
        Http2Stream http2Stream = this.d;
        http2Stream.getClass();
        return http2Stream.p;
    }
}
