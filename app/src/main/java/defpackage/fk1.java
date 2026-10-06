package defpackage;

import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fk1 extends gk1 {
    public final FileInputStream c;
    public final byte[] d;
    public int e;
    public int f;
    public int k;
    public int n;
    public int p;
    public int q = Integer.MAX_VALUE;

    public fk1(FileInputStream fileInputStream) {
        Charset charset = yd4.a;
        this.c = fileInputStream;
        this.d = new byte[4096];
        this.e = 0;
        this.k = 0;
        this.p = 0;
    }

    @Override // defpackage.gk1
    public final void a(int i) throws fg4 {
        if (this.n != i) {
            throw new fg4("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // defpackage.gk1
    public final int b() {
        return this.p + this.k;
    }

    @Override // defpackage.gk1
    public final boolean c() {
        return this.k == this.e && !o0(1);
    }

    @Override // defpackage.gk1
    public final void d(int i) {
        this.q = i;
        l0();
    }

    public final byte[] d0(int i) throws IOException {
        byte[] bArrE0 = e0(i);
        if (bArrE0 != null) {
            return bArrE0;
        }
        int i2 = this.k;
        int i3 = this.e;
        int length = i3 - i2;
        this.p += i3;
        this.k = 0;
        this.e = 0;
        ArrayList<byte[]> arrayListF0 = f0(i - length);
        byte[] bArr = new byte[i];
        System.arraycopy(this.d, i2, bArr, 0, length);
        for (byte[] bArr2 : arrayListF0) {
            System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
            length += bArr2.length;
        }
        return bArr;
    }

    @Override // defpackage.gk1
    public final int e(int i) throws fg4 {
        if (i < 0) {
            throw fg4.d();
        }
        int i2 = this.p + this.k + i;
        if (i2 < 0) {
            throw new fg4("Failed to parse the message.");
        }
        int i3 = this.q;
        if (i2 > i3) {
            throw fg4.e();
        }
        this.q = i2;
        l0();
        return i3;
    }

    public final byte[] e0(int i) throws IOException {
        if (i == 0) {
            return yd4.b;
        }
        if (i < 0) {
            throw fg4.d();
        }
        int i2 = this.p;
        int i3 = this.k;
        int i4 = i2 + i3 + i;
        if (i4 - Integer.MAX_VALUE > 0) {
            throw new fg4("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }
        int i5 = this.q;
        if (i4 > i5) {
            n0((i5 - i2) - i3);
            throw fg4.e();
        }
        int i6 = this.e - i3;
        int i7 = i - i6;
        FileInputStream fileInputStream = this.c;
        if (i7 >= 4096) {
            try {
                if (i7 > fileInputStream.available()) {
                    return null;
                }
            } catch (fg4 e) {
                e.a = true;
                throw e;
            }
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.d, this.k, bArr, 0, i6);
        this.p += this.e;
        this.k = 0;
        this.e = 0;
        while (i6 < i) {
            try {
                int i8 = fileInputStream.read(bArr, i6, i - i6);
                if (i8 == -1) {
                    throw fg4.e();
                }
                this.p += i8;
                i6 += i8;
            } catch (fg4 e2) {
                e2.a = true;
                throw e2;
            }
        }
        return bArr;
    }

    @Override // defpackage.gk1
    public final boolean f() {
        return j0() != 0;
    }

    public final ArrayList f0(int i) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            int iMin = Math.min(i, 4096);
            byte[] bArr = new byte[iMin];
            int i2 = 0;
            while (i2 < iMin) {
                int i3 = this.c.read(bArr, i2, iMin - i2);
                if (i3 == -1) {
                    throw fg4.e();
                }
                this.p += i3;
                i2 += i3;
            }
            i -= iMin;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    @Override // defpackage.gk1
    public final gy0 g() throws IOException {
        int iI0 = i0();
        int i = this.e;
        int i2 = this.k;
        int i3 = i - i2;
        byte[] bArr = this.d;
        if (iI0 <= i3 && iI0 > 0) {
            gy0 gy0VarE = gy0.e(bArr, i2, iI0);
            this.k += iI0;
            return gy0VarE;
        }
        if (iI0 == 0) {
            return gy0.c;
        }
        if (iI0 < 0) {
            throw fg4.d();
        }
        byte[] bArrE0 = e0(iI0);
        if (bArrE0 != null) {
            return gy0.e(bArrE0, 0, bArrE0.length);
        }
        int i4 = this.k;
        int i5 = this.e;
        int length = i5 - i4;
        this.p += i5;
        this.k = 0;
        this.e = 0;
        ArrayList<byte[]> arrayListF0 = f0(iI0 - length);
        byte[] bArr2 = new byte[iI0];
        System.arraycopy(bArr, i4, bArr2, 0, length);
        for (byte[] bArr3 : arrayListF0) {
            System.arraycopy(bArr3, 0, bArr2, length, bArr3.length);
            length += bArr3.length;
        }
        gy0 gy0Var = gy0.c;
        return new gy0(bArr2);
    }

    public final int g0() throws fg4 {
        int i = this.k;
        if (this.e - i < 4) {
            m0(4);
            i = this.k;
        }
        this.k = i + 4;
        byte[] bArr = this.d;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    @Override // defpackage.gk1
    public final double h() {
        return Double.longBitsToDouble(h0());
    }

    public final long h0() throws fg4 {
        int i = this.k;
        if (this.e - i < 8) {
            m0(8);
            i = this.k;
        }
        this.k = i + 8;
        byte[] bArr = this.d;
        return ((((long) bArr[i + 1]) & 255) << 8) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    public final int i0() {
        int i;
        int i2 = this.k;
        int i3 = this.e;
        if (i3 != i2) {
            int i4 = i2 + 1;
            byte[] bArr = this.d;
            byte b = bArr[i2];
            if (b >= 0) {
                this.k = i4;
                return b;
            }
            if (i3 - i4 >= 9) {
                int i5 = i2 + 2;
                int i6 = (bArr[i4] << 7) ^ b;
                if (i6 < 0) {
                    i = i6 ^ (-128);
                } else {
                    int i7 = i2 + 3;
                    int i8 = (bArr[i5] << 14) ^ i6;
                    if (i8 >= 0) {
                        i = i8 ^ 16256;
                    } else {
                        int i9 = i2 + 4;
                        int i10 = i8 ^ (bArr[i7] << 21);
                        if (i10 < 0) {
                            i = (-2080896) ^ i10;
                        } else {
                            i7 = i2 + 5;
                            byte b2 = bArr[i9];
                            int i11 = (i10 ^ (b2 << 28)) ^ 266354560;
                            if (b2 < 0) {
                                i9 = i2 + 6;
                                if (bArr[i7] < 0) {
                                    i7 = i2 + 7;
                                    if (bArr[i9] < 0) {
                                        i9 = i2 + 8;
                                        if (bArr[i7] < 0) {
                                            i7 = i2 + 9;
                                            if (bArr[i9] < 0) {
                                                int i12 = i2 + 10;
                                                if (bArr[i7] >= 0) {
                                                    i5 = i12;
                                                    i = i11;
                                                }
                                            }
                                        }
                                    }
                                }
                                i = i11;
                            }
                            i = i11;
                        }
                        i5 = i9;
                    }
                    i5 = i7;
                }
                this.k = i5;
                return i;
            }
        }
        return (int) k0();
    }

    @Override // defpackage.gk1
    public final int j() {
        return i0();
    }

    public final long j0() {
        long j;
        long j2;
        long j3;
        long j4;
        int i = this.k;
        int i2 = this.e;
        if (i2 != i) {
            int i3 = i + 1;
            byte[] bArr = this.d;
            byte b = bArr[i];
            if (b >= 0) {
                this.k = i3;
                return b;
            }
            if (i2 - i3 >= 9) {
                int i4 = i + 2;
                int i5 = (bArr[i3] << 7) ^ b;
                if (i5 < 0) {
                    j = i5 ^ (-128);
                } else {
                    int i6 = i + 3;
                    int i7 = (bArr[i4] << 14) ^ i5;
                    if (i7 >= 0) {
                        j = i7 ^ 16256;
                        i4 = i6;
                    } else {
                        int i8 = i + 4;
                        int i9 = i7 ^ (bArr[i6] << 21);
                        if (i9 < 0) {
                            j4 = (-2080896) ^ i9;
                        } else {
                            long j5 = i9;
                            i4 = i + 5;
                            long j6 = j5 ^ (((long) bArr[i8]) << 28);
                            if (j6 >= 0) {
                                j3 = 266354560;
                            } else {
                                i8 = i + 6;
                                long j7 = j6 ^ (((long) bArr[i4]) << 35);
                                if (j7 < 0) {
                                    j2 = -34093383808L;
                                } else {
                                    i4 = i + 7;
                                    j6 = j7 ^ (((long) bArr[i8]) << 42);
                                    if (j6 >= 0) {
                                        j3 = 4363953127296L;
                                    } else {
                                        i8 = i + 8;
                                        j7 = j6 ^ (((long) bArr[i4]) << 49);
                                        if (j7 < 0) {
                                            j2 = -558586000294016L;
                                        } else {
                                            i4 = i + 9;
                                            long j8 = (j7 ^ (((long) bArr[i8]) << 56)) ^ 71499008037633920L;
                                            if (j8 < 0) {
                                                int i10 = i + 10;
                                                if (bArr[i4] >= 0) {
                                                    i4 = i10;
                                                }
                                            }
                                            j = j8;
                                        }
                                    }
                                }
                                j4 = j2 ^ j7;
                            }
                            j = j3 ^ j6;
                        }
                        i4 = i8;
                        j = j4;
                    }
                }
                this.k = i4;
                return j;
            }
        }
        return k0();
    }

    @Override // defpackage.gk1
    public final int k() {
        return g0();
    }

    public final long k0() throws fg4 {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            if (this.k == this.e) {
                m0(1);
            }
            int i2 = this.k;
            this.k = i2 + 1;
            byte b = this.d[i2];
            j |= ((long) (b & 127)) << i;
            if ((b & 128) == 0) {
                return j;
            }
        }
        throw fg4.c();
    }

    @Override // defpackage.gk1
    public final long l() {
        return h0();
    }

    public final void l0() {
        int i = this.e + this.f;
        this.e = i;
        int i2 = this.p + i;
        int i3 = this.q;
        if (i2 <= i3) {
            this.f = 0;
            return;
        }
        int i4 = i2 - i3;
        this.f = i4;
        this.e = i - i4;
    }

    @Override // defpackage.gk1
    public final float m() {
        return Float.intBitsToFloat(g0());
    }

    public final void m0(int i) throws fg4 {
        if (o0(i)) {
            return;
        }
        if (i <= (Integer.MAX_VALUE - this.p) - this.k) {
            throw fg4.e();
        }
        throw new fg4("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    @Override // defpackage.gk1
    public final int n() {
        return i0();
    }

    public final void n0(int i) throws fg4 {
        int i2 = this.e;
        int i3 = this.k;
        int i4 = i2 - i3;
        if (i <= i4 && i >= 0) {
            this.k = i3 + i;
            return;
        }
        FileInputStream fileInputStream = this.c;
        if (i < 0) {
            throw fg4.d();
        }
        int i5 = this.p;
        int i6 = i5 + i3;
        int i7 = i6 + i;
        int i8 = this.q;
        if (i7 > i8) {
            n0((i8 - i5) - i3);
            throw fg4.e();
        }
        this.p = i6;
        this.e = 0;
        this.k = 0;
        while (i4 < i) {
            long j = i - i4;
            try {
                try {
                    long jSkip = fileInputStream.skip(j);
                    if (jSkip < 0 || jSkip > j) {
                        throw new IllegalStateException(fileInputStream.getClass() + "#skip returned invalid result: " + jSkip + "\nThe InputStream implementation is buggy.");
                    }
                    if (jSkip == 0) {
                        break;
                    } else {
                        i4 += (int) jSkip;
                    }
                } catch (fg4 e) {
                    e.a = true;
                    throw e;
                }
            } catch (Throwable th) {
                this.p += i4;
                l0();
                throw th;
            }
        }
        this.p += i4;
        l0();
        if (i4 >= i) {
            return;
        }
        int i9 = this.e;
        int i10 = i9 - this.k;
        this.k = i9;
        m0(1);
        while (true) {
            int i11 = i - i10;
            int i12 = this.e;
            if (i11 <= i12) {
                this.k = i11;
                return;
            } else {
                i10 += i12;
                this.k = i12;
                m0(1);
            }
        }
    }

    @Override // defpackage.gk1
    public final long o() {
        return j0();
    }

    public final boolean o0(int i) throws IOException {
        FileInputStream fileInputStream = this.c;
        int i2 = this.k;
        int i3 = i2 + i;
        int i4 = this.e;
        if (i3 <= i4) {
            l0.e(xs1.h(i, "refillBuffer() called when ", " bytes were already available in buffer"));
            return false;
        }
        int i5 = this.p;
        if (i <= (Integer.MAX_VALUE - i5) - i2 && i5 + i2 + i <= this.q) {
            byte[] bArr = this.d;
            if (i2 > 0) {
                if (i4 > i2) {
                    System.arraycopy(bArr, i2, bArr, 0, i4 - i2);
                }
                this.p += i2;
                this.e -= i2;
                this.k = 0;
            }
            int i6 = this.e;
            try {
                int i7 = fileInputStream.read(bArr, i6, Math.min(bArr.length - i6, (Integer.MAX_VALUE - this.p) - i6));
                if (i7 == 0 || i7 < -1 || i7 > bArr.length) {
                    throw new IllegalStateException(fileInputStream.getClass() + "#read(byte[]) returned invalid result: " + i7 + "\nThe InputStream implementation is buggy.");
                }
                if (i7 > 0) {
                    this.e += i7;
                    l0();
                    if (this.e >= i) {
                        return true;
                    }
                    return o0(i);
                }
            } catch (fg4 e) {
                e.a = true;
                throw e;
            }
        }
        return false;
    }

    @Override // defpackage.gk1
    public final int p() {
        return g0();
    }

    @Override // defpackage.gk1
    public final long q() {
        return h0();
    }

    @Override // defpackage.gk1
    public final int r() {
        int iI0 = i0();
        return (-(iI0 & 1)) ^ (iI0 >>> 1);
    }

    @Override // defpackage.gk1
    public final long s() {
        long jJ0 = j0();
        return (-(jJ0 & 1)) ^ (jJ0 >>> 1);
    }

    @Override // defpackage.gk1
    public final String t() throws fg4 {
        int iI0 = i0();
        byte[] bArr = this.d;
        if (iI0 > 0) {
            int i = this.e;
            int i2 = this.k;
            if (iI0 <= i - i2) {
                String str = new String(bArr, i2, iI0, yd4.a);
                this.k += iI0;
                return str;
            }
        }
        if (iI0 == 0) {
            return "";
        }
        if (iI0 < 0) {
            throw fg4.d();
        }
        if (iI0 > this.e) {
            return new String(d0(iI0), yd4.a);
        }
        m0(iI0);
        String str2 = new String(bArr, this.k, iI0, yd4.a);
        this.k += iI0;
        return str2;
    }

    @Override // defpackage.gk1
    public final String u() throws IOException {
        int iI0 = i0();
        int i = this.k;
        int i2 = this.e;
        int i3 = i2 - i;
        byte[] bArrD0 = this.d;
        if (iI0 <= i3 && iI0 > 0) {
            this.k = i + iI0;
        } else {
            if (iI0 == 0) {
                return "";
            }
            if (iI0 < 0) {
                throw fg4.d();
            }
            i = 0;
            if (iI0 <= i2) {
                m0(iI0);
                this.k = iI0;
            } else {
                bArrD0 = d0(iI0);
            }
        }
        return oh8.a.e(bArrD0, i, iI0);
    }

    @Override // defpackage.gk1
    public final int v() throws fg4 {
        if (c()) {
            this.n = 0;
            return 0;
        }
        int iI0 = i0();
        this.n = iI0;
        if ((iI0 >>> 3) != 0) {
            return iI0;
        }
        throw new fg4("Protocol message contained an invalid tag (zero).");
    }

    @Override // defpackage.gk1
    public final int w() {
        return i0();
    }

    @Override // defpackage.gk1
    public final long x() {
        return j0();
    }

    @Override // defpackage.gk1
    public final boolean y(int i) throws fg4 {
        int i2 = i & 7;
        int i3 = 0;
        if (i2 != 0) {
            if (i2 == 1) {
                n0(8);
                return true;
            }
            if (i2 == 2) {
                n0(i0());
                return true;
            }
            if (i2 == 3) {
                z();
                a(((i >>> 3) << 3) | 4);
                return true;
            }
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw fg4.b();
            }
            n0(4);
            return true;
        }
        int i4 = this.e - this.k;
        byte[] bArr = this.d;
        if (i4 >= 10) {
            while (i3 < 10) {
                int i5 = this.k;
                this.k = i5 + 1;
                if (bArr[i5] < 0) {
                    i3++;
                }
            }
            throw fg4.c();
        }
        while (i3 < 10) {
            if (this.k == this.e) {
                m0(1);
            }
            int i6 = this.k;
            this.k = i6 + 1;
            if (bArr[i6] < 0) {
                i3++;
            }
        }
        throw fg4.c();
        return true;
    }
}
