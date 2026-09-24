package defpackage;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class h36 extends OutputStream {
    public final long a;
    public final ja1 b;
    public final mi5 c;
    public final xs3 d;
    public long e;
    public long f;
    public volatile boolean k;
    public final byte[] n;

    public h36(q63 q63Var, long j, long j2, ja1 ja1Var, mi5 mi5Var) throws IOException {
        q63Var.getClass();
        ja1Var.getClass();
        this.a = j2;
        this.b = ja1Var;
        this.c = mi5Var;
        this.d = q63Var.G();
        this.e = j;
        try {
            ja1Var.a(this);
            this.n = new byte[1];
        } catch (IOException e) {
            f13.a(this.d);
            throw e;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.k) {
            return;
        }
        this.k = true;
        ja1 ja1Var = this.b;
        synchronized (ja1Var.a) {
            ja1Var.b.remove(this);
        }
        f13.a(this.d);
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        if (this.k) {
            y5.m("Output stream closed.");
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        bArr.getClass();
        if (this.k) {
            y5.m("Output stream closed.");
            return;
        }
        if (i2 == 0) {
            return;
        }
        long j = i2;
        long j2 = this.f + j;
        long j3 = this.a;
        if (j2 > j3) {
            StringBuilder sbT = dj7.t("Chunk writer exceeded expected byte count. Expected=", ", Attempted=", j3);
            sbT.append(j2);
            throw new IOException(sbT.toString());
        }
        this.d.k(this.e, bArr, i, i2);
        this.e += j;
        this.f += j;
        this.c.invoke(Long.valueOf(j));
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        byte[] bArr = this.n;
        bArr[0] = (byte) i;
        write(bArr, 0, 1);
    }
}
