package okhttp3.internal.http;

import defpackage.el1;
import defpackage.l0;
import defpackage.ov2;
import defpackage.pe4;
import defpackage.yc9;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.UnreadableResponseBodyKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.CallConnectionUser;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.ExchangeFinder;
import okhttp3.internal.connection.FastFallbackExchangeFinder;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RealConnectionPool;
import okhttp3.internal.connection.RealRoutePlanner;
import okhttp3.internal.connection.RoutePlanner;
import okhttp3.internal.connection.SequentialExchangeFinder;
import okhttp3.internal.http2.ConnectionShutdownException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class RetryAndFollowUpInterceptor implements Interceptor {
    public final OkHttpClient a;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    public RetryAndFollowUpInterceptor(OkHttpClient okHttpClient) {
        okHttpClient.getClass();
        this.a = okHttpClient;
    }

    public static int d(Response response, int i) {
        String strB = Response.b("Retry-After", response);
        if (strB == null) {
            return i;
        }
        Pattern patternCompile = Pattern.compile("\\d+");
        patternCompile.getClass();
        if (!patternCompile.matcher(strB).matches()) {
            return Integer.MAX_VALUE;
        }
        Integer numValueOf = Integer.valueOf(strB);
        numValueOf.getClass();
        return numValueOf.intValue();
    }

    @Override // okhttp3.Interceptor
    public final Response a(RealInterceptorChain realInterceptorChain) throws Throwable {
        Response response;
        boolean z;
        boolean z2;
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifier;
        CertificatePinner certificatePinner;
        Request request = realInterceptorChain.e;
        RealCall realCall = realInterceptorChain.a;
        List listF1 = ov2.a;
        Response responseA = null;
        int i = 0;
        Request requestB = request;
        while (true) {
            boolean z3 = true;
            while (true) {
                requestB.getClass();
                if (realCall.r != null) {
                    l0.e("Check failed.");
                    return null;
                }
                synchronized (realCall) {
                    try {
                        if (realCall.x) {
                            throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()");
                        }
                        if (realCall.t) {
                            throw new IllegalStateException("Check failed.");
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (z3) {
                    OkHttpClient okHttpClient = realCall.a;
                    TaskRunner taskRunner = okHttpClient.B;
                    RealConnectionPool realConnectionPool = realCall.c;
                    int i2 = okHttpClient.w;
                    int i3 = okHttpClient.x;
                    int i4 = realInterceptorChain.f;
                    response = null;
                    int i5 = realInterceptorChain.g;
                    boolean z4 = okHttpClient.e;
                    boolean z5 = okHttpClient.f;
                    HttpUrl httpUrl = requestB.a;
                    httpUrl.getClass();
                    if (httpUrl.f()) {
                        SSLSocketFactory sSLSocketFactory2 = okHttpClient.o;
                        if (sSLSocketFactory2 == null) {
                            l0.e("CLEARTEXT-only client");
                            return null;
                        }
                        HostnameVerifier hostnameVerifier2 = okHttpClient.s;
                        certificatePinner = okHttpClient.t;
                        sSLSocketFactory = sSLSocketFactory2;
                        hostnameVerifier = hostnameVerifier2;
                    } else {
                        sSLSocketFactory = null;
                        hostnameVerifier = null;
                        certificatePinner = null;
                    }
                    RealRoutePlanner realRoutePlanner = new RealRoutePlanner(taskRunner, realConnectionPool, i2, i3, i4, i5, 0, z4, z5, new Address(httpUrl.d, httpUrl.e, okHttpClient.k, okHttpClient.n, sSLSocketFactory, hostnameVerifier, certificatePinner, okHttpClient.m, okHttpClient.r, okHttpClient.q, okHttpClient.l), realCall.a.A, new CallConnectionUser(realCall, realCall.c.b, realInterceptorChain));
                    OkHttpClient okHttpClient2 = realCall.a;
                    realCall.n = okHttpClient2.f ? new FastFallbackExchangeFinder(realRoutePlanner, okHttpClient2.B) : new SequentialExchangeFinder(realRoutePlanner);
                } else {
                    response = null;
                }
                try {
                    if (realCall.G) {
                        z = true;
                        try {
                            throw new IOException("Canceled");
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } else {
                        try {
                            try {
                            } catch (Throwable th3) {
                                th = th3;
                                z2 = true;
                            }
                        } catch (IOException e) {
                            boolean zC = c(e, realCall, requestB);
                            realCall.d.getClass();
                            if (!zC) {
                                byte[] bArr = _UtilCommonKt.a;
                                Iterator it = listF1.iterator();
                                while (it.hasNext()) {
                                    yc9.a(e, (Exception) it.next());
                                }
                                throw e;
                            }
                            listF1 = el1.f1(e, listF1);
                            realCall.c(true);
                            z3 = false;
                            z2 = z;
                            realCall.c(z2);
                            throw th;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    z = true;
                }
                z2 = z;
                realCall.c(z2);
                throw th;
            }
            Response.Builder builderG = realInterceptorChain.b(requestB).g();
            builderG.a = requestB;
            builderG.k = responseA != null ? UnreadableResponseBodyKt.a(responseA) : response;
            responseA = builderG.a();
            requestB = b(responseA, realCall.r);
            try {
                if (requestB == null) {
                    realCall.d.getClass();
                    realCall.c(false);
                    return responseA;
                }
                RequestBody requestBody = requestB.d;
                if (requestBody != null && requestBody.c()) {
                    realCall.d.getClass();
                    realCall.c(false);
                    return responseA;
                }
                _UtilCommonKt.b(responseA.k);
                i++;
                EventListener eventListener = realCall.d;
                if (i > 20) {
                    eventListener.getClass();
                    throw new ProtocolException("Too many follow-up requests: " + i);
                }
                eventListener.getClass();
                realCall.c(true);
            } catch (Throwable th5) {
                th = th5;
                z2 = false;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x012f  */
    /* JADX WARN: Code duplicated, block: B:106:0x0140 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:107:0x0142  */
    /* JADX WARN: Code duplicated, block: B:110:0x0149  */
    /* JADX WARN: Code duplicated, block: B:113:0x0166  */
    /* JADX WARN: Code duplicated, block: B:74:0x00da  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:80:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:85:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:86:0x0104  */
    /* JADX WARN: Code duplicated, block: B:96:0x0123  */
    public final Request b(Response response, Exchange exchange) throws ProtocolException {
        OkHttpClient okHttpClient;
        String strB;
        Request request;
        HttpUrl.Builder builder;
        HttpUrl httpUrlE;
        Request.Builder builderA;
        boolean z;
        RequestBody requestBody;
        Response response2;
        Route route = exchange != null ? exchange.c().d : null;
        int i = response.d;
        Request request2 = response.a;
        String str = request2.b;
        if (i == 307 || i == 308) {
            okHttpClient = this.a;
            if (okHttpClient.h) {
                strB = Response.b("Location", response);
                request = response.a;
                if (strB != null) {
                    HttpUrl httpUrl = request.a;
                    httpUrl.getClass();
                    try {
                        builder = new HttpUrl.Builder();
                        builder.h(httpUrl, strB);
                    } catch (IllegalArgumentException unused) {
                        builder = null;
                    }
                    if (builder != null) {
                        httpUrlE = builder.e();
                    } else {
                        httpUrlE = null;
                    }
                    if (httpUrlE != null && (pe4.d(httpUrlE.a, request.a.a) || okHttpClient.i)) {
                        builderA = request.a();
                        if (HttpMethod.a(str)) {
                            int i2 = response.d;
                            z = !str.equals("PROPFIND") || i2 == 308 || i2 == 307;
                            if (!str.equals("PROPFIND") || i2 == 308 || i2 == 307) {
                                builderA.c(str, z ? request.d : null);
                            } else {
                                builderA.c("GET", null);
                            }
                            if (!z) {
                                builderA.c.c("Transfer-Encoding");
                                builderA.c.c("Content-Length");
                                builderA.c.c("Content-Type");
                            }
                        }
                        if (!_UtilJvmKt.a(request.a, httpUrlE)) {
                            builderA.c.c("Authorization");
                        }
                        builderA.a = httpUrlE;
                        return new Request(builderA);
                    }
                }
            }
        } else {
            if (i == 401) {
                return this.a.g.b(route, response);
            }
            if (i == 421) {
                RequestBody requestBody2 = request2.d;
                if ((requestBody2 == null || !requestBody2.c()) && exchange != null && !pe4.d(exchange.c.b().c().h.d, exchange.d.h().h().a.h.d)) {
                    RealConnection realConnectionC = exchange.c();
                    synchronized (realConnectionC) {
                        realConnectionC.y = true;
                    }
                    return response.a;
                }
            } else if (i == 503) {
                Response response3 = response.r;
                if ((response3 == null || response3.d != 503) && d(response, Integer.MAX_VALUE) == 0) {
                    return response.a;
                }
            } else {
                if (i == 407) {
                    route.getClass();
                    if (route.b.type() != Proxy.Type.HTTP) {
                        throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                    }
                    this.a.m.getClass();
                    return null;
                }
                if (i != 408) {
                    switch (i) {
                        case 300:
                        case 301:
                        case 302:
                        case 303:
                            okHttpClient = this.a;
                            if (okHttpClient.h) {
                                strB = Response.b("Location", response);
                                request = response.a;
                                if (strB != null) {
                                    HttpUrl httpUrl2 = request.a;
                                    httpUrl2.getClass();
                                    builder = new HttpUrl.Builder();
                                    builder.h(httpUrl2, strB);
                                    if (builder != null) {
                                        httpUrlE = builder.e();
                                    } else {
                                        httpUrlE = null;
                                    }
                                    if (httpUrlE != null) {
                                        builderA = request.a();
                                        if (HttpMethod.a(str)) {
                                            int i3 = response.d;
                                            if (str.equals("PROPFIND")) {
                                            }
                                            if (str.equals("PROPFIND")) {
                                                builderA.c(str, z ? request.d : null);
                                            } else {
                                                builderA.c(str, z ? request.d : null);
                                            }
                                            if (!z) {
                                                builderA.c.c("Transfer-Encoding");
                                                builderA.c.c("Content-Length");
                                                builderA.c.c("Content-Type");
                                            }
                                        }
                                        if (!_UtilJvmKt.a(request.a, httpUrlE)) {
                                            builderA.c.c("Authorization");
                                        }
                                        builderA.a = httpUrlE;
                                        return new Request(builderA);
                                    }
                                }
                            }
                        default:
                            return null;
                    }
                } else if (this.a.e && (((requestBody = request2.d) == null || !requestBody.c()) && (((response2 = response.r) == null || response2.d != 408) && d(response, 0) <= 0))) {
                    return response.a;
                }
            }
        }
        return null;
    }

    public final boolean c(IOException iOException, RealCall realCall, Request request) {
        RequestBody requestBody;
        boolean z = iOException instanceof ConnectionShutdownException;
        if (!this.a.e) {
            return false;
        }
        if ((!z && (((requestBody = request.d) != null && requestBody.c()) || (iOException instanceof FileNotFoundException))) || (iOException instanceof ProtocolException)) {
            return false;
        }
        if (iOException instanceof InterruptedIOException) {
            if (!(iOException instanceof SocketTimeoutException) || !z) {
                return false;
            }
        } else if (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        Exchange exchange = realCall.H;
        if (exchange == null || !exchange.f) {
            return false;
        }
        ExchangeFinder exchangeFinder = realCall.n;
        exchangeFinder.getClass();
        RoutePlanner routePlannerB = exchangeFinder.b();
        Exchange exchange2 = realCall.H;
        return routePlannerB.b(exchange2 != null ? exchange2.c() : null);
    }
}
