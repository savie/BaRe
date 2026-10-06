package okhttp3;

import defpackage.f6;
import defpackage.g84;
import defpackage.hy0;
import defpackage.l0;
import defpackage.nw0;
import defpackage.ov2;
import defpackage.tf6;
import defpackage.wi7;
import java.io.Closeable;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.platform.Platform;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Response implements Closeable {
    public final TrailersSource G;
    public final boolean H;
    public final Request a;
    public final Protocol b;
    public final String c;
    public final int d;
    public final Handshake e;
    public final Headers f;
    public final ResponseBody k;
    public final wi7 n;
    public final Response p;
    public final Response q;
    public final Response r;
    public final long t;
    public final long x;
    public final Exchange y;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class Builder {
        public Request a;
        public Protocol b;
        public String d;
        public Handshake e;
        public wi7 h;
        public Response i;
        public Response j;
        public Response k;
        public long l;
        public long m;
        public Exchange n;
        public int c = -1;
        public ResponseBody g = ResponseBody.b;
        public TrailersSource o = TrailersSource.a;
        public Headers.Builder f = new Headers.Builder();

        public static void b(String str, Response response) {
            if (response != null) {
                if (response.p != null) {
                    f6.g(str.concat(".networkResponse != null"));
                } else if (response.q != null) {
                    f6.g(str.concat(".cacheResponse != null"));
                } else {
                    if (response.r == null) {
                        return;
                    }
                    f6.g(str.concat(".priorResponse != null"));
                }
            }
        }

        public final Response a() {
            int i = this.c;
            if (i < 0) {
                g84.e(this.c, "code < 0: ");
                return null;
            }
            Request request = this.a;
            if (request == null) {
                l0.e("request == null");
                return null;
            }
            Protocol protocol = this.b;
            if (protocol == null) {
                l0.e("protocol == null");
                return null;
            }
            String str = this.d;
            if (str != null) {
                return new Response(request, protocol, str, i, this.e, this.f.b(), this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o);
            }
            l0.e("message == null");
            return null;
        }
    }

    public Response(Request request, Protocol protocol, String str, int i, Handshake handshake, Headers headers, ResponseBody responseBody, wi7 wi7Var, Response response, Response response2, Response response3, long j, long j2, Exchange exchange, TrailersSource trailersSource) {
        request.getClass();
        protocol.getClass();
        str.getClass();
        responseBody.getClass();
        trailersSource.getClass();
        this.a = request;
        this.b = protocol;
        this.c = str;
        this.d = i;
        this.e = handshake;
        this.f = headers;
        this.k = responseBody;
        this.n = wi7Var;
        this.p = response;
        this.q = response2;
        this.r = response3;
        this.t = j;
        this.x = j2;
        this.y = exchange;
        this.G = trailersSource;
        boolean z = false;
        if (200 <= i && i < 300) {
            z = true;
        }
        this.H = z;
    }

    public static String b(String str, Response response) {
        response.getClass();
        String strD = response.f.d(str);
        if (strD == null) {
            return null;
        }
        return strD;
    }

    public final List a() {
        String str;
        Headers headers = this.f;
        int i = this.d;
        if (i == 401) {
            str = "WWW-Authenticate";
        } else {
            if (i != 407) {
                return ov2.a;
            }
            str = "Proxy-Authenticate";
        }
        hy0 hy0Var = HttpHeaders.a;
        ArrayList arrayList = new ArrayList();
        int size = headers.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (str.equalsIgnoreCase(headers.e(i2))) {
                nw0 nw0Var = new nw0();
                nw0Var.Z(headers.g(i2));
                try {
                    HttpHeaders.b(nw0Var, arrayList);
                } catch (EOFException e) {
                    Platform platform = Platform.a;
                    Platform.a.j(5, "Unable to parse challenge", e);
                }
            }
        }
        return arrayList;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.k.close();
    }

    public final Builder g() {
        Builder builder = new Builder();
        builder.c = -1;
        builder.g = ResponseBody.b;
        builder.o = TrailersSource.a;
        builder.a = this.a;
        builder.b = this.b;
        builder.c = this.d;
        builder.d = this.c;
        builder.e = this.e;
        builder.f = this.f.f();
        builder.g = this.k;
        builder.h = this.n;
        builder.i = this.p;
        builder.j = this.q;
        builder.k = this.r;
        builder.l = this.t;
        builder.m = this.x;
        builder.n = this.y;
        builder.o = this.G;
        return builder;
    }

    public final ResponseBody$Companion$asResponseBody$1 h(long j) {
        ResponseBody responseBody = this.k;
        tf6 tf6VarPeek = responseBody.m().peek();
        nw0 nw0Var = new nw0();
        tf6VarPeek.request(j);
        nw0Var.G(tf6VarPeek, Math.min(j, tf6VarPeek.b.b));
        ResponseBody$Companion$asResponseBody$1 responseBody$Companion$asResponseBody$1 = ResponseBody.b;
        return new ResponseBody$Companion$asResponseBody$1(responseBody.j(), nw0Var.b, nw0Var);
    }

    public final String toString() {
        return "Response{protocol=" + this.b + ", code=" + this.d + ", message=" + this.c + ", url=" + this.a.a + '}';
    }
}
