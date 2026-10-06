package okhttp3.internal.http1;

import defpackage.br3;
import defpackage.c6;
import defpackage.f48;
import defpackage.f6;
import defpackage.g84;
import defpackage.ij7;
import defpackage.iz1;
import defpackage.l0;
import defpackage.nh7;
import defpackage.nq7;
import defpackage.nw0;
import defpackage.u48;
import defpackage.wi7;
import defpackage.x5;
import defpackage.yw0;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.Arrays;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal._HeadersCommonKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.connection.BufferedSocket;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Http1ExchangeCodec implements ExchangeCodec {
    public static final Headers f;
    public final OkHttpClient a;
    public final ExchangeCodec.Carrier b;
    public final BufferedSocket c;
    public int d;
    public final HeadersReader e;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public abstract class AbstractSource implements ij7 {
        public final HttpUrl a;
        public final br3 b;
        public boolean c;
        public final /* synthetic */ Http1ExchangeCodec d;

        public AbstractSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl httpUrl) {
            httpUrl.getClass();
            this.d = http1ExchangeCodec;
            this.a = httpUrl;
            this.b = new br3(http1ExchangeCodec.c.getSource().d());
        }

        @Override // defpackage.ij7
        public long H(nw0 nw0Var, long j) throws IOException {
            Http1ExchangeCodec http1ExchangeCodec = this.d;
            nw0Var.getClass();
            try {
                return http1ExchangeCodec.c.getSource().H(nw0Var, j);
            } catch (IOException e) {
                http1ExchangeCodec.b.f();
                a(Http1ExchangeCodec.f);
                throw e;
            }
        }

        public final void a(Headers headers) {
            OkHttpClient okHttpClient;
            CookieJar cookieJar;
            headers.getClass();
            Http1ExchangeCodec http1ExchangeCodec = this.d;
            int i = http1ExchangeCodec.d;
            if (i == 6) {
                return;
            }
            if (i != 5) {
                x5.g(http1ExchangeCodec.d, "state: ");
                return;
            }
            br3 br3Var = this.b;
            f48 f48Var = br3Var.e;
            br3Var.e = f48.d;
            f48Var.a();
            f48Var.b();
            http1ExchangeCodec.d = 6;
            if (headers.size() <= 0 || (okHttpClient = http1ExchangeCodec.a) == null || (cookieJar = okHttpClient.j) == null) {
                return;
            }
            HttpHeaders.d(cookieJar, this.a, headers);
        }

        @Override // defpackage.ij7
        public final f48 d() {
            return this.b;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class ChunkedSink implements nh7 {
        public final br3 a;
        public boolean b;

        public ChunkedSink() {
            this.a = new br3(Http1ExchangeCodec.this.c.a().d());
        }

        @Override // defpackage.nh7, java.io.Closeable, java.lang.AutoCloseable
        public final synchronized void close() {
            if (this.b) {
                return;
            }
            this.b = true;
            Http1ExchangeCodec.this.c.a().K("0\r\n\r\n");
            br3 br3Var = this.a;
            f48 f48Var = br3Var.e;
            br3Var.e = f48.d;
            f48Var.a();
            f48Var.b();
            Http1ExchangeCodec.this.d = 3;
        }

        @Override // defpackage.nh7
        public final f48 d() {
            return this.a;
        }

        @Override // defpackage.nh7
        public final void f0(nw0 nw0Var, long j) {
            if (this.b) {
                l0.e("closed");
                return;
            }
            if (j == 0) {
                return;
            }
            yw0 yw0VarA = Http1ExchangeCodec.this.c.a();
            yw0VarA.Q(j);
            yw0VarA.K("\r\n");
            yw0VarA.f0(nw0Var, j);
            yw0VarA.K("\r\n");
        }

        @Override // defpackage.nh7, java.io.Flushable
        public final synchronized void flush() {
            if (this.b) {
                return;
            }
            Http1ExchangeCodec.this.c.a().flush();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class ChunkedSource extends AbstractSource {
        public long e;
        public boolean f;
        public final /* synthetic */ Http1ExchangeCodec k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChunkedSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl httpUrl) {
            super(http1ExchangeCodec, httpUrl);
            httpUrl.getClass();
            this.k = http1ExchangeCodec;
            this.e = -1L;
            this.f = true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:36:0x00c4, code lost:
        
            if (r16.f == false) goto L37;
         */
        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, defpackage.ij7
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long H(defpackage.nw0 r17, long r18) throws java.io.IOException {
            /*
                Method dump skipped, instruction units count: 294
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http1.Http1ExchangeCodec.ChunkedSource.H(nw0, long):long");
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            boolean zG;
            if (this.c) {
                return;
            }
            if (this.f) {
                TimeZone timeZone = _UtilJvmKt.a;
                TimeUnit.MILLISECONDS.getClass();
                try {
                    zG = _UtilJvmKt.g(this, 100);
                } catch (IOException unused) {
                    zG = false;
                }
                if (!zG) {
                    this.k.b.f();
                    a(Http1ExchangeCodec.f);
                }
            }
            this.c = true;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class FixedLengthSource extends AbstractSource {
        public long e;
        public final /* synthetic */ Http1ExchangeCodec f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FixedLengthSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl httpUrl, long j) {
            super(http1ExchangeCodec, httpUrl);
            httpUrl.getClass();
            this.f = http1ExchangeCodec;
            this.e = j;
            if (j == 0) {
                a(Headers.b);
            }
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, defpackage.ij7
        public final long H(nw0 nw0Var, long j) throws IOException {
            nw0Var.getClass();
            if (j < 0) {
                f6.g(u48.l(j, "byteCount < 0: "));
                return 0L;
            }
            if (this.c) {
                l0.e("closed");
                return 0L;
            }
            long j2 = this.e;
            if (j2 == 0) {
                return -1L;
            }
            long jH = super.H(nw0Var, Math.min(j2, j));
            if (jH == -1) {
                this.f.b.f();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                a(Http1ExchangeCodec.f);
                throw protocolException;
            }
            long j3 = this.e - jH;
            this.e = j3;
            if (j3 == 0) {
                a(Headers.b);
            }
            return jH;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            boolean zG;
            if (this.c) {
                return;
            }
            if (this.e != 0) {
                TimeZone timeZone = _UtilJvmKt.a;
                TimeUnit.MILLISECONDS.getClass();
                try {
                    zG = _UtilJvmKt.g(this, 100);
                } catch (IOException unused) {
                    zG = false;
                }
                if (!zG) {
                    this.f.b.f();
                    a(Http1ExchangeCodec.f);
                }
            }
            this.c = true;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class KnownLengthSink implements nh7 {
        public final br3 a;
        public boolean b;

        public KnownLengthSink() {
            this.a = new br3(Http1ExchangeCodec.this.c.a().d());
        }

        @Override // defpackage.nh7, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.b) {
                return;
            }
            this.b = true;
            Headers headers = Http1ExchangeCodec.f;
            br3 br3Var = this.a;
            f48 f48Var = br3Var.e;
            br3Var.e = f48.d;
            f48Var.a();
            f48Var.b();
            Http1ExchangeCodec.this.d = 3;
        }

        @Override // defpackage.nh7
        public final f48 d() {
            return this.a;
        }

        @Override // defpackage.nh7
        public final void f0(nw0 nw0Var, long j) {
            if (this.b) {
                l0.e("closed");
            } else {
                _UtilCommonKt.a(nw0Var.b, 0L, j);
                Http1ExchangeCodec.this.c.a().f0(nw0Var, j);
            }
        }

        @Override // defpackage.nh7, java.io.Flushable
        public final void flush() {
            if (this.b) {
                return;
            }
            Http1ExchangeCodec.this.c.a().flush();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class UnknownLengthSource extends AbstractSource {
        public boolean e;

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, defpackage.ij7
        public final long H(nw0 nw0Var, long j) throws IOException {
            nw0Var.getClass();
            if (j < 0) {
                f6.g(u48.l(j, "byteCount < 0: "));
                return 0L;
            }
            if (this.c) {
                l0.e("closed");
                return 0L;
            }
            if (this.e) {
                return -1L;
            }
            long jH = super.H(nw0Var, j);
            if (jH != -1) {
                return jH;
            }
            this.e = true;
            a(Headers.b);
            return -1L;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.c) {
                return;
            }
            if (!this.e) {
                a(Http1ExchangeCodec.f);
            }
            this.c = true;
        }
    }

    static {
        Headers headers = Headers.b;
        String[] strArr = (String[]) Arrays.copyOf(new String[]{"OkHttp-Response-Body", "Truncated"}, 2);
        if (strArr.length % 2 != 0) {
            c6.f("Expected alternating header names and values");
            return;
        }
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        int length = strArr2.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (strArr2[i2] == null) {
                c6.f("Headers cannot be null");
                return;
            }
            strArr2[i2] = nq7.H0(strArr[i2]).toString();
        }
        int iN = iz1.n(0, strArr2.length - 1, 2);
        if (iN >= 0) {
            while (true) {
                String str = strArr2[i];
                String str2 = strArr2[i + 1];
                _HeadersCommonKt.b(str);
                _HeadersCommonKt.c(str2, str);
                if (i == iN) {
                    break;
                } else {
                    i += 2;
                }
            }
        }
        f = new Headers(strArr2);
    }

    public Http1ExchangeCodec(OkHttpClient okHttpClient, ExchangeCodec.Carrier carrier, BufferedSocket bufferedSocket) {
        bufferedSocket.getClass();
        this.a = okHttpClient;
        this.b = carrier;
        this.c = bufferedSocket;
        this.e = new HeadersReader(bufferedSocket.getSource());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void a() {
        this.c.a().flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void b(Request request) {
        request.getClass();
        Proxy.Type type = this.b.h().b.type();
        type.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(request.b);
        sb.append(' ');
        HttpUrl httpUrl = request.a;
        if (httpUrl.f() || type != Proxy.Type.HTTP) {
            sb.append(RequestLine.a(httpUrl));
        } else {
            sb.append(httpUrl);
        }
        sb.append(" HTTP/1.1");
        l(request.c, sb.toString());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final boolean c() {
        return this.d == 6;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void cancel() {
        this.b.cancel();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final ij7 d(Response response) {
        Request request = response.a;
        if (!HttpHeaders.a(response)) {
            return j(request.a, 0L);
        }
        if ("chunked".equalsIgnoreCase(Response.b("Transfer-Encoding", response))) {
            HttpUrl httpUrl = request.a;
            if (this.d == 4) {
                this.d = 5;
                return new ChunkedSource(this, httpUrl);
            }
            g84.e(this.d, "state: ");
            return null;
        }
        long jE = _UtilJvmKt.e(response);
        if (jE != -1) {
            return j(request.a, jE);
        }
        HttpUrl httpUrl2 = request.a;
        if (this.d != 4) {
            g84.e(this.d, "state: ");
            return null;
        }
        this.d = 5;
        this.b.f();
        httpUrl2.getClass();
        return new UnknownLengthSource(this, httpUrl2);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Response.Builder e(boolean z) {
        HeadersReader headersReader = this.e;
        int i = this.d;
        if (i != 0 && i != 1 && i != 2 && i != 3) {
            g84.e(this.d, "state: ");
            return null;
        }
        try {
            String strE = headersReader.a.E(headersReader.b);
            headersReader.b -= (long) strE.length();
            StatusLine statusLineA = StatusLine.Companion.a(strE);
            int i2 = statusLineA.b;
            Response.Builder builder = new Response.Builder();
            Protocol protocol = statusLineA.a;
            protocol.getClass();
            builder.b = protocol;
            builder.c = i2;
            String str = statusLineA.c;
            str.getClass();
            builder.d = str;
            Headers.Builder builder2 = new Headers.Builder();
            while (true) {
                String strE2 = headersReader.a.E(headersReader.b);
                headersReader.b -= (long) strE2.length();
                if (strE2.length() == 0) {
                    break;
                }
                int iG0 = nq7.g0(':', 1, 4, strE2);
                if (iG0 != -1) {
                    _HeadersCommonKt.a(builder2, strE2.substring(0, iG0), strE2.substring(iG0 + 1));
                } else if (strE2.charAt(0) == ':') {
                    _HeadersCommonKt.a(builder2, "", strE2.substring(1));
                } else {
                    _HeadersCommonKt.a(builder2, "", strE2);
                }
            }
            builder.f = builder2.b().f();
            if (z && i2 == 100) {
                return null;
            }
            if (i2 == 100) {
                this.d = 3;
                return builder;
            }
            if (102 > i2 || i2 >= 200) {
                this.d = 4;
                return builder;
            }
            this.d = 3;
            return builder;
        } catch (EOFException e) {
            throw new IOException("unexpected end of stream on ".concat(this.b.h().a.h.h()), e);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void f() {
        this.c.a().flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final long g(Response response) {
        if (!HttpHeaders.a(response)) {
            return 0L;
        }
        if ("chunked".equalsIgnoreCase(Response.b("Transfer-Encoding", response))) {
            return -1L;
        }
        return _UtilJvmKt.e(response);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final wi7 getSocket() {
        return this.c;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final ExchangeCodec.Carrier h() {
        return this.b;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final nh7 i(Request request, long j) {
        request.getClass();
        if ("chunked".equalsIgnoreCase(request.c.d("Transfer-Encoding"))) {
            if (this.d == 1) {
                this.d = 2;
                return new ChunkedSink();
            }
            g84.e(this.d, "state: ");
            return null;
        }
        if (j == -1) {
            l0.e("Cannot stream a request body without chunked encoding or a known content length!");
            return null;
        }
        if (this.d == 1) {
            this.d = 2;
            return new KnownLengthSink();
        }
        g84.e(this.d, "state: ");
        return null;
    }

    public final ij7 j(HttpUrl httpUrl, long j) {
        if (this.d == 4) {
            this.d = 5;
            return new FixedLengthSource(this, httpUrl, j);
        }
        g84.e(this.d, "state: ");
        return null;
    }

    public final void k(Response response) {
        long jE = _UtilJvmKt.e(response);
        if (jE == -1) {
            return;
        }
        ij7 ij7VarJ = j(response.a.a, jE);
        _UtilJvmKt.g(ij7VarJ, Integer.MAX_VALUE);
        ((FixedLengthSource) ij7VarJ).close();
    }

    public final void l(Headers headers, String str) {
        headers.getClass();
        if (this.d != 0) {
            g84.e(this.d, "state: ");
            return;
        }
        BufferedSocket bufferedSocket = this.c;
        bufferedSocket.a().K(str).K("\r\n");
        int size = headers.size();
        for (int i = 0; i < size; i++) {
            bufferedSocket.a().K(headers.e(i)).K(": ").K(headers.g(i)).K("\r\n");
        }
        bufferedSocket.a().K("\r\n");
        this.d = 1;
    }
}
