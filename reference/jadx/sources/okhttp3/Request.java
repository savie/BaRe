package okhttp3;

import defpackage.c6;
import defpackage.eq3;
import defpackage.f6;
import defpackage.fl1;
import defpackage.l0;
import defpackage.pv2;
import defpackage.pw5;
import defpackage.uq7;
import defpackage.x65;
import java.util.LinkedHashMap;
import java.util.Map;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal.http.HttpMethod;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Request {
    public final HttpUrl a;
    public final String b;
    public final Headers c;
    public final RequestBody d;
    public final Map e;
    public CacheControl f;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class Builder {
        public HttpUrl a;
        public RequestBody d;
        public Map e = pv2.a;
        public String b = "GET";
        public Headers.Builder c = new Headers.Builder();

        public static void a(Builder builder) {
            builder.c("DELETE", RequestBody.a);
        }

        public final void b() {
            c("GET", null);
        }

        public final void c(String str, RequestBody requestBody) {
            str.getClass();
            if (str.length() <= 0) {
                c6.f("method.isEmpty() == true");
                return;
            }
            if (requestBody == null) {
                if (str.equals("POST") || str.equals("PUT") || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("QUERY") || str.equals("REPORT")) {
                    f6.g(eq3.k("method ", str, " must have a request body."));
                    return;
                }
            } else if (!HttpMethod.a(str)) {
                f6.g(eq3.k("method ", str, " must not have a request body."));
                return;
            }
            this.b = str;
            this.d = requestBody;
        }

        public final void d(String str) {
            str.getClass();
            if (uq7.V(str, "ws:", true)) {
                str = "http:".concat(str.substring(3));
            } else if (uq7.V(str, "wss:", true)) {
                str = "https:".concat(str.substring(4));
            }
            this.a = HttpUrl.Companion.b(str);
        }
    }

    public Request(Builder builder) {
        HttpUrl httpUrl = builder.a;
        if (httpUrl == null) {
            l0.e("url == null");
            throw null;
        }
        this.a = httpUrl;
        this.b = builder.b;
        Headers headersB = builder.c.b();
        this.c = headersB;
        RequestBody requestBody = builder.d;
        this.d = requestBody;
        this.e = x65.u0(builder.e);
        if (!"upgrade".equalsIgnoreCase(headersB.d("Connection")) || requestBody == null || requestBody.a() == 0) {
            return;
        }
        c6.f("expected a null or empty request body with 'Connection: upgrade'");
        throw null;
    }

    public final Builder a() {
        Builder builder = new Builder();
        Map linkedHashMap = pv2.a;
        builder.e = linkedHashMap;
        builder.a = this.a;
        builder.b = this.b;
        builder.d = this.d;
        Map map = this.e;
        if (!map.isEmpty()) {
            linkedHashMap = new LinkedHashMap(map);
        }
        builder.e = linkedHashMap;
        builder.c = this.c.f();
        return builder;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append("Request{method=");
        sb.append(this.b);
        sb.append(", url=");
        sb.append(this.a);
        Headers headers = this.c;
        if (headers.size() != 0) {
            sb.append(", headers=[");
            int i = 0;
            for (pw5 pw5Var : headers) {
                int i2 = i + 1;
                if (i < 0) {
                    fl1.F0();
                    throw null;
                }
                pw5 pw5Var2 = pw5Var;
                String str = (String) pw5Var2.a;
                String str2 = (String) pw5Var2.b;
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(str);
                sb.append(':');
                if (_UtilCommonKt.k(str)) {
                    str2 = "██";
                }
                sb.append(str2);
                i = i2;
            }
            sb.append(']');
        }
        Map map = this.e;
        if (!map.isEmpty()) {
            sb.append(", tags=");
            sb.append(map);
        }
        sb.append('}');
        return sb.toString();
    }
}
