package defpackage;

import android.R;

/* JADX INFO: loaded from: classes.dex */
public final class ub8 implements xs0 {
    public static final byte[][] q = {new byte[]{-87, 103, -77, -24, 4, -3, -93, 118, -102, -110, -128, 120, -28, -35, -47, 56, 13, -58, 53, -104, 24, -9, -20, 108, 67, 117, 55, 38, -6, 19, -108, 72, -14, -48, -117, 48, -124, 84, -33, 35, 25, 91, 61, 89, -13, -82, -94, -126, 99, 1, -125, 46, -39, 81, -101, 124, -90, -21, -91, -66, 22, 12, -29, 97, -64, -116, 58, -11, 115, 44, 37, 11, -69, 78, -119, 107, 83, 106, -76, -15, -31, -26, -67, 69, -30, -12, -74, 102, -52, -107, 3, 86, -44, 28, 30, -41, -5, -61, -114, -75, -23, -49, -65, -70, -22, 119, 57, -81, 51, -55, 98, 113, -127, 121, 9, -83, 36, -51, -7, -40, -27, -59, -71, 77, 68, 8, -122, -25, -95, 29, -86, -19, 6, 112, -78, -46, 65, 123, -96, 17, 49, -62, 39, -112, 32, -10, 96, -1, -106, 92, -79, -85, -98, -100, 82, 27, 95, -109, 10, -17, -111, -123, 73, -18, 45, 79, -113, 59, 71, -121, 109, 70, -42, 62, 105, 100, 42, -50, -53, 47, -4, -105, 5, 122, -84, 127, -43, 26, 75, 14, -89, 90, 40, 20, 63, 41, -120, 60, 76, 2, -72, -38, -80, 23, 85, 31, -118, 125, 87, -57, -115, 116, -73, -60, -97, 114, 126, 21, 34, 18, 88, 7, -103, 52, 110, 80, -34, 104, 101, -68, -37, -8, -56, -88, 43, 64, -36, -2, 50, -92, -54, 16, 33, -16, -45, 93, 15, 0, 111, -99, 54, 66, 74, 94, -63, -32}, new byte[]{117, -13, -58, -12, -37, 123, -5, -56, 74, -45, -26, 107, 69, 125, -24, 75, -42, 50, -40, -3, 55, 113, -15, -31, 48, 15, -8, 27, -121, -6, 6, 63, 94, -70, -82, 91, -118, 0, -68, -99, 109, -63, -79, 14, -128, 93, -46, -43, -96, -124, 7, 20, -75, -112, 44, -93, -78, 115, 76, 84, -110, 116, 54, 81, 56, -80, -67, 90, -4, 96, 98, -106, 108, 66, -9, 16, 124, 40, 39, -116, 19, -107, -100, -57, 36, 70, 59, 112, -54, -29, -123, -53, 17, -48, -109, -72, -90, -125, 32, -1, -97, 119, -61, -52, 3, 111, 8, -65, 64, -25, 43, -30, 121, 12, -86, -126, 65, 58, -22, -71, -28, -102, -92, -105, 126, -38, 122, 23, 102, -108, -95, 29, 61, -16, -34, -77, 11, 114, -89, 28, -17, -47, 83, 62, -113, 51, 38, 95, -20, 118, 42, 73, -127, -120, -18, 33, -60, 26, -21, -39, -59, 57, -103, -51, -83, 49, -117, 1, 24, 35, -35, 31, 78, 45, -7, 72, 79, -14, 101, -114, 120, 92, 88, 25, -115, -27, -104, 87, 103, 127, 5, 100, -81, 99, -74, -2, -11, -73, 60, -91, -50, -23, 104, 68, -32, 77, 67, 105, 41, 46, -84, 21, 89, -88, 10, -98, 110, 71, -33, 52, 53, 106, -49, -36, 34, -55, -64, -101, -119, -44, -19, -85, 18, -94, 13, 82, -69, 2, 47, -87, -41, 97, 30, -76, 80, 4, -10, -62, 22, 37, -122, 86, 85, 9, -66, -111}};
    public int[] f;
    public int[] k;
    public boolean a = false;
    public final int[] b = new int[256];
    public final int[] c = new int[256];
    public final int[] d = new int[256];
    public final int[] e = new int[256];
    public int n = 0;
    public byte[] p = null;

