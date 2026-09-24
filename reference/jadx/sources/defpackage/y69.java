package defpackage;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class y69 extends gk1 {
    public final byte[] c;
    public int d;
    public int e;
    public int f;
    public final int k;
    public int n;
    public int p = Integer.MAX_VALUE;

    public y69(byte[] bArr, int i, int i2) {
        this.c = bArr;
        this.d = i2 + i;
        this.f = i;
        this.k = i;
    }

    @Override // defpackage.gk1
    public final double A() {
        return Double.longBitsToDouble(f0());
    }

    @Override // defpackage.gk1
    public final float H() {
        return Float.intBitsToFloat(e0());
    }

    @Override // defpackage.gk1
    public final int I(int i) throws p79 {
        if (i < 0) {
            throw p79.e();
        }
        int iJ = J() + i;
        if (iJ < 0) {
            throw new p79("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit. If reading multiple messages, consider resetting the counter between each message using CodedInputStream.resetSizeCounter().");
        }
        int i2 = this.p;
        if (iJ > i2) {
            throw p79.g();
        }
        this.p = iJ;
        h0();
        return i2;
    }

    @Override // defpackage.gk1
    public final int J() {
        return this.f - this.k;
    }

    @Override // defpackage.gk1
    public final void K(int i) throws p79 {
        if (this.n != i) {
            throw new p79("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // defpackage.gk1
    public final int L() {
        return j0();
    }

    @Override // defpackage.gk1
    public final void M(int i) {
        this.p = i;
        h0();
    }

    @Override // defpackage.gk1
    public final int N() {
        return e0();
    }

    @Override // defpackage.gk1
    public final int O() {
        return j0();
    }

    @Override // defpackage.gk1
    public final int P() {
        return e0();
    }

    @Override // defpackage.gk1
    public final int Q() {
        int iK0 = k0();
        return (-(iK0 & 1)) ^ (iK0 >>> 1);
    }

    @Override // defpackage.gk1
    public final int R() throws p79 {
        if (b0()) {
            this.n = 0;
            return 0;
        }
        int iK0 = k0();
        this.n = iK0;
        if ((iK0 >>> 3) != 0) {
            return iK0;
        }
        throw p79.b();
    }

    @Override // defpackage.gk1
    public final int S() {
        return k0();
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

    /* JADX WARN: Code duplicated, block: B:15:0x002f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0031 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0033  */
    /* JADX WARN: Code duplicated, block: B:24:0x0043  */
    /* JADX WARN: Code duplicated, block: B:26:0x0048  */
    @Override // defpackage.gk1
    public final x69 Y() throws p79 {
        byte[] bArrCopyOfRange;
        int iK0 = k0();
        byte[] bArr = this.c;
        if (iK0 > 0) {
            int i = this.d;
            int i2 = this.f;
            if (iK0 <= i - i2) {
                x69 x69VarO = t69.o(bArr, i2, iK0);
                this.f += iK0;
                return x69VarO;
            }
        }
        if (iK0 == 0) {
            return t69.b;
        }
        if (iK0 > 0) {
            int i3 = this.d;
            int i4 = this.f;
            if (iK0 <= i3 - i4) {
                int i5 = iK0 + i4;
                this.f = i5;
                bArrCopyOfRange = Arrays.copyOfRange(bArr, i4, i5);
            } else {
                if (iK0 <= 0) {
                    throw p79.g();
                }
                if (iK0 == 0) {
                    throw p79.e();
                }
                bArrCopyOfRange = l79.a;
            }
        } else {
            if (iK0 <= 0) {
                throw p79.g();
            }
            if (iK0 == 0) {
                throw p79.e();
            }
            bArrCopyOfRange = l79.a;
        }
        x69 x69Var = t69.b;
        return bArrCopyOfRange.length == 0 ? t69.b : new x69(bArrCopyOfRange);
    }

    @Override // defpackage.gk1
    public final String Z() throws p79 {
        int iK0 = k0();
        if (iK0 > 0) {
            int i = this.d;
            int i2 = this.f;
            if (iK0 <= i - i2) {
                String str = new String(this.c, i2, iK0, StandardCharsets.UTF_8);
                this.f += iK0;
                return str;
            }
        }
        if (iK0 == 0) {
            return "";
        }
        if (iK0 < 0) {
            throw p79.e();
        }
        throw p79.g();
    }

    @Override // defpackage.gk1
    public final String a0() throws p79 {
        int iK0 = k0();
        if (iK0 > 0) {
            int i = this.d;
            int i2 = this.f;
            if (iK0 <= i - i2) {
                String strG = tu0.G(this.c, i2, iK0);
                this.f += iK0;
                return strG;
            }
        }
        if (iK0 == 0) {
            return "";
        }
        if (iK0 <= 0) {
            throw p79.e();
        }
        throw p79.g();
    }

    @Override // defpackage.gk1
    public final boolean b0() {
        return this.f == this.d;
    }

    @Override // defpackage.gk1
    public final boolean c0() {
        return g0() != 0;
    }

    public final int d0() {
        int i;
        int i2 = this.f;
        int i3 = this.d;
        if (i3 != i2) {
            int i4 = i2 + 1;
            byte[] bArr = this.c;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f = i4;
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
                this.f = i5;
                return i;
            }
        }
        return (int) i0();
    }

    public final int e0() throws p79 {
        int i = this.f;
        if (this.d - i < 4) {
            throw p79.g();
        }
        this.f = i + 4;
        byte[] bArr = this.c;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public final long f0() throws p79 {
        int i = this.f;
        if (this.d - i < 8) {
            throw p79.g();
        }
        this.f = i + 8;
        byte[] bArr = this.c;
        return ((((long) bArr[i + 1]) & 255) << 8) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    public final long g0() {
        long j;
        long j2;
        long j3;
        long j4;
        int i = this.f;
        int i2 = this.d;
        if (i2 != i) {
            int i3 = i + 1;
            byte[] bArr = this.c;
            byte b = bArr[i];
            if (b >= 0) {
                this.f = i3;
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
                this.f = i4;
                return j;
            }
        }
        return i0();
    }

    public final void h0() {
        int i = this.d + this.e;
        this.d = i;
        int i2 = i - this.k;
        int i3 = this.p;
        if (i2 <= i3) {
            this.e = 0;
            return;
        }
        int i4 = i2 - i3;
        this.e = i4;
        this.d = i - i4;
    }

    public final long i0() throws p79 {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            int i2 = this.f;
            if (i2 == this.d) {
                throw p79.g();
            }
            this.f = i2 + 1;
            byte b = this.c[i2];
            j |= ((long) (b & 127)) << i;
            if ((b & 128) == 0) {
                return j;
            }
        }
        throw p79.d();
    }

    public final int j0() {
        return d0();
    }

    public final int k0() {
        return d0();
    }
}
