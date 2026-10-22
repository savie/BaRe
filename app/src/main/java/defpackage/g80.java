package defpackage;

import java.util.concurrent.ConcurrentHashMap;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.platform.Platform;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g80 implements Interceptor {
    public final ConcurrentHashMap a;
    public final sl4 b;

    public g80(ConcurrentHashMap concurrentHashMap) {
        sl4 sl4Var = new sl4();
        this.a = concurrentHashMap;
        this.b = sl4Var;
    }

    @Override // okhttp3.Interceptor
    public final Response a(RealInterceptorChain realInterceptorChain) {
        Request request = realInterceptorChain.e;
        String strZ = this.b.z(request);
        kz0 kz0Var = (kz0) this.a.get(strZ);
        Exchange exchange = realInterceptorChain.d;
        RealConnection realConnectionC = exchange != null ? exchange.c() : null;
        Request requestA = kz0Var != null ? kz0Var.a(realConnectionC != null ? realConnectionC.d : null, request) : null;
        if (requestA == null) {
            requestA = request;
        }
        Response responseB = realInterceptorChain.b(requestA);
        int i = responseB.d;
        if (kz0Var == null || i != 401 || this.a.remove(strZ) == null) {
            return responseB;
        }
        responseB.k.close();
        Platform.a.j(4, "Cached authentication expired. Sending a new request.", null);
        return realInterceptorChain.b(request);
    }
}
