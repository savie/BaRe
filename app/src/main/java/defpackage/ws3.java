package defpackage;

import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import org.swiftapps.filesystem.a;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ws3 implements xs3 {
    public final RandomAccessFile a;
    public final FileChannel b;

    public ws3(RandomAccessFile randomAccessFile) {
        this.a = randomAccessFile;
        FileChannel channel = randomAccessFile.getChannel();
        channel.getClass();
        this.b = channel;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        f13.a(this.b);
        f13.a(this.a);
    }

    @Override // defpackage.xs3
    public final void k(long j, byte[] bArr, int i, int i2) throws IOException {
        a.a(this.b, j, bArr, i, i2);
    }
}