    public ub8() {
        ((d42) e42.a.get()).getClass();
        for (int i = 0; i < 256; i++) {
            byte[][] bArr = q;
            byte b = bArr[0][i];
            int i2 = b & 255;
            int iE = (e(i2) ^ i2) & 255;
            int i3 = 180;
            int iE2 = (((((b & 1) != 0 ? 180 : 0) ^ (i2 >> 1)) ^ i2) ^ e(i2)) & 255;
            int i4 = bArr[1][i];
            int i5 = i4 & 255;
            int[] iArr = {i2, i5};
            int[] iArr2 = {iE, (e(i5) ^ i5) & 255};
            int i6 = i5 >> 1;
            if ((i4 & 1) == 0) {
                i3 = 0;
            }
            int[] iArr3 = {iE2, (((i6 ^ i3) ^ i5) ^ e(i5)) & 255};
            int[] iArr4 = this.b;
            int i7 = iArr[1] | (iArr2[1] << 8);
            int i8 = iArr3[1];
            iArr4[i] = i7 | (i8 << 16) | (i8 << 24);
            int[] iArr5 = this.c;
            int i9 = iArr3[0];
            iArr5[i] = i9 | (i9 << 8) | (iArr2[0] << 16) | (iArr[0] << 24);
            int[] iArr6 = this.d;
            int i10 = iArr2[1];
            int i11 = iArr3[1];
            iArr6[i] = i10 | (i11 << 8) | (iArr[1] << 16) | (i11 << 24);
            int[] iArr7 = this.e;
            int i12 = iArr2[0];
            iArr7[i] = (iArr3[0] << 16) | (iArr[0] << 8) | i12 | (i12 << 24);
        }
    }

    public static int e(int i) {
        return ((i >> 2) ^ ((i & 2) != 0 ? 180 : 0)) ^ ((i & 1) != 0 ? 90 : 0);
    }

    public static int g(int i) {
        int i2 = i >>> 24;
        int i3 = i2 & 255;
        int i4 = ((i3 << 1) ^ ((i2 & 128) != 0 ? 333 : 0)) & 255;
        int i5 = ((i3 >>> 1) ^ ((i2 & 1) != 0 ? 166 : 0)) ^ i4;
        return ((((i << 8) ^ (i5 << 24)) ^ (i4 << 16)) ^ (i5 << 8)) ^ i3;
    }

    public static int h(int i) {
        return (i >>> 8) & 255;
    }

    public static int i(int i) {
        return (i >>> 16) & 255;
    }

    public static int k(int i) {
        return (i >>> 24) & 255;
    }

    @Override // defpackage.xs0
    public final void a(boolean z, z61 z61Var) {
        if (!(z61Var instanceof oo4)) {
            c6.f("invalid parameter passed to Twofish init - ".concat(z61Var.getClass().getName()));
            return;
        }
        this.a = z;
        byte[] bArr = ((oo4) z61Var).a;
        this.p = bArr;
        int length = bArr.length * 8;
        if (length != 128 && length != 192 && length != 256) {
            c6.f("Key length not 128/192/256 bits.");
            return;
        }
        if (z61Var instanceof b42) {
            c6.f("params should not be CryptoServicePurpose");
            return;
        }
        ((d42) e42.a.get()).getClass();
        byte[] bArr2 = this.p;
        this.n = bArr2.length / 8;
        l(bArr2);
    }

