package okhttp3.internal.connection;

import defpackage.f48;
import defpackage.y5;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2ExchangeCodec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ConnectInterceptor implements Interceptor {
    public static final ConnectInterceptor a = new ConnectInterceptor();

    @Override // okhttp3.Interceptor
    public final Response a(RealInterceptorChain realInterceptorChain) throws IOException {
        ExchangeCodec http1ExchangeCodec;
        RealCall realCall = realInterceptorChain.a;
        synchronized (realCall) {
            try {
                if (!realCall.y) {
                    throw new IllegalStateException("released");
                }
                if (realCall.x) {
                    throw new IllegalStateException("Check failed.");
                }
                if (realCall.t) {
                    throw new IllegalStateException("Check failed.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ExchangeFinder exchangeFinder = realCall.n;
        exchangeFinder.getClass();
        RealConnection realConnectionA = exchangeFinder.a();
        OkHttpClient okHttpClient = realCall.a;
        realConnectionA.getClass();
        okHttpClient.getClass();
        int i = realInterceptorChain.g;
        BufferedSocket bufferedSocket = realConnectionA.p;
        Http2Connection http2Connection = realConnectionA.t;
        if (http2Connection != null) {
            http1ExchangeCodec = new Http2ExchangeCodec(okHttpClient, realConnectionA, realInterceptorChain, http2Connection);
        } else {
            realConnectionA.f.setSoTimeout(i);
            f48 f48VarD = bufferedSocket.getSource().d();
            long j = i;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            f48VarD.g(j, timeUnit);
            bufferedSocket.a().d().g(realInterceptorChain.h, timeUnit);
            http1ExchangeCodec = new Http1ExchangeCodec(okHttpClient, realConnectionA, bufferedSocket);
        }
        Exchange exchange = new Exchange(realCall, realCall.d, exchangeFinder, http1ExchangeCodec);
        realCall.r = exchange;
        realCall.H = exchange;
        synchronized (realCall) {
            realCall.t = true;
            realCall.x = true;
        }
        if (!realCall.G) {
            return RealInterceptorChain.a(realInterceptorChain, 0, exchange, null, 61).b(realInterceptorChain.e);
        }
        y5.m("Canceled");
        return null;
    }
}
