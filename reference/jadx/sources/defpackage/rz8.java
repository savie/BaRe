package defpackage;

import com.github.luben.zstd.ZstdInputStream;
import java.io.BufferedInputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rz8 extends yp1 {
    public final ZstdInputStream a;

    public rz8(BufferedInputStream bufferedInputStream) {
        vu0 vu0VarB = wu0.b();
        vu0VarB.k = new y4(bufferedInputStream);
        this.a = new ZstdInputStream(new wu0(vu0VarB));
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.a.close();
    }

    @Override // java.io.InputStream
    public final synchronized void mark(int i) {
        this.a.mark(i);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.a.markSupported();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        return this.a.read(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public final synchronized void reset() {
        this.a.reset();
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        return n84.c(this.a, j);
    }

    public final String toString() {
        return this.a.toString();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public final int read() {
        return this.a.read();
    }
}
