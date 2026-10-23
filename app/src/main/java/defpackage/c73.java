package defpackage;

import java.io.Closeable;
import java.nio.channels.FileChannel;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class c73 implements Closeable {
    public final FileChannel a;
    public final Closeable b;

    public c73(FileChannel fileChannel, Closeable closeable) {
        this.a = fileChannel;
        this.b = closeable;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        f13.a(this.a);
        f13.a(this.b);
    }
}
