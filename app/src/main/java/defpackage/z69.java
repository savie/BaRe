package defpackage;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z69 extends gk1 {
    public final ByteArrayInputStream c;
    public final byte[] d;
    public int e;
    public int f;
    public int k;
    public int n;
    public int p;
    public int q = Integer.MAX_VALUE;

    public z69(ByteArrayInputStream byteArrayInputStream) {
        byte[] bArr = l79.a;
        this.c = byteArrayInputStream;
        this.d = new byte[4096];
        this.e = 0;
        this.k = 0;
        this.p = 0;
    }

    @Override // defpackage.gk1
    public final double A() {
        return Double.longBitsToDouble(f0());
    }

    @Override // defpackage.gk1
    public final float H() {
        return Float.intBitsToFloat(o0());
    }

    @Override // defpackage.gk1
    public final int I(int i) throws p79 {
        if (i < 0) {
            throw p79.e();
        }
        int i2 = this.p + this.k + i;
        if (i2 < 0) {
            throw new p79("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
        }
        int i3 = this.q;
        if (i2 > i3) {
            throw p79.g();
        }
        this.q = i2;
        h0();
        return i3;
    }

    @Override // defpackage.gk1
    public final int J() {
        return this.p + this.k;
    }

    @Override // defpackage.gk1
    public final void K(int i) throws p79 {
        if (this.n != i) {
            throw new p79("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // defpackage.gk1
    public final int L() {
        return e0();
    }

    @Override // defpackage.gk1
    public final void M(int i) {
        this.q = i;
        h0();
    }

    @Override // defpackage.gk1
    public final int N() {
        return o0();
    }

    @Override // defpackage.gk1
    public final int O() {
        return e0();
    }

    @Override // defpackage.gk1
    public final int P() {
        return o0();
    }

    @Override // defpackage.gk1
    public final int Q() {
        int iE0 = e0();
        return (-(iE0 & 1)) ^ (iE0 >>> 1);
    }

    @Override // defpackage.gk1
    public final int R() throws p79 {
        if (b0()) {
            this.n = 0;
            return 0;
        }
        int iE0 = e0();
        this.n = iE0;
        if ((iE0 >>> 3) != 0) {
            return iE0;
        }
        throw p79.b();
    }

    @Override // defpackage.gk1
    public final int S() {
        return e0();
    }

    @Override // defpackage.gk1
    public final long T() {
        return f0();
    }

    @Override // defpackage.gk1
    public final long U() {
        return g0();
    }

    @Override // defpackage.gk1
    public final long V() {
        return f0();
    }

    @Override // defpackage.gk1
    public final long W() {
        return gk1.C(g0());
    }

    @Override // defpackage.gk1
    public final long X() {
        return g0();
    }

    @Override // defpackage.gk1
    public final x69 Y() throws IOException {
        int iE0 = e0();
        int i = this.e;
        int i2 = this.k;
        int i3 = i - i2;
        byte[] bArr = this.d;
        if (iE0 <= i3 && iE0 > 0) {
            x69 x69VarO = t69.o(bArr, i2, iE0);
            this.k += iE0;
            return x69VarO;
        }
        if (iE0 == 0) {
            return t69.b;
        }
        if (iE0 < 0) {
            throw p79.e();
        }
        byte[] bArrM0 = m0(iE0);
        if (bArrM0 != null) {
            return t69.o(bArrM0, 0, bArrM0.length);
        }
        int i4 = this.k;
        int i5 = this.e;
        int length = i5 - i4;
        this.p += i5;
        this.k = 0;
        this.e = 0;
        ArrayList<byte[]> arrayListI0 = i0(iE0 - length);
        byte[] bArr2 = new byte[iE0];
        System.arraycopy(bArr, i4, bArr2, 0, length);
        for (byte[] bArr3 : arrayListI0) {
            System.arraycopy(bArr3, 0, bArr2, length, bArr3.length);
            length += bArr3.length;
        }
        try {
            x69 x69Var = t69.b;
            return iE0 == 0 ? t69.b : new x69(bArr2);
        } catch (p79 e) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e);
        }
    }

    @Override // defpackage.gk1
    public final String Z() throws p79 {
        int iE0 = e0();
        byte[] bArr = this.d;
        if (iE0 > 0) {
            int i = this.e;
            int i2 = this.k;
            if (iE0 <= i - i2) {
                String str = new String(bArr, i2, iE0, StandardCharsets.UTF_8);
                this.k += iE0;
                return str;
            }
        }
        if (iE0 == 0) {
            return "";
        }
        if (iE0 < 0) {
            throw p79.e();
        }
        if (iE0 > this.e) {
            return new String(d0(iE0), StandardCharsets.UTF_8);
        }
        j0(iE0);
        String str2 = new String(bArr, this.k, iE0, StandardCharsets.UTF_8);
        this.k += iE0;
        return str2;
    }

    @Override // defpackage.gk1
    public final String a0() throws IOException {
        int iE0 = e0();
        int i = this.k;
        int i2 = this.e;
        int i3 = i2 - i;
        byte[] bArrD0 = this.d;
        if (iE0 <= i3 && iE0 > 0) {
            this.k = i + iE0;
        } else {
            if (iE0 == 0) {
                return "";
            }
            if (iE0 < 0) {
                throw p79.e();
            }
            i = 0;
            if (iE0 <= i2) {
                j0(iE0);
                this.k = iE0;
            } else {
                bArrD0 = d0(iE0);
            }
        }
        return tu0.G(bArrD0, i, iE0);
    }

    @Override // defpackage.gk1
    public final boolean b0() {
        return this.k == this.e && !l0(1);
    }

    @Override // defpackage.gk1
    public final boolean c0() {
        return g0() != 0;
    }

    public final byte[] d0(int i) throws IOException {
        byte[] bArrM0 = m0(i);
        if (bArrM0 != null) {
            return bArrM0;
        }
        int i2 = this.k;
        int i3 = this.e;
        int length = i3 - i2;
        this.p += i3;
        this.k = 0;
        this.e = 0;
        ArrayList<byte[]> arrayListI0 = i0(i - length);
        byte[] bArr = new byte[i];
        System.arraycopy(this.d, i2, bArr, 0, length);
        for (byte[] bArr2 : arrayListI0) {
            System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
            length += bArr2.length;
        }
        return bArr;
    }

    public final int e0() {
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
        return (int) n0();
    }

    public final long f0() throws p79 {
        int i = this.k;
        if (this.e - i < 8) {
            j0(8);
            i = this.k;
        }
        this.k = i + 8;
        byte[] bArr = this.d;
        return ((((long) bArr[i + 1]) & 255) << 8) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    public final long g0() {
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
                                j2 = 266354560;
                            } else {
                                i8 = i + 6;
                                long j7 = j6 ^ (((long) bArr[i4]) << 35);
                                if (j7 < 0) {
                                    j3 = -34093383808L;
                                } else {
                                    i4 = i + 7;
                                    j6 = j7 ^ (((long) bArr[i8]) << 42);
                                    if (j6 >= 0) {
                                        j2 = 4363953127296L;
                                    } else {
                                        i8 = i + 8;
                                        j7 = j6 ^ (((long) bArr[i4]) << 49);
                                        if (j7 < 0) {
                                            j3 = -558586000294016L;
                                        } else {
                                            i4 = i + 9;
                                            j6 = j7 ^ (((long) bArr[i8]) << 56);
                                            if (j6 >= 0) {
                                                j2 = 71499008037633920L;
                                            } else {
                                                int i10 = i + 10;
                                                long j8 = (((long) bArr[i4]) << 63) ^ j6;
                                                if (j8 >= 0) {
                                                    j = j8 ^ (-9151873028817141888L);
                                                    i4 = i10;
                                                }
                                            }
                                        }
                                    }
                                }
                                j4 = j3 ^ j7;
                            }
                            j = j2 ^ j6;
                        }
                        i4 = i8;
                        j = j4;
                    }
                }
                this.k = i4;
                return j;
            }
        }
        return n0();
    }

    public final void h0() {
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

    public final ArrayList i0(int i) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            int iMin = Math.min(i, 4096);
            byte[] bArr = new byte[iMin];
            int i2 = 0;
            while (i2 < iMin) {
                try {
                    int i3 = this.c.read(bArr, i2, iMin - i2);
                    if (i3 == -1) {
                        throw p79.g();
                    }
                    this.p += i3;
                    i2 += i3;
                } catch (p79 e) {
                    e.a = true;
                    throw e;
                }
            }
            i -= iMin;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    public final void j0(int i) throws p79 {
        if (l0(i)) {
            return;
        }
        if (i <= (Integer.MAX_VALUE - this.p) - this.k) {
            throw p79.g();
        }
        throw new p79("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
    }

    public final void k0(int i) throws p79 {
        ByteArrayInputStream byteArrayInputStream = this.c;
        int i2 = this.e;
        int i3 = this.k;
        int i4 = i2 - i3;
        if (i <= i4 && i >= 0) {
            this.k = i3 + i;
            return;
        }
        if (i < 0) {
            throw p79.e();
        }
        int i5 = this.p;
        int i6 = i5 + i3;
        int i7 = i6 + i;
        int i8 = this.q;
        if (i7 > i8) {
            k0((i8 - i5) - i3);
            throw p79.g();
        }
        this.p = i6;
        this.e = 0;
        this.k = 0;
        while (i4 < i) {
            long j = i - i4;
            try {
                try {
                    long jSkip = byteArrayInputStream.skip(j);
                    if (jSkip >= 0 && jSkip <= j) {
                        if (jSkip == 0) {
                            break;
                        } else {
                            i4 += (int) jSkip;
                        }
                    } else {
                        throw new IllegalStateException(String.valueOf(byteArrayInputStream.getClass()) + "#skip returned invalid result: " + jSkip + "\nThe InputStream implementation is buggy.");
                    }
                } catch (p79 e) {
                    e.a = true;
                    throw e;
                }
            } catch (Throwable th) {
                this.p += i4;
                h0();
                throw th;
            }
        }
        this.p += i4;
        h0();
        if (i4 >= i) {
            return;
        }
        int i9 = this.e;
        int i10 = i9 - this.k;
        this.k = i9;
        j0(1);
        while (true) {
            int i11 = i - i10;
            int i12 = this.e;
            if (i11 <= i12) {
                this.k = i11;
                return;
            } else {
                i10 += i12;
                this.k = i12;
                j0(1);
            }
        }
    }

    public final boolean l0(int i) throws IOException {
        ByteArrayInputStream byteArrayInputStream = this.c;
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
                int i7 = byteArrayInputStream.read(bArr, i6, Math.min(bArr.length - i6, (Integer.MAX_VALUE - this.p) - i6));
                if (i7 == 0 || i7 < -1 || i7 > bArr.length) {
                    throw new IllegalStateException(String.valueOf(byteArrayInputStream.getClass()) + "#read(byte[]) returned invalid result: " + i7 + "\nThe InputStream implementation is buggy.");
                }
                if (i7 > 0) {
                    this.e += i7;
                    h0();
                    if (this.e >= i || l0(i)) {
                        return true;
                    }
                }
            } catch (p79 e) {
                e.a = true;
                throw e;
            }
        }
        return false;
    }

    public final byte[] m0(int i) throws IOException {
        if (i == 0) {
            return l79.a;
        }
        if (i < 0) {
            throw p79.e();
        }
        int i2 = this.p;
        int i3 = this.k;
        int i4 = i2 + i3 + i;
        if (i4 - Integer.MAX_VALUE > 0) {
            throw new p79("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
        }
        int i5 = this.q;
        if (i4 > i5) {
            k0((i5 - i2) - i3);
            throw p79.g();
        }
        int i6 = this.e - i3;
        int i7 = i - i6;
        ByteArrayInputStream byteArrayInputStream = this.c;
        if (i7 >= 4096) {
            try {
                if (i7 > byteArrayInputStream.available()) {
                    return null;
                }
            } catch (p79 e) {
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
                int i8 = byteArrayInputStream.read(bArr, i6, i - i6);
                if (i8 == -1) {
                    throw p79.g();
                }
                this.p += i8;
                i6 += i8;
            } catch (p79 e2) {
                e2.a = true;
                throw e2;
            }
        }
        return bArr;
    }

    public final long n0() throws p79 {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            if (this.k == this.e) {
                j0(1);
            }
            int i2 = this.k;
            this.k = i2 + 1;
            byte b = this.d[i2];
            j |= ((long) (b & 127)) << i;
            if ((b & 128) == 0) {
                return j;
            }
        }
        throw p79.d();
    }

    public final int o0() throws p79 {
        int i = this.k;
        if (this.e - i < 4) {
            j0(4);
            i = this.k;
        }
        this.k = i + 4;
        byte[] bArr = this.d;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }
}
