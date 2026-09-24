package defpackage;

import android.os.Build;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ch8 implements Interceptor {
    @Override // okhttp3.Interceptor
    public final Response a(RealInterceptorChain realInterceptorChain) {
        Request.Builder builderA = realInterceptorChain.e.a();
        builderA.c.d("User-Agent", "SwiftBackup / 5.1.0 (620); ".concat(Build.MANUFACTURER + "/" + Build.MODEL));
        return realInterceptorChain.b(new Request(builderA));
    }
}
