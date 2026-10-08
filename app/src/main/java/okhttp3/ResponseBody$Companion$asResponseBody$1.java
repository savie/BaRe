package okhttp3;

import defpackage.nw0;
import defpackage.zw0;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ResponseBody$Companion$asResponseBody$1 extends ResponseBody {
    public final /* synthetic */ MediaType c;
    public final /* synthetic */ long d;
    public final /* synthetic */ nw0 e;

    public ResponseBody$Companion$asResponseBody$1(MediaType mediaType, long j, nw0 nw0Var) {
        this.c = mediaType;
        this.d = j;
        this.e = nw0Var;
    }

    @Override // okhttp3.ResponseBody
    public final long h() {
        return this.d;
    }

    @Override // okhttp3.ResponseBody
    public final MediaType j() {
        return this.c;
    }

    @Override // okhttp3.ResponseBody
    public final zw0 m() {
        return this.e;
    }
}
