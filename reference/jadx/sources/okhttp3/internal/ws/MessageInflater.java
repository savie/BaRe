package okhttp3.internal.ws;

import defpackage.cc4;
import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MessageInflater implements Closeable {
    public cc4 a;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        cc4 cc4Var = this.a;
        if (cc4Var != null) {
            cc4Var.close();
        }
        this.a = null;
    }
}
