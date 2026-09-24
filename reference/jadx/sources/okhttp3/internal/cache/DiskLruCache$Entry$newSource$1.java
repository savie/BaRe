package okhttp3.internal.cache;

import defpackage.ar3;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class DiskLruCache$Entry$newSource$1 extends ar3 {
    public boolean b;

    @Override // defpackage.ar3, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        if (this.b) {
            return;
        }
        this.b = true;
        throw null;
    }
}
