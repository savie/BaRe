package defpackage;

import java.io.FilterInputStream;
import java.io.InputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import okhttp3.Response;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qk1 extends FilterInputStream {
    public final /* synthetic */ int a = 0;
    public final Object b;

    public qk1(InflaterInputStream inflaterInputStream, Inflater inflater) {
        super(inflaterInputStream);
        this.b = inflater;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                Inflater inflater = (Inflater) obj;
                try {
                    super.close();
                    return;
                } finally {
                    inflater.end();
                }
            default:
                f13.a((Response) obj);
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qk1(Response response, InputStream inputStream) {
        super(inputStream);
        this.b = response;
    }
}
