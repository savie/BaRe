package defpackage;

import okhttp3.HttpUrl;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class of6 {
    public static final HttpUrl c;
    public t5 a;
    public HttpUrl b;

    static {
        HttpUrl httpUrlB;
        try {
            httpUrlB = HttpUrl.Companion.b("https://api.pcloud.com");
        } catch (IllegalArgumentException unused) {
            httpUrlB = null;
        }
        c = httpUrlB;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && of6.class == obj.getClass() && this.a == ((of6) obj).a;
    }

    public final int hashCode() {
        t5 t5Var = this.a;
        if (t5Var != null) {
            return t5Var.hashCode();
        }
        return 0;
    }
}
