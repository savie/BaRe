package defpackage;

import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ek1 extends gk1 {
    public final byte[] c;
    public int d;
    public int e;
    public int f;
    public final int k;
    public int n;
    public int p = Integer.MAX_VALUE;

    public ek1(byte[] bArr, int i, int i2, boolean z) {
        this.c = bArr;
        this.d = i2 + i;
        this.f = i;
        this.k = i;
    }

    @Override // defpackage.gk1
    public final void a(int i) throws fg4 {
        if (this.n != i) {
            throw new fg4("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // defpackage.gk1
    public final int b() {
        return this.f - this.k;
    }

    @Override // defpackage.gk1
    public final boolean c() {
        return this.f == this.d;
    }

    @Override // defpackage.gk1
    public final void d(int i) {
        this.p = i;
        i0();
    }

    public final int d0() throws fg4 {
        int i = this.f;
        if (this.d - i < 4) {
            throw fg4.e();
        }
        this.f = i + 4;
        byte[] bArr = this.c;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    @Override // defpackage.gk1
    public final int e(int i) {
        if (i < 0) {
            throw fg4.d();
        }
        int iB = b() + i;
        if (iB < 0) {
            throw new fg4("Failed to parse the message.");
        }
        int i2 = this.p;
        if (iB > i2) {
            throw fg4.e();
        }
        this.p = iB;
        i0();
        return i2;
    }

    public final long e0() throws fg4 {
        int i = this.f;
        if (this.d - i < 8) {
            throw fg4.e();
        }
        this.f = i + 8;
        byte[] bArr = this.c;
        return ((((long) bArr[i + 1]) & 255) << 8) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    @Override // defpackage.gk1
    public final boolean f() {
        return g0() != 0;
    }

    public final int f0() {
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
        return (int) h0();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0031 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:17:0x0033  */
    /* JADX WARN: Code duplicated, block: B:20:0x003d  */
    /* JADX WARN: Code duplicated, block: B:22:0x0042  */
    @Override // defpackage.gk1
    public final gy0 g() throws fg4 {
        byte[] bArrCopyOfRange;
        int iF0 = f0();
        byte[] bArr = this.c;
        if (iF0 > 0) {
            int i = this.d;
            int i2 = this.f;
            if (iF0 <= i - i2) {
                gy0 gy0VarE = gy0.e(bArr, i2, iF0);
                this.f += iF0;
                return gy0VarE;
            }
        }
        if (iF0 == 0) {
            return gy0.c;
        }
        if (iF0 > 0) {
            int i3 = this.d;
            int i4 = this.f;
            if (iF0 <= i3 - i4) {
                int i5 = iF0 + i4;
                this.f = i5;
                bArrCopyOfRange = Arrays.copyOfRange(bArr, i4, i5);
            } else {
                if (iF0 <= 0) {
                    throw fg4.e();
                }
                if (iF0 == 0) {
                    throw fg4.d();
                }
                bArrCopyOfRange = yd4.b;
            }
        } else {
            if (iF0 <= 0) {
                throw fg4.e();
            }
            if (iF0 == 0) {
                throw fg4.d();
            }
            bArrCopyOfRange = yd4.b;
        }
        gy0 gy0Var = gy0.c;
        return new gy0(bArrCopyOfRange);
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
                this.f = i4;
                return j;
            }
        }
        return h0();
    }

    @Override // defpackage.gk1
    public final double h() {
        return Double.longBitsToDouble(e0());
    }

    public final long h0() throws fg4 {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            int i2 = this.f;
            if (i2 == this.d) {
                throw fg4.e();
            }
            this.f = i2 + 1;
            byte b = this.c[i2];
            j |= ((long) (b & 127)) << i;
            if ((b & 128) == 0) {
                return j;
            }
        }
        throw fg4.c();
    }

    public final void i0() {
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

    @Override // defpackage.gk1
    public final int j() {
        return f0();
    }

    public final void j0(int i) throws fg4 {
        if (i >= 0) {
            int i2 = this.d;
            int i3 = this.f;
            if (i <= i2 - i3) {
                this.f = i3 + i;
                return;
            }
        }
        if (i >= 0) {
            throw fg4.e();
        }
        throw fg4.d();
    }

    @Override // defpackage.gk1
    public final int k() {
        return d0();
    }

    @Override // defpackage.gk1
    public final long l() {
        return e0();
    }

    @Override // defpackage.gk1
    public final float m() {
        return Float.intBitsToFloat(d0());
    }

    @Override // defpackage.gk1
    public final int n() {
        return f0();
    }

    @Override // defpackage.gk1
    public final long o() {
        return g0();
    }

    @Override // defpackage.gk1
    public final int p() {
        return d0();
    }

    @Override // defpackage.gk1
    public final long q() {
        return e0();
    }

    @Override // defpackage.gk1
    public final int r() {
        int iF0 = f0();
        return (-(iF0 & 1)) ^ (iF0 >>> 1);
    }

    @Override // defpackage.gk1
    public final long s() {
        long jG0 = g0();
        return (-(jG0 & 1)) ^ (jG0 >>> 1);
    }

    @Override // defpackage.gk1
    public final String t() throws fg4 {
        int iF0 = f0();
        if (iF0 > 0) {
            int i = this.d;
            int i2 = this.f;
            if (iF0 <= i - i2) {
                String str = new String(this.c, i2, iF0, yd4.a);
                this.f += iF0;
                return str;
            }
        }
        if (iF0 == 0) {
            return "";
        }
        if (iF0 < 0) {
            throw fg4.d();
        }
        throw fg4.e();
    }

    @Override // defpackage.gk1
    public final String u() throws fg4 {
        int iF0 = f0();
        if (iF0 > 0) {
            int i = this.d;
            int i2 = this.f;
            if (iF0 <= i - i2) {
                String strE = oh8.a.e(this.c, i2, iF0);
                this.f += iF0;
                return strE;
            }
        }
        if (iF0 == 0) {
            return "";
        }
        if (iF0 <= 0) {
            throw fg4.d();
        }
        throw fg4.e();
    }

    @Override // defpackage.gk1
    public final int v() throws fg4 {
        if (c()) {
            this.n = 0;
            return 0;
        }
        int iF0 = f0();
        this.n = iF0;
        if ((iF0 >>> 3) != 0) {
            return iF0;
        }
        throw new fg4("Protocol message contained an invalid tag (zero).");
    }

    @Override // defpackage.gk1
    public final int w() {
        return f0();
    }

    @Override // defpackage.gk1
    public final long x() {
        return g0();
    }

    @Override // defpackage.gk1
    public final boolean y(int i) throws fg4 {
        int i2 = i & 7;
        int i3 = 0;
        if (i2 != 0) {
            if (i2 == 1) {
                j0(8);
                return true;
            }
            if (i2 == 2) {
                j0(f0());
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
            j0(4);
            return true;
        }
        int i4 = this.d - this.f;
        byte[] bArr = this.c;
        if (i4 >= 10) {
            while (i3 < 10) {
                int i5 = this.f;
                this.f = i5 + 1;
                if (bArr[i5] < 0) {
                    i3++;
                }
            }
            throw fg4.c();
        }
        while (i3 < 10) {
            int i6 = this.f;
            if (i6 == this.d) {
                throw fg4.e();
            }
            this.f = i6 + 1;
            if (bArr[i6] < 0) {
                i3++;
            }
        }
        throw fg4.c();
        return true;
    }
}
