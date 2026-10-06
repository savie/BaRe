package okhttp3.internal.http;

import defpackage.ai6;
import defpackage.tf6;
import defpackage.zw0;
import okhttp3.MediaType;
import okhttp3.ResponseBody;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class RealResponseBody extends ResponseBody {
    public final String c;
    public final long d;
    public final tf6 e;

    public RealResponseBody(String str, long j, tf6 tf6Var) {
        this.c = str;
        this.d = j;
        this.e = tf6Var;
    }

    @Override // okhttp3.ResponseBody
    public final long h() {
        return this.d;
    }

    @Override // okhttp3.ResponseBody
    public final MediaType j() {
        String str = this.c;
        if (str != null) {
            ai6 ai6Var = MediaType.d;
            try {
                return MediaType.Companion.a(str);
            } catch (IllegalArgumentException unused) {
            }
        }
        return null;
    }

    @Override // okhttp3.ResponseBody
    public final zw0 m() {
        return this.e;
    }
}
