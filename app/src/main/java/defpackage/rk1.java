package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rk1 extends OutputStream {
    public final DeflaterOutputStream a;
    public final Deflater b;

    public rk1(DeflaterOutputStream deflaterOutputStream, Deflater deflater) {
        this.a = deflaterOutputStream;
        this.b = deflater;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Deflater deflater = this.b;
        try {
            this.a.close();
        } finally {
            deflater.end();
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        this.a.write(bArr);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        this.a.write(bArr, i, i2);
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        this.a.write(i);
    }
}
