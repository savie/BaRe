package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ii2 extends oe3 {
    public pe3 a;
    public final fi2 b;
    public final byte[] c = new byte[4096];
    public IOException d = null;
    public final byte[] e = new byte[1];

    public ii2(pe3 pe3Var, hi2 hi2Var) {
        this.a = pe3Var;
        this.b = new fi2(hi2Var.a);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        pe3 pe3Var = this.a;
        if (pe3Var != null) {
            try {
                pe3Var.close();
            } catch (IOException e) {
                if (this.d == null) {
                    this.d = e;
                }
            }
            this.a = null;
        }
        IOException iOException = this.d;
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        IOException iOException = this.d;
        if (iOException != null) {
            throw iOException;
        }
        try {
            this.a.flush();
        } catch (IOException e) {
            this.d = e;
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (i < 0 || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            l0.a();
            return;
        }
        IOException iOException = this.d;
        if (iOException != null) {
            throw iOException;
        }
        while (true) {
            byte[] bArr2 = this.c;
            fi2 fi2Var = this.b;
            if (i2 <= 4096) {
                fi2Var.d0(bArr, bArr2, i, i2);
                this.a.write(bArr2, 0, i2);
                return;
            }
            try {
                fi2Var.d0(bArr, bArr2, i, 4096);
                this.a.write(bArr2);
                i += 4096;
                i2 -= 4096;
            } catch (IOException e) {
                this.d = e;
                throw e;
            }
            this.d = e;
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        byte[] bArr = this.e;
        bArr[0] = (byte) i;
        write(bArr, 0, 1);
    }
}
