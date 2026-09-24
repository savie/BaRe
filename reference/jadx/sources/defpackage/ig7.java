package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ig7 extends InputStream {
    public static final /* synthetic */ int q = 0;
    public InputStream a;
    public final gg7 b;
    public final byte[] c = new byte[4096];
    public int d = 0;
    public int e = 0;
    public int f = 0;
    public boolean k = false;
    public IOException n = null;
    public final byte[] p = new byte[1];

    public ig7(InputStream inputStream, gg7 gg7Var) {
        inputStream.getClass();
        this.a = inputStream;
        this.b = gg7Var;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        if (this.a == null) {
            throw new ay8("Stream closed");
        }
        IOException iOException = this.n;
        if (iOException == null) {
            return this.e;
        }
        throw iOException;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        InputStream inputStream = this.a;
        if (inputStream != null) {
            try {
                inputStream.close();
            } finally {
                this.a = null;
            }
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        byte[] bArr2 = this.c;
        if (i < 0 || i2 < 0 || (i3 = i + i2) < 0 || i3 > bArr.length) {
            l0.a();
            return 0;
        }
        if (i2 == 0) {
            return 0;
        }
        if (this.a == null) {
            throw new ay8("Stream closed");
        }
        IOException iOException = this.n;
        if (iOException != null) {
            throw iOException;
        }
        int i4 = 0;
        while (true) {
            try {
                int iMin = Math.min(this.e, i2);
                System.arraycopy(bArr2, this.d, bArr, i, iMin);
                int i5 = this.d + iMin;
                this.d = i5;
                int i6 = this.e - iMin;
                this.e = i6;
                i += iMin;
                i2 -= iMin;
                i4 += iMin;
                int i7 = this.f;
                if (i5 + i6 + i7 == 4096) {
                    System.arraycopy(bArr2, i5, bArr2, 0, i6 + i7);
                    this.d = 0;
                }
                if (i2 == 0 || this.k) {
                    break;
                    break;
                }
                int i8 = this.d + this.e + this.f;
                int i9 = this.a.read(bArr2, i8, 4096 - i8);
                if (i9 == -1) {
                    this.k = true;
                    this.e = this.f;
                    this.f = 0;
                } else {
                    int i10 = this.f + i9;
                    this.f = i10;
                    int iB = this.b.b(bArr2, this.d, i10);
                    this.e = iB;
                    this.f -= iB;
                }
            } catch (IOException e) {
                this.n = e;
                throw e;
            }
        }
        if (i4 > 0) {
            return i4;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.p;
        if (read(bArr, 0, 1) == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }
}
