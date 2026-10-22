package defpackage;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import okhttp3.Credentials;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r36 implements Interceptor {
    public final String a;
    public final String b;

    public r36(String str, String str2) {
        str.getClass();
        this.a = str;
        this.b = str2;
    }

    @Override // okhttp3.Interceptor
    public final Response a(RealInterceptorChain realInterceptorChain) {
        Request.Builder builderA = realInterceptorChain.e.a();
        Charset charset = StandardCharsets.UTF_8;
        charset.getClass();
        builderA.c.d("Authorization", Credentials.a(this.a, this.b, charset));
        return realInterceptorChain.b(new Request(builderA));
    }
}
