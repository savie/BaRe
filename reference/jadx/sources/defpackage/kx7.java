package defpackage;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kx7 extends FilterInputStream {
    public final byte[] a;
    public final int b;
    public int c;
    public boolean d;

    public kx7(InputStream inputStream) {
        super(inputStream);
        this.a = new byte[16];
        this.b = 16;
    }

    public final int a(int i, byte[] bArr, int i2, int i3) {
        int i4 = this.b - i2;
        int iMax = Math.max(0, i - i4) + i3;
        int iMin = Math.min(i4, i);
        if (iMin > 0) {
            byte[] bArr2 = this.a;
            if (i2 > 0) {
                System.arraycopy(bArr2, 0, bArr2, iMin, i2);
            }
            System.arraycopy(bArr, iMax, bArr2, 0, iMin);
        }
        this.c = iMin + i2;
        return iMax - i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.d) {
            return -1;
        }
        if (i2 == 0) {
            return 0;
        }
        int iA = 0;
        while (iA == 0) {
            int i3 = this.c;
            if (i2 >= i3) {
                int i4 = ((FilterInputStream) this).in.read(bArr, this.c + i, i2 - i3);
                if (i4 == -1) {
                    this.d = true;
                    iA = -1;
                } else {
                    int i5 = this.c;
                    if (i5 > 0) {
                        System.arraycopy(this.a, 0, bArr, i, i5);
                    }
                    int i6 = this.c + i4;
                    int i7 = ((FilterInputStream) this).in.read(this.a, 0, this.b);
                    if (i7 == -1) {
                        this.d = true;
                        i7 = 0;
                    }
                    iA = a(i6, bArr, i7, i);
                }
            } else {
                int i8 = i3 - i2;
                System.arraycopy(this.a, 0, bArr, i, i2);
                byte[] bArr2 = this.a;
                System.arraycopy(bArr2, i2, bArr2, 0, i8);
                int i9 = ((FilterInputStream) this).in.read(this.a, i8, this.b - i8);
                if (i9 == -1) {
                    byte[] bArr3 = this.a;
                    System.arraycopy(bArr3, 0, bArr3, i2, i8);
                    System.arraycopy(bArr, i, this.a, 0, i2);
                    this.d = true;
                    iA = -1;
                } else {
                    iA = a(i2, bArr, i9 + i8, i);
                }
            }
        }
        return iA;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        byte[] bArr = new byte[1];
        int i = read(bArr, 0, 1);
        while (i == 0) {
            i = read(bArr, 0, 1);
        }
        if (i == -1) {
            return -1;
        }
        return bArr[0] & 255;
    }
}
