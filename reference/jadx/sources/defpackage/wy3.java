package defpackage;

import java.util.Map;
import java.util.TreeMap;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wy3 implements Interceptor {
    public final String a;

    public wy3(TreeMap treeMap) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : treeMap.entrySet()) {
            sb.append((String) entry.getKey());
            sb.append('=');
            sb.append((String) entry.getValue());
            sb.append("; ");
        }
        sb.append("Domain=api.pcloud.com; Path=/; Secure; HttpOnly");
        this.a = sb.toString();
    }

    @Override // okhttp3.Interceptor
    public final Response a(RealInterceptorChain realInterceptorChain) {
        Request.Builder builderA = realInterceptorChain.e.a();
        builderA.c.d("User-Agent", "pCloud SDK Java 1.11.0");
        String str = this.a;
        str.getClass();
        builderA.c.a("Cookie", str);
        return realInterceptorChain.b(new Request(builderA));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || wy3.class != obj.getClass()) {
            return false;
        }
        return this.a.equals(((wy3) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }
}
