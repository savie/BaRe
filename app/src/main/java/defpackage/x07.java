package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x07 extends InputStream {
    public final RandomAccessFile a;
    public long b;

    public x07(RandomAccessFile randomAccessFile, long j) {
        this.a = randomAccessFile;
        this.b = j;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        bArr.getClass();
        long j = this.b;
        if (j <= 0) {
            return -1;
        }
        int i3 = this.a.read(bArr, i, (int) Math.min(i2, j));
        if (i3 == -1) {
            throw new EOFException("Truncated SBA entry payload");
        }
        this.b -= (long) i3;
        return i3;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        if (this.b <= 0) {
            return -1;
        }
        int i = this.a.read();
        if (i != -1) {
            this.b--;
            return i;
        }
        throw new EOFException("Truncated SBA entry payload");
    }
}
