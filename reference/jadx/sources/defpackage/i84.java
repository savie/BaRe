package defpackage;

import java.io.Closeable;
import java.util.stream.Stream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i84 implements Closeable {
    public final Stream a;

    public i84(Stream stream) {
        this.a = stream;
    }

    public static i84 a(Stream stream) {
        return stream != null ? new i84(stream) : a(Stream.empty());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.a.close();
    }
}
