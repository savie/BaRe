package defpackage;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ff8 extends yp1 {
    public final byte[] a;
    public final gr0 b;
    public final int c;
    public int d;
    public byte e;
    public int f;
    public int k;
    public final int[] n;
    public final byte[] p;
    public final byte[] q;
    public int r;
    public final boolean[] t;

    public ff8(BufferedInputStream bufferedInputStream) {
        int[] iArr;
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        this.a = new byte[1];
        this.c = -1;
        this.d = 9;
        this.f = -1;
        this.b = new gr0(bufferedInputStream, byteOrder);
        this.c = 256;
        if (this.d > 13) {
            c6.f("maxCodeSize 13 is out of bounds.");
            throw null;
        }
        this.n = new int[8192];
        this.p = new byte[8192];
        this.q = new byte[8192];
        this.r = 8192;
        int i = 0;
        while (true) {
            iArr = this.n;
            if (i >= 256) {
                break;
            }
            iArr[i] = -1;
            this.p[i] = (byte) i;
            i++;
        }
        this.t = new boolean[iArr.length];
        for (int i2 = 0; i2 < 256; i2++) {
            this.t[i2] = true;
        }
        this.k = this.c + 1;
    }

    public final int a(byte b, int i) {
        boolean[] zArr;
        int i2 = this.k;
        while (true) {
            zArr = this.t;
            if (i2 >= 8192 || !zArr[i2]) {
                break;
            }
            i2++;
        }
        this.k = i2;
        if (i2 < 8192) {
            this.n[i2] = i;
            this.p[i2] = b;
            this.k = i2 + 1;
        } else {
            i2 = -1;
        }
        if (i2 >= 0) {
            zArr[i2] = true;
        }
        return i2;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.b.close();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int iMin;
        boolean z;
        int i3;
        Object[] objArr;
        int iMin2;
        boolean z2 = false;
        if (i2 == 0) {
            return 0;
        }
        byte[] bArr2 = this.q;
        int length = bArr2.length - this.r;
        if (length > 0) {
            iMin = Math.min(length, i2);
            System.arraycopy(bArr2, this.r, bArr, i, iMin);
            this.r += iMin;
        } else {
            iMin = 0;
        }
        while (true) {
            int i4 = i2 - iMin;
            if (i4 <= 0) {
                break;
            }
            int i5 = this.d;
            if (i5 > 31) {
                boolean z3 = z2;
                c6.f("Code size must not be bigger than 31");
                return z3 ? 1 : 0;
            }
            gr0 gr0Var = this.b;
            int iA = (int) gr0Var.a(i5);
            int i6 = -1;
            if (iA < 0) {
                z = z2;
            } else {
                int[] iArr = this.n;
                int i7 = this.c;
                boolean[] zArr = this.t;
                z = z2;
                if (iA != i7) {
                    if (zArr[iA]) {
                        objArr = z ? 1 : 0;
                    } else {
                        int i8 = this.f;
                        if (i8 == -1) {
                            y5.m("The first code can't be a reference to its preceding code");
                            return z ? 1 : 0;
                        }
                        iA = a(this.e, i8);
                        objArr = 1;
                    }
                    for (int i9 = iA; i9 >= 0; i9 = iArr[i9]) {
                        int i10 = this.r - 1;
                        this.r = i10;
                        bArr2[i10] = this.p[i9];
                    }
                    int i11 = this.f;
                    if (i11 != -1 && objArr == 0) {
                        a(bArr2[this.r], i11);
                    }
                    this.f = iA;
                    i6 = this.r;
                    this.e = bArr2[i6];
                } else {
                    int i12 = this.d;
                    if (i12 > 31) {
                        c6.f("Code size must not be bigger than 31");
                        return z ? 1 : 0;
                    }
                    int iA2 = (int) gr0Var.a(i12);
                    if (iA2 < 0) {
                        y5.m("Unexpected EOF;");
                        return z ? 1 : 0;
                    }
                    if (iA2 == 1) {
                        int i13 = this.d;
                        if (i13 >= 13) {
                            y5.m("Attempt to increase code size beyond maximum");
                            return z ? 1 : 0;
                        }
                        this.d = i13 + 1;
                    } else {
                        if (iA2 != 2) {
                            y5.m(fz5.j(iA2, "Invalid clear code subcode "));
                            return z ? 1 : 0;
                        }
                        boolean[] zArr2 = new boolean[8192];
                        for (int i14 = z ? 1 : 0; i14 < zArr.length; i14++) {
                            if (zArr[i14] && (i3 = iArr[i14]) != -1) {
                                zArr2[i3] = true;
                            }
                        }
                        for (int i15 = i7 + 1; i15 < 8192; i15++) {
                            if (!zArr2[i15]) {
                                zArr[i15] = z;
                                iArr[i15] = -1;
                            }
                        }
                        this.k = i7 + 1;
                    }
                    i6 = z ? 1 : 0;
                }
            }
            if (i6 < 0) {
                if (iMin > 0) {
                    break;
                }
                return i6;
            }
            int i16 = i + iMin;
            int length2 = bArr2.length - this.r;
            if (length2 > 0) {
                iMin2 = Math.min(length2, i4);
                System.arraycopy(bArr2, this.r, bArr, i16, iMin2);
                this.r += iMin2;
            } else {
                iMin2 = z;
            }
            iMin += iMin2;
            z2 = z;
        }
        return iMin;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        byte[] bArr = this.a;
        int i = read(bArr);
        return i < 0 ? i : bArr[0] & 255;
    }
}
