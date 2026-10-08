package okhttp3;

import defpackage.yw0;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class RequestBody$Companion$toRequestBody$3 extends RequestBody {
    public final /* synthetic */ MediaType b;
    public final /* synthetic */ int c;
    public final /* synthetic */ byte[] d;

    public RequestBody$Companion$toRequestBody$3(byte[] bArr, int i, MediaType mediaType) {
        this.b = mediaType;
        this.c = i;
        this.d = bArr;
    }

    @Override // okhttp3.RequestBody
    public final long a() {
        return this.c;
    }

    @Override // okhttp3.RequestBody
    public final MediaType b() {
        return this.b;
    }

    @Override // okhttp3.RequestBody
    public final void d(yw0 yw0Var) {
        yw0Var.write(this.d, 0, this.c);
    }
}
