package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;
import javax.crypto.CipherOutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h extends OutputStream {
    public final CipherOutputStream a;
    public final int b;
    public final byte[] c;
    public int d;

    public h(f fVar, OutputStream outputStream) {
        fVar.getClass();
        this.a = new CipherOutputStream(outputStream, null);
        throw null;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        int i = this.d;
        CipherOutputStream cipherOutputStream = this.a;
        if (i > 0) {
            cipherOutputStream.write(this.c);
        }
        cipherOutputStream.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        this.a.flush();
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.d;
        int i4 = i2 + i3;
        int i5 = this.b;
        int i6 = i4 > i5 ? i5 - i3 : i2;
        byte[] bArr2 = this.c;
        System.arraycopy(bArr, i, bArr2, i3, i6);
        int i7 = this.d + i6;
        this.d = i7;
        if (i7 == i5) {
            CipherOutputStream cipherOutputStream = this.a;
            cipherOutputStream.write(bArr2);
            this.d = 0;
            Arrays.fill(bArr2, (byte) 0);
            int i8 = i2 - i6;
            if (i8 >= i5) {
                int i9 = (i8 / i5) * i5;
                cipherOutputStream.write(bArr, i + i6, i9);
                i6 += i9;
            }
            int i10 = i2 - i6;
            System.arraycopy(bArr, i + i6, bArr2, 0, i10);
            this.d = i10;
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        int i2 = this.d;
        int i3 = i2 + 1;
        this.d = i3;
        byte[] bArr = this.c;
        bArr[i2] = (byte) i;
        if (i3 == this.b) {
            this.a.write(bArr);
            this.d = 0;
            Arrays.fill(bArr, (byte) 0);
        }
    }
}