    public final int b(int[] iArr, int i) {
        int i2;
        int i3;
        int i4 = i & 255;
        int iH = h(i);
        int i5 = i(i);
        int iK = k(i);
        int i6 = iArr[0];
        int i7 = iArr[1];
        int i8 = iArr[2];
        int i9 = iArr[3];
        int i10 = this.n & 3;
        int[] iArr2 = this.e;
        int[] iArr3 = this.d;
        int[] iArr4 = this.c;
        int[] iArr5 = this.b;
        byte[][] bArr = q;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return 0;
                    }
                }
                byte[] bArr2 = bArr[0];
                i3 = (iArr5[(bArr2[(bArr2[i4] & 255) ^ (i7 & 255)] & 255) ^ (i6 & 255)] ^ iArr4[(bArr2[(bArr[1][iH] & 255) ^ h(i7)] & 255) ^ h(i6)]) ^ iArr3[(bArr[1][(bArr[0][i5] & 255) ^ i(i7)] & 255) ^ i(i6)];
                byte[] bArr3 = bArr[1];
                i2 = iArr2[(bArr3[(bArr3[iK] & 255) ^ k(i7)] & 255) ^ k(i6)];
            } else {
                byte[] bArr4 = bArr[0];
                i3 = (iArr5[(bArr4[i4] & 255) ^ (i6 & 255)] ^ iArr4[(bArr4[iH] & 255) ^ h(i6)]) ^ iArr3[(bArr[1][i5] & 255) ^ i(i6)];
                i2 = iArr2[(bArr[1][iK] & 255) ^ k(i6)];
            }
            return i3 ^ i2;
        }
        i4 = (bArr[1][i4] & 255) ^ (i9 & 255);
        iH = (bArr[0][iH] & 255) ^ h(i9);
        i5 = (bArr[0][i5] & 255) ^ i(i9);
        iK = (bArr[1][iK] & 255) ^ k(i9);
        byte[] bArr5 = bArr[1];
        i4 = (bArr5[i4] & 255) ^ (i8 & 255);
        iH = (bArr5[iH] & 255) ^ h(i8);
        i5 = (bArr[0][i5] & 255) ^ i(i8);
        iK = (bArr[0][iK] & 255) ^ k(i8);
        byte[] bArr6 = bArr[0];
        i3 = (iArr5[(bArr6[(bArr6[i4] & 255) ^ (i7 & 255)] & 255) ^ (i6 & 255)] ^ iArr4[(bArr6[(bArr[1][iH] & 255) ^ h(i7)] & 255) ^ h(i6)]) ^ iArr3[(bArr[1][(bArr[0][i5] & 255) ^ i(i7)] & 255) ^ i(i6)];
        byte[] bArr7 = bArr[1];
        i2 = iArr2[(bArr7[(bArr7[iK] & 255) ^ k(i7)] & 255) ^ k(i6)];
        return i3 ^ i2;
    }

    public final int c(int i) {
        int[] iArr = this.k;
        return iArr[(((i >>> 24) & 255) * 2) + 513] ^ ((iArr[(i & 255) * 2] ^ iArr[(((i >>> 8) & 255) * 2) + 1]) ^ iArr[(((i >>> 16) & 255) * 2) + 512]);
    }

    public final int d(int i) {
        int[] iArr = this.k;
        return iArr[(((i >>> 16) & 255) * 2) + 513] ^ ((iArr[((i >>> 24) & 255) * 2] ^ iArr[((i & 255) * 2) + 1]) ^ iArr[(((i >>> 8) & 255) * 2) + 512]);
    }

    @Override // defpackage.xs0
    public final String f() {
        return "Twofish";
    }

    @Override // defpackage.xs0
    public final int getBlockSize() {
        return 16;
    }

    @Override // defpackage.xs0
    public final int j(byte[] bArr, byte[] bArr2, int i, int i2) {
        if (this.p == null) {
            l0.e("Twofish not initialised");
            return 0;
        }
        if (i + 16 > bArr.length) {
            throw new ua2("input buffer too short");
        }
        if (i2 + 16 > bArr2.length) {
            throw new dv5("output buffer too short");
        }
        char c = 3;
        char c2 = 2;
        if (this.a) {
            int iR = xx3.r(bArr, i) ^ this.f[0];
            int iR2 = this.f[1] ^ xx3.r(bArr, i + 4);
            int iR3 = this.f[2] ^ xx3.r(bArr, i + 8);
            int iR4 = xx3.r(bArr, i + 12) ^ this.f[3];
            int i3 = 8;
            int iRotateRight = iR3;
            int iRotateLeft = iR2;
            for (int i4 = 0; i4 < 16; i4 += 2) {
                int iC = c(iR);
                int iD = d(iRotateLeft);
                iRotateRight = Integer.rotateRight(iRotateRight ^ ((iC + iD) + this.f[i3]), 1);
                iR4 = Integer.rotateLeft(iR4, 1) ^ (((iD * 2) + iC) + this.f[i3 + 1]);
                int iC2 = c(iRotateRight);
                int iD2 = d(iR4);
                int i5 = i3 + 3;
                iR = Integer.rotateRight(iR ^ ((iC2 + iD2) + this.f[i3 + 2]), 1);
                i3 += 4;
                iRotateLeft = Integer.rotateLeft(iRotateLeft, 1) ^ (((iD2 * 2) + iC2) + this.f[i5]);
            }
            xx3.o(bArr2, this.f[4] ^ iRotateRight, i2);
            xx3.o(bArr2, iR4 ^ this.f[5], i2 + 4);
            xx3.o(bArr2, this.f[6] ^ iR, i2 + 8);
            xx3.o(bArr2, this.f[7] ^ iRotateLeft, i2 + 12);
        } else {
            int iR5 = xx3.r(bArr, i) ^ this.f[4];
            int iR6 = xx3.r(bArr, i + 4) ^ this.f[5];
            int iR7 = xx3.r(bArr, i + 8) ^ this.f[6];
            int iR8 = xx3.r(bArr, i + 12) ^ this.f[7];
            int i6 = 39;
            int i7 = 0;
            while (i7 < 16) {
                int iC3 = c(iR5);
                int iD3 = d(iR6);
                char c3 = c;
                int i8 = iR8 ^ (((iD3 * 2) + iC3) + this.f[i6]);
                iR7 = Integer.rotateLeft(iR7, 1) ^ ((iC3 + iD3) + this.f[i6 - 1]);
                iR8 = Integer.rotateRight(i8, 1);
                int iC4 = c(iR7);
                int iD4 = d(iR8);
                int i9 = i6 - 3;
                int i10 = iR6 ^ (((iD4 * 2) + iC4) + this.f[i6 - 2]);
                i6 -= 4;
                iR5 = Integer.rotateLeft(iR5, 1) ^ ((iC4 + iD4) + this.f[i9]);
                iR6 = Integer.rotateRight(i10, 1);
                i7 += 2;
                c = c3;
                c2 = c2;
            }
            xx3.o(bArr2, this.f[0] ^ iR7, i2);
            xx3.o(bArr2, iR8 ^ this.f[1], i2 + 4);
            xx3.o(bArr2, this.f[c2] ^ iR5, i2 + 8);
            xx3.o(bArr2, this.f[c] ^ iR6, i2 + 12);
        }
        return 16;
    }

    public final void l(byte[] bArr) {
        int i;
        int i2;
        int iH;
        int i3;
        int iK;
        int iK2;
        int i4;
        int iH2;
        int i5;
        int[] iArr = new int[4];
        int[] iArr2 = new int[4];
        int[] iArr3 = new int[4];
        this.f = new int[40];
        char c = 0;
        int i6 = 0;
        while (true) {
            i = 1;
            if (i6 >= this.n) {
                break;
            }
            int i7 = i6 * 8;
            iArr[i6] = xx3.r(bArr, i7);
            int iR = xx3.r(bArr, i7 + 4);
            iArr2[i6] = iR;
            int i8 = (this.n - 1) - i6;
            int i9 = iArr[i6];
            for (int i10 = 0; i10 < 4; i10++) {
                iR = g(iR);
            }
            int iG = iR ^ i9;
            for (int i11 = 0; i11 < 4; i11++) {
                iG = g(iG);
            }
            iArr3[i8] = iG;
            i6++;
        }
        for (int i12 = 0; i12 < 20; i12++) {
            int i13 = 33686018 * i12;
            int iB = b(iArr, i13);
            int iRotateLeft = Integer.rotateLeft(b(iArr2, i13 + R.attr.cacheColorHint), 8);
            int i14 = iB + iRotateLeft;
            int[] iArr4 = this.f;
            int i15 = i12 * 2;
            iArr4[i15] = i14;
            int i16 = i14 + iRotateLeft;
            iArr4[i15 + 1] = (i16 << 9) | (i16 >>> 23);
        }
        int i17 = iArr3[0];
        int i18 = iArr3[1];
        int i19 = 2;
        int i20 = iArr3[2];
        int i21 = 3;
        int i22 = iArr3[3];
        this.k = new int[1024];
        int i23 = 0;
        while (i23 < 256) {
            int i24 = this.n & i21;
            int[] iArr5 = this.e;
            int[] iArr6 = this.d;
            int[] iArr7 = this.c;
            int[] iArr8 = this.b;
            byte[][] bArr2 = q;
            if (i24 != 0) {
                if (i24 != i) {
                    if (i24 == i19) {
                        c = c;
                        i5 = i23;
                        iH2 = i5;
                        i4 = iH2;
                        iK2 = i4;
                    } else if (i24 == i21) {
                        c = c;
                        i2 = i23;
                        iH = i2;
                        i3 = iH;
                        iK = i3;
                    }
                    int[] iArr9 = this.k;
                    int i25 = i5;
                    int i26 = i23 * 2;
                    byte[] bArr3 = bArr2[c];
                    i20 = i20;
                    int i27 = bArr3[(bArr3[i25] & 255) ^ (i18 & 255)] & 255;
                    i18 = i18;
                    iArr9[i26] = iArr8[(i17 & 255) ^ i27];
                    iArr9[i26 + 1] = iArr7[(bArr3[(bArr2[i][iH2] & 255) ^ h(i18)] & 255) ^ h(i17)];
                    this.k[i26 + 512] = iArr6[(bArr2[i][(bArr2[c][i4] & 255) ^ i(i18)] & 255) ^ i(i17)];
                    byte[] bArr4 = bArr2[i];
                    this.k[i26 + 513] = iArr5[(bArr4[(bArr4[iK2] & 255) ^ k(i18)] & 255) ^ k(i17)];
                    i23++;
                    c = c;
                    i18 = i18;
                    i = i;
                    i20 = i20;
                    i19 = 2;
                    i21 = 3;
                } else {
                    int[] iArr10 = this.k;
                    int i28 = i23 * 2;
                    int i29 = bArr2[c][i23] & 255;
                    iArr10[i28] = iArr8[(i17 & 255) ^ i29];
                    iArr10[i28 + 1] = iArr7[i29 ^ h(i17)];
                    this.k[i28 + 512] = iArr6[(bArr2[i][i23] & 255) ^ i(i17)];
                    this.k[i28 + 513] = iArr5[(bArr2[i][i23] & 255) ^ k(i17)];
                }
                i = i;
                i23++;
                c = c;
                i18 = i18;
                i = i;
                i20 = i20;
                i19 = 2;
                i21 = 3;
            } else {
                c = c;
                i2 = (bArr2[i][i23] & 255) ^ (i22 & 255);
                iH = (bArr2[c][i23] & 255) ^ h(i22);
                i3 = (bArr2[c][i23] & 255) ^ i(i22);
                iK = (bArr2[i][i23] & 255) ^ k(i22);
            }
            byte[] bArr5 = bArr2[i];
            i5 = (bArr5[i2] & 255) ^ (i20 & 255);
            iH2 = (bArr5[iH] & 255) ^ h(i20);
            i4 = (bArr2[c][i3] & 255) ^ i(i20);
            iK2 = (bArr2[c][iK] & 255) ^ k(i20);
            int[] iArr11 = this.k;
            int i210 = i5;
            int i211 = i23 * 2;
            byte[] bArr6 = bArr2[c];
            i20 = i20;
            int i212 = bArr6[(bArr6[i210] & 255) ^ (i18 & 255)] & 255;
            i18 = i18;
            iArr11[i211] = iArr8[(i17 & 255) ^ i212];
            iArr11[i211 + 1] = iArr7[(bArr6[(bArr2[i][iH2] & 255) ^ h(i18)] & 255) ^ h(i17)];
            this.k[i211 + 512] = iArr6[(bArr2[i][(bArr2[c][i4] & 255) ^ i(i18)] & 255) ^ i(i17)];
            byte[] bArr7 = bArr2[i];
            this.k[i211 + 513] = iArr5[(bArr7[(bArr7[iK2] & 255) ^ k(i18)] & 255) ^ k(i17)];
            i23++;
            c = c;
            i18 = i18;
            i = i;
            i20 = i20;
            i19 = 2;
            i21 = 3;
        }
    }

    @Override // defpackage.xs0
    public final void reset() {
        byte[] bArr = this.p;
        if (bArr != null) {
            l(bArr);
        }
    }
}
