package defpackage;

import java.io.FilterInputStream;
import java.io.InputStream;
import okhttp3.Response;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ve1 extends FilterInputStream {
    public final /* synthetic */ Response a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ve1(Response response, InputStream inputStream) {
        super(inputStream);
        this.a = response;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.a.close();
    }
}
