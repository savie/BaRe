package okhttp3.internal.http;

import defpackage.e24;
import defpackage.tf6;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class BridgeInterceptor implements Interceptor {
    public final CookieJar a;

    public BridgeInterceptor(CookieJar cookieJar) {
        cookieJar.getClass();
        this.a = cookieJar;
    }

    @Override // okhttp3.Interceptor
    public final Response a(RealInterceptorChain realInterceptorChain) {
        ResponseBody responseBody;
        Request request = realInterceptorChain.e;
        Request.Builder builderA = request.a();
        HttpUrl httpUrl = request.a;
        Headers headers = request.c;
        RequestBody requestBody = request.d;
        if (requestBody != null) {
            MediaType mediaTypeB = requestBody.b();
            if (mediaTypeB != null) {
                String str = mediaTypeB.a;
                str.getClass();
                builderA.c.d("Content-Type", str);
            }
            long jA = requestBody.a();
            if (jA != -1) {
                String strValueOf = String.valueOf(jA);
                strValueOf.getClass();
                builderA.c.d("Content-Length", strValueOf);
                builderA.c.c("Transfer-Encoding");
            } else {
                builderA.c.d("Transfer-Encoding", "chunked");
                builderA.c.c("Content-Length");
            }
        }
        boolean z = false;
        if (headers.d("Host") == null) {
            builderA.c.d("Host", _UtilJvmKt.i(httpUrl, false));
        }
        if (headers.d("Connection") == null) {
            builderA.c.d("Connection", "Keep-Alive");
        }
        if (headers.d("Accept-Encoding") == null && headers.d("Range") == null) {
            builderA.c.d("Accept-Encoding", "gzip");
            z = true;
        }
        CookieJar cookieJar = this.a;
        cookieJar.b(httpUrl);
        if (headers.d("User-Agent") == null) {
            builderA.c.d("User-Agent", "okhttp/5.2.1");
        }
        Request request2 = new Request(builderA);
        Response responseB = realInterceptorChain.b(request2);
        Headers headers2 = responseB.f;
        HttpHeaders.d(cookieJar, request2.a, headers2);
        Response.Builder builderG = responseB.g();
        builderG.a = request2;
        if (z && "gzip".equalsIgnoreCase(Response.b("Content-Encoding", responseB)) && HttpHeaders.a(responseB) && (responseBody = responseB.k) != null) {
            e24 e24Var = new e24(responseBody.m());
            Headers.Builder builderF = headers2.f();
            builderF.c("Content-Encoding");
            builderF.c("Content-Length");
            builderG.f = builderF.b().f();
            builderG.g = new RealResponseBody(Response.b("Content-Type", responseB), -1L, new tf6(e24Var));
        }
        return builderG.a();
    }
}
