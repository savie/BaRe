package defpackage;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class m77 extends OutputStream {
    public final OutputStream a;
    public final long b;
    public final ja1 c;
    public final mi5 d;
    public long e;
    public volatile boolean f;
    public final byte[] k;

    public m77(OutputStream outputStream, long j, ja1 ja1Var, mi5 mi5Var) throws IOException {
        ja1Var.getClass();
        this.a = outputStream;
        this.b = j;
        this.c = ja1Var;
        this.d = mi5Var;
        try {
            ja1Var.a(this);
            this.k = new byte[1];
        } catch (IOException e) {
            f13.a(this.a);
            throw e;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f) {
            return;
        }
        this.f = true;
        ja1 ja1Var = this.c;
        synchronized (ja1Var.a) {
            ja1Var.b.remove(this);
        }
        f13.a(this.a);
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        if (this.f) {
            y5.m("Output stream closed.");
        } else {
            this.a.flush();
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        bArr.getClass();
        if (this.f) {
            y5.m("Output stream closed.");
            return;
        }
        if (i2 == 0) {
            return;
        }
        long j = i2;
        long j2 = this.e + j;
        long j3 = this.b;
        if (j2 > j3) {
            StringBuilder sbT = dj7.t("Chunk writer exceeded expected byte count. Expected=", ", Attempted=", j3);
            sbT.append(j2);
            throw new IOException(sbT.toString());
        }
        this.a.write(bArr, i, i2);
        this.e += j;
        this.d.invoke(Long.valueOf(j));
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        byte[] bArr = this.k;
        bArr[0] = (byte) i;
        write(bArr, 0, 1);
    }
}
