package defpackage;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import com.nimbusds.jose.jwk.source.JWKSourceBuilder;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$toRequestBody$1;
import okhttp3.RequestBody$Companion$toRequestBody$3;
import okhttp3.Response;
import okhttp3.internal.connection.RealCall;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gq8 {
    public final OkHttpClient a;
    public final mt3 b;
    public final bt3 c;
    public final long d;
    public final HttpUrl e;

    public gq8(OkHttpClient okHttpClient, String str) {
        eq8 eq8Var = eq8.a;
        fq8 fq8Var = fq8.a;
        str.getClass();
        this.a = okHttpClient;
        this.b = eq8Var;
        this.c = fq8Var;
        this.d = JWKSourceBuilder.DEFAULT_CACHE_REFRESH_TIMEOUT;
        this.e = HttpUrl.Companion.b(nq7.b0(str, '/') ? str : str.concat("/"));
    }

    public static String h(String str) {
        HttpUrl httpUrlB;
        String strD0 = nq7.D0(str, '?');
        try {
            httpUrlB = HttpUrl.Companion.b(strD0);
        } catch (IllegalArgumentException unused) {
            httpUrlB = null;
        }
        if (httpUrlB != null) {
            strD0 = httpUrlB.b();
        }
        return nq7.K0(strD0, '/');
    }

    public static void k(Response response, String str, String str2) throws kq8 {
        if (!response.H && response.d != 207) {
            throw l(response, str, str2);
        }
    }

    public static kq8 l(Response response, String str, String str2) {
        Object bn6Var;
        int i = response.d;
        String str3 = response.c;
        try {
            bn6Var = response.k.n();
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        if (bn6Var instanceof bn6) {
            bn6Var = null;
        }
        return new kq8(i, str, str2, str3);
    }

    public static Headers m(Map map) {
        Headers.Builder builder = new Headers.Builder();
        for (Map.Entry entry : map.entrySet()) {
            builder.d((String) entry.getKey(), (String) entry.getValue());
        }
        return builder.b();
    }

    public final void a(Map map, String str) {
        map.getClass();
        Request.Builder builder = new Request.Builder();
        builder.a = n(nq7.b0(str, '/') ? str : str.concat("/"));
        builder.c = m(map).f();
        builder.c("MKCOL", null);
        Response responseD = d(new Request(builder), null);
        try {
            if (!responseD.H && responseD.d != 405) {
                throw l(responseD, "MKCOL", str);
            }
            responseD.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseD, th);
                throw th2;
            }
        }
    }

    public final void b(String str) {
        str.getClass();
        HttpUrl httpUrlN = n(str);
        Request.Builder builder = new Request.Builder();
        builder.a = httpUrlN;
        Request.Builder.a(builder);
        Response responseD = d(new Request(builder), null);
        try {
            int i = responseD.d;
            if (i == 404 || i == 410) {
                responseD.close();
                return;
            }
            if (!responseD.H) {
                throw l(responseD, "DELETE", str);
            }
            responseD.close();
            if (!nq7.Z(httpUrlN.d, "123pan", true)) {
                return;
            }
            long j = this.d;
            if (j < 0) {
                f6.g(u48.l(j, "Invalid delete confirmation timeout: "));
                return;
            }
            long nanos = TimeUnit.MILLISECONDS.toNanos(j) + ((Number) this.c.invoke()).longValue();
            while (true) {
                long j2 = j(nanos);
                if (j2 <= 0) {
                    throw c(str);
                }
                if (!e(str, Long.valueOf(j2))) {
                    return;
                }
                long j3 = j(nanos);
                if (j3 <= 0) {
                    throw c(str);
                }
                try {
                    this.b.invoke(Long.valueOf(Math.min(1000L, j3)));
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    throw new IOException("Interrupted while confirming DELETE ".concat(str), e);
                }
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseD, th);
                throw th2;
            }
        }
    }

    public final IOException c(String str) {
        StringBuilder sbO = u48.o("DELETE ", str, this.d, " did not remove the resource after ");
        sbO.append(" ms");
        return new IOException(sbO.toString());
    }

    public final Response d(Request request, Long l) {
        OkHttpClient okHttpClient = this.a;
        okHttpClient.getClass();
        RealCall realCall = new RealCall(okHttpClient, request);
        if (l != null) {
            long jLongValue = l.longValue();
            if (jLongValue < 1) {
                jLongValue = 1;
            }
            realCall.e.g(jLongValue, TimeUnit.MILLISECONDS);
        }
        return realCall.g();
    }

    public final boolean e(String str, Long l) {
        boolean z = false;
        Response responseD = d(i(0, str, null), l);
        try {
            int i = responseD.d;
            if (!(i == 404 || i == 410)) {
                if (!(responseD.H || i == 207)) {
                    throw l(responseD, "PROPFIND", str);
                }
                z = true;
            }
            responseD.close();
            return z;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseD, th);
                throw th2;
            }
        }
    }

    public final String f(Map map, String str) {
        Request.Builder builder = new Request.Builder();
        builder.a = n(str);
        builder.c = m(map).f();
        builder.b();
        Response responseD = d(new Request(builder), null);
        try {
            k(responseD, "GET", str);
            String strN = responseD.k.n();
            responseD.close();
            return strN;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseD, th);
                throw th2;
            }
        }
    }

    public final void g(String str, String str2, Map map) {
        map.getClass();
        Request.Builder builder = new Request.Builder();
        builder.a = n(str);
        builder.c("MOVE", null);
        builder.c = m(map).f();
        builder.c.d("Destination", n(str2).h);
        Response responseD = d(xs1.o(builder.c, "Overwrite", "T", builder), null);
        try {
            k(responseD, "MOVE", str);
            responseD.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(responseD, th);
                throw th2;
            }
        }
    }

    public final Request i(int i, String str, String str2) {
        RequestBody$Companion$toRequestBody$3 requestBody$Companion$toRequestBody$3A;
        Request.Builder builder = new Request.Builder();
        builder.a = n(str);
        String strValueOf = String.valueOf(i);
        strValueOf.getClass();
        builder.c.d("Depth", strValueOf);
        if (str2 != null) {
            RequestBody$Companion$toRequestBody$1 requestBody$Companion$toRequestBody$1 = RequestBody.a;
            ai6 ai6Var = MediaType.d;
            requestBody$Companion$toRequestBody$3A = RequestBody.Companion.a(str2, MediaType.Companion.a("application/xml; charset=utf-8"));
        } else {
            requestBody$Companion$toRequestBody$3A = null;
        }
        builder.c("PROPFIND", requestBody$Companion$toRequestBody$3A);
        return new Request(builder);
    }

    public final long j(long j) {
        long jLongValue = j - ((Number) this.c.invoke()).longValue();
        if (jLongValue <= 0) {
            return 0L;
        }
        long j2 = jLongValue / 1000000;
        if (j2 < 1) {
            return 1L;
        }
        return j2;
    }

    public final HttpUrl n(String str) {
        if (uq7.V(str, "http://", false) || uq7.V(str, "https://", false)) {
            return HttpUrl.Companion.b(str);
        }
        String strI0 = nq7.I0(str, '/');
        HttpUrl.Builder builderG = this.e.g();
        if (strI0.length() > 0) {
            builderG.a(uq7.T(uq7.T(uq7.T(strI0, TokenAuthenticationScheme.SCHEME_DELIMITER, "%20"), "(", "%28"), ")", "%29"));
        }
        return builderG.e();
    }
}
