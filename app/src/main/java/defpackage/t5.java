package defpackage;

import java.io.IOException;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t5 extends pf6 {
    public final q80 a;

    public t5(q80 q80Var) {
        this.a = q80Var;
    }

    @Override // okhttp3.Interceptor
    public final Response a(RealInterceptorChain realInterceptorChain) throws IOException {
        try {
            String str = (String) this.a.b;
            Request requestO = realInterceptorChain.e;
            if (str != null) {
                Request.Builder builderA = requestO.a();
                requestO = xs1.o(builderA.c, "Authorization", "Bearer ".concat(str), builderA);
            }
            return realInterceptorChain.b(requestO);
        } catch (Exception e) {
            throw new IOException("Error while providing access token.", e);
        }
    }
}
