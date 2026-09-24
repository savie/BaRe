package defpackage;

import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kv0 extends RequestBody {
    public final /* synthetic */ MediaType b;
    public final /* synthetic */ byte[] c;
    public final /* synthetic */ iv0 d;

    public kv0(MediaType mediaType, byte[] bArr, iv0 iv0Var) {
        this.b = mediaType;
        this.c = bArr;
        this.d = iv0Var;
    }

    @Override // okhttp3.RequestBody
    public final long a() {
        return this.c.length;
    }

    @Override // okhttp3.RequestBody
    public final MediaType b() {
        return this.b;
    }

    @Override // okhttp3.RequestBody
    public final void d(yw0 yw0Var) {
        int i = 0;
        while (true) {
            byte[] bArr = this.c;
            if (i >= bArr.length) {
                return;
            }
            int iMin = Math.min(65536, bArr.length - i);
            yw0Var.write(bArr, i, iMin);
            this.d.invoke(Long.valueOf(iMin));
            i += iMin;
        }
    }
}
