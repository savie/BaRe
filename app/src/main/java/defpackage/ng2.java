package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ng2 extends yp1 {
    public InputStream a;
    public k74 b;
    public final byte[] c;

    public ng2(InputStream inputStream) {
        k74 k74Var = new k74(inputStream);
        this.c = new byte[1];
        this.b = k74Var;
        this.a = inputStream;
    }

    @Override // java.io.InputStream
    public final int available() {
        k74 k74Var = this.b;
        if (k74Var != null) {
            return k74Var.b.b();
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        InputStream inputStream;
        try {
            n84.b(this.b);
            this.b = null;
            inputStream = this.a;
        } finally {
            inputStream = this.a;
            int i = n84.a;
            if (inputStream != null) {
                inputStream.close();
            }
            this.a = null;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        k74 k74Var = this.b;
        if (k74Var == null) {
            return -1;
        }
        try {
            int iB = k74Var.b(bArr, i, i2);
            this.b.c.a.g();
            if (iB == -1) {
                n84.b(this.b);
                this.b = null;
            }
            return iB;
        } catch (RuntimeException e) {
            throw new IOException("Invalid Deflate64 input", e);
        }
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        byte[] bArr;
        int i;
        do {
            bArr = this.c;
            i = read(bArr);
            if (i == -1) {
                return -1;
            }
        } while (i == 0);
        if (i == 1) {
            return bArr[0] & 255;
        }
        l0.e(fz5.j(i, "Invalid return value from read: "));
        return 0;
    }
}
