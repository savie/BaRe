package okhttp3.internal;

import defpackage.f48;
import defpackage.ij7;
import defpackage.nw0;
import defpackage.tf6;
import defpackage.zw0;
import okhttp3.MediaType;
import okhttp3.ResponseBody;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class UnreadableResponseBody extends ResponseBody implements ij7 {
    public final MediaType c;
    public final long d;

    public UnreadableResponseBody(MediaType mediaType, long j) {
        this.c = mediaType;
        this.d = j;
    }

    @Override // defpackage.ij7
    public final long H(nw0 nw0Var, long j) {
        nw0Var.getClass();
        throw new IllegalStateException("Unreadable ResponseBody! These Response objects have bodies that are stripped:\n * Response.cacheResponse\n * Response.networkResponse\n * Response.priorResponse\n * EventSourceListener\n * WebSocketListener\n(It is safe to call contentType() and contentLength() on these response bodies.)");
    }

    @Override // defpackage.ij7
    public final f48 d() {
        return f48.d;
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
        return new tf6(this);
    }

    @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
