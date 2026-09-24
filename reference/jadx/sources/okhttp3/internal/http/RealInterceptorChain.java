package okhttp3.internal.http;

import defpackage.f6;
import defpackage.l0;
import java.util.ArrayList;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class RealInterceptorChain implements Interceptor.Chain {
    public final RealCall a;
    public final ArrayList b;
    public final int c;
    public final Exchange d;
    public final Request e;
    public final int f;
    public final int g;
    public final int h;
    public int i;

    public RealInterceptorChain(RealCall realCall, ArrayList arrayList, int i, Exchange exchange, Request request, int i2, int i3, int i4) {
        request.getClass();
        this.a = realCall;
        this.b = arrayList;
        this.c = i;
        this.d = exchange;
        this.e = request;
        this.f = i2;
        this.g = i3;
        this.h = i4;
    }

    public static RealInterceptorChain a(RealInterceptorChain realInterceptorChain, int i, Exchange exchange, Request request, int i2) {
        if ((i2 & 1) != 0) {
            i = realInterceptorChain.c;
        }
        int i3 = i;
        if ((i2 & 2) != 0) {
            exchange = realInterceptorChain.d;
        }
        Exchange exchange2 = exchange;
        if ((i2 & 4) != 0) {
            request = realInterceptorChain.e;
        }
        Request request2 = request;
        int i4 = realInterceptorChain.f;
        int i5 = realInterceptorChain.g;
        int i6 = realInterceptorChain.h;
        request2.getClass();
        return new RealInterceptorChain(realInterceptorChain.a, realInterceptorChain.b, i3, exchange2, request2, i4, i5, i6);
    }

    public final Response b(Request request) {
        request.getClass();
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        int i = this.c;
        if (i >= size) {
            l0.e("Check failed.");
            return null;
        }
        this.i++;
        Exchange exchange = this.d;
        if (exchange != null) {
            if (!exchange.c.b().d(request.a)) {
                f6.h(arrayList.get(i - 1), " must retain the same host and port", "network interceptor ");
                return null;
            }
            if (this.i != 1) {
                f6.h(arrayList.get(i - 1), " must call proceed() exactly once", "network interceptor ");
                return null;
            }
        }
        int i2 = i + 1;
        RealInterceptorChain realInterceptorChainA = a(this, i2, null, request, 58);
        Interceptor interceptor = (Interceptor) arrayList.get(i);
        Response responseA = interceptor.a(realInterceptorChainA);
        if (responseA == null) {
            throw new NullPointerException("interceptor " + interceptor + " returned null");
        }
        if (exchange == null || i2 >= arrayList.size() || realInterceptorChainA.i == 1) {
            return responseA;
        }
        f6.h(interceptor, " must call proceed() exactly once", "network interceptor ");
        return null;
    }
}
