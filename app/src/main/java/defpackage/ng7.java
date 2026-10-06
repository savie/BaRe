package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ng7 extends oe3 {
    public pe3 a;
    public final gg7 b;
    public final byte[] c = new byte[4096];
    public int d = 0;
    public int e = 0;
    public IOException f = null;
    public boolean k = false;
    public final byte[] n = new byte[1];

    public ng7(pe3 pe3Var, gg7 gg7Var) {
        this.a = pe3Var;
        this.b = gg7Var;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        pe3 pe3Var = this.a;
        if (pe3Var != null) {
            if (!this.k) {
                try {
                    IOException iOException = this.f;
                    if (iOException != null) {
                        throw iOException;
                    }
                    try {
                        pe3Var.write(this.c, this.d, this.e);
                        this.k = true;
                    } catch (IOException e) {
                        this.f = e;
                        throw e;
                    }
                } catch (IOException unused) {
                }
            }
            try {
                this.a.close();
            } catch (IOException e2) {
                if (this.f == null) {
                    this.f = e2;
                }
            }
            this.a = null;
        }
        IOException iOException2 = this.f;
        if (iOException2 != null) {
            throw iOException2;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws hf8 {
        throw new hf8("Flushing is not supported");
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            l0.a();
            return;
        }
        IOException iOException = this.f;
        if (iOException != null) {
            throw iOException;
        }
        if (this.k) {
            throw new ay8("Stream finished or closed");
        }
        while (i2 > 0) {
            int iMin = Math.min(i2, 4096 - (this.d + this.e));
            int i4 = this.d + this.e;
            byte[] bArr2 = this.c;
            System.arraycopy(bArr, i, bArr2, i4, iMin);
            i += iMin;
            i2 -= iMin;
            int i5 = this.e + iMin;
            this.e = i5;
            int iB = this.b.b(bArr2, this.d, i5);
            this.e -= iB;
            try {
                this.a.write(bArr2, this.d, iB);
                int i6 = this.d + iB;
                this.d = i6;
                int i7 = this.e;
                if (i6 + i7 == 4096) {
                    System.arraycopy(bArr2, i6, bArr2, 0, i7);
                    this.d = 0;
                }
            } catch (IOException e) {
                this.f = e;
                throw e;
            }
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        byte[] bArr = this.n;
        bArr[0] = (byte) i;
        write(bArr, 0, 1);
    }
}
