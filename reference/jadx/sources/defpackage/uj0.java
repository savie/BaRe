package defpackage;

import com.nimbusds.jose.JWEObject;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uj0 extends yp1 {
    public int G;
    public int H;
    public int I;
    public int J;
    public int K;
    public char L;
    public tj0 M;
    public int a;
    public int b;
    public int c;
    public boolean d;
    public int f;
    public gr0 k;
    public int p;
    public int q;
    public int r;
    public int t;
    public int x;
    public int y;
    public final dz0 e = new dz0();
    public int n = 1;

    public uj0(InputStream inputStream) throws IOException {
        this.k = new gr0(inputStream == System.in ? new ha1(inputStream) : inputStream, ByteOrder.BIG_ENDIAN);
        gr0 gr0Var = this.k;
        if (gr0Var != null) {
            int iA = (int) gr0Var.a(8);
            int iA2 = (int) this.k.a(8);
            int iA3 = (int) this.k.a(8);
            if (iA != 66 || iA2 != 90 || iA3 != 104) {
                throw new IOException("Stream is not in the BZip2 format");
            }
            int iA4 = (int) this.k.a(8);
            if (iA4 < 49 || iA4 > 57) {
                y5.m("BZip2 block size is invalid");
            } else {
                this.c = iA4 - 48;
                this.r = 0;
            }
        } else {
            y5.m("No InputStream");
        }
        h();
    }

    public static int a(gr0 gr0Var, int i) throws IOException {
        long jA = gr0Var.a(i);
        if (jA >= 0) {
            return (int) jA;
        }
        y5.m("Unexpected end of stream");
        return 0;
    }

    public static void b(int i, int i2, String str) throws IOException {
        if (i < 0) {
            y5.m(eq3.k("Corrupted input, ", str, " value negative"));
        } else {
            if (i < i2) {
                return;
            }
            y5.m(eq3.k("Corrupted input, ", str, " value too big"));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        gr0 gr0Var = this.k;
        if (gr0Var != null) {
            try {
                gr0Var.close();
            } finally {
                this.M = null;
                this.k = null;
            }
        }
    }

    public final void g() throws IOException {
        int i = ~this.e.a;
        int i2 = this.p;
        if (i2 == i) {
            int i3 = this.r;
            this.r = i ^ ((i3 >>> 31) | (i3 << 1));
        } else {
            int i4 = this.q;
            this.r = ((i4 >>> 31) | (i4 << 1)) ^ i2;
            y5.m("BZip2 CRC error");
        }
    }

    public final void h() throws IOException {
        char[] cArr;
        char c;
        int i;
        gr0 gr0Var = this.k;
        char cA = (char) a(gr0Var, 8);
        char cA2 = (char) a(gr0Var, 8);
        char cA3 = (char) a(gr0Var, 8);
        char cA4 = (char) a(gr0Var, 8);
        char cA5 = (char) a(gr0Var, 8);
        char cA6 = (char) a(gr0Var, 8);
        char c2 = 0;
        if (cA == 23 && cA2 == 'r' && cA3 == 'E' && cA4 == '8' && cA5 == 'P' && cA6 == 144) {
            int iA = a(this.k, 32);
            this.q = iA;
            this.n = 0;
            this.M = null;
            if (iA == this.r) {
                return;
            }
            y5.m("BZip2 CRC error");
            return;
        }
        if (cA != '1' || cA2 != 'A' || cA3 != 'Y' || cA4 != '&' || cA5 != 'S' || cA6 != 'Y') {
            this.n = 0;
            y5.m("Bad block header");
            return;
        }
        this.p = a(gr0Var, 32);
        int i2 = 1;
        this.d = a(gr0Var, 1) == 1;
        if (this.M == null) {
            this.M = new tj0(this.c);
        }
        gr0 gr0Var2 = this.k;
        this.b = a(gr0Var2, 24);
        gr0 gr0Var3 = this.k;
        tj0 tj0Var = this.M;
        boolean[] zArr = tj0Var.a;
        byte[] bArr = tj0Var.m;
        byte[] bArr2 = tj0Var.c;
        byte[] bArr3 = tj0Var.d;
        int i3 = 0;
        for (int i4 = 0; i4 < 16; i4++) {
            if (a(gr0Var3, 1) != 0) {
                i3 |= 1 << i4;
            }
        }
        Arrays.fill(zArr, false);
        for (int i5 = 0; i5 < 16; i5++) {
            if ((i3 & (1 << i5)) != 0) {
                int i6 = i5 << 4;
                for (int i7 = 0; i7 < 16; i7++) {
                    if (a(gr0Var3, 1) != 0) {
                        zArr[i6 + i7] = true;
                    }
                }
            }
        }
        tj0 tj0Var2 = this.M;
        boolean[] zArr2 = tj0Var2.a;
        byte[] bArr4 = tj0Var2.b;
        int i8 = 0;
        int i9 = 0;
        while (i8 < 256) {
            if (zArr2[i8]) {
                bArr4[i9] = (byte) i8;
                i9++;
            }
            i8++;
            c2 = c2;
        }
        char c3 = c2;
        this.f = i9;
        int i10 = i9 + 2;
        int iA2 = a(gr0Var3, 3);
        int iA3 = a(gr0Var3, 15);
        if (iA3 < 0) {
            y5.m("Corrupted input, nSelectors value negative");
            return;
        }
        b(i10, 259, "alphaSize");
        b(iA2, 7, "nGroups");
        for (int i11 = c3; i11 < iA3; i11++) {
            int i12 = c3;
            while (a(gr0Var3, 1) != 0) {
                i12++;
            }
            if (i11 < 18002) {
                bArr3[i11] = (byte) i12;
            }
        }
        int iMin = Math.min(iA3, 18002);
        int i13 = iA2;
        while (true) {
            i13--;
            if (i13 < 0) {
                break;
            } else {
                bArr[i13] = (byte) i13;
            }
        }
        for (int i14 = c3; i14 < iMin; i14++) {
            int i15 = bArr3[i14] & 255;
            b(i15, 6, "selectorMtf");
            byte b = bArr[i15];
            while (i15 > 0) {
                bArr[i15] = bArr[i15 - 1];
                i15--;
            }
            bArr[c3] = b;
            bArr2[i14] = b;
        }
        char[][] cArr2 = tj0Var.l;
        for (int i16 = c3; i16 < iA2; i16++) {
            int iA4 = a(gr0Var3, 5);
            char[] cArr3 = cArr2[i16];
            for (int i17 = c3; i17 < i10; i17++) {
                while (a(gr0Var3, 1) != 0) {
                    iA4 += a(gr0Var3, 1) != 0 ? -1 : 1;
                }
                cArr3[i17] = (char) iA4;
            }
        }
        tj0 tj0Var3 = this.M;
        char[][] cArr4 = tj0Var3.l;
        int[] iArr = tj0Var3.i;
        int[][] iArr2 = tj0Var3.f;
        int[][] iArr3 = tj0Var3.g;
        int[][] iArr4 = tj0Var3.h;
        int i18 = c3;
        while (i18 < iA2) {
            char[] cArr5 = cArr4[i18];
            int i19 = i2;
            int i20 = i10;
            char c4 = c3;
            char c5 = ' ';
            while (true) {
                i20--;
                if (i20 < 0) {
                    break;
                }
                char c6 = cArr5[i20];
                if (c6 > c4) {
                    c4 = c6;
                }
                if (c6 < c5) {
                    c5 = c6;
                }
            }
            int[] iArr5 = iArr2[i18];
            int[] iArr6 = iArr3[i18];
            int[] iArr7 = iArr4[i18];
            char[] cArr6 = cArr4[i18];
            int i21 = c3;
            for (int i22 = c5; i22 <= c4; i22++) {
                int i23 = c3;
                while (i23 < i10) {
                    char c7 = c5;
                    if (cArr6[i23] == i22) {
                        iArr7[i21] = i23;
                        i21++;
                    }
                    i23++;
                    c5 = c7;
                }
            }
            char c8 = c5;
            int i24 = 23;
            while (true) {
                i24--;
                if (i24 <= 0) {
                    break;
                }
                iArr6[i24] = c3;
                iArr5[i24] = c3;
            }
            for (int i25 = c3; i25 < i10; i25++) {
                char c9 = cArr6[i25];
                b(c9, 258, "length");
                int i26 = c9 + 1;
                iArr6[i26] = iArr6[i26] + 1;
            }
            int i27 = iArr6[c3];
            for (int i28 = i19; i28 < 23; i28++) {
                i27 += iArr6[i28];
                iArr6[i28] = i27;
            }
            int i29 = iArr6[c8];
            int i30 = c3;
            int i31 = c8;
            while (i31 <= c4) {
                int i32 = i31 + 1;
                int i33 = iArr6[i32];
                int i34 = (i33 - i29) + i30;
                iArr5[i31] = i34 - 1;
                i30 = i34 << 1;
                i31 = i32;
                i29 = i33;
            }
            for (int i35 = c8 + 1; i35 <= c4; i35++) {
                iArr6[i35] = ((iArr5[i35 - 1] + 1) << 1) - iArr6[i35];
            }
            iArr[i18] = c8;
            i18++;
            i2 = i19;
        }
        int i36 = i2;
        tj0 tj0Var4 = this.M;
        byte[] bArr5 = tj0Var4.o;
        int[] iArr8 = tj0Var4.e;
        byte[] bArr6 = tj0Var4.c;
        byte[] bArr7 = tj0Var4.b;
        char[] cArr7 = tj0Var4.k;
        int[] iArr9 = tj0Var4.i;
        int[][] iArr10 = tj0Var4.f;
        int[][] iArr11 = tj0Var4.g;
        int[][] iArr12 = tj0Var4.h;
        int i37 = this.c * JWEObject.MAX_COMPRESSED_CIPHER_TEXT_LENGTH;
        int i38 = 256;
        while (true) {
            i38--;
            if (i38 < 0) {
                break;
            }
            cArr7[i38] = (char) i38;
            iArr8[i38] = c3;
        }
        int i39 = this.f + 1;
        tj0 tj0Var5 = this.M;
        int i40 = tj0Var5.c[c3] & 255;
        b(i40, 6, "zt");
        int[] iArr13 = tj0Var5.f[i40];
        int i41 = tj0Var5.i[i40];
        b(i41, 258, "zn");
        int iA5 = a(this.k, i41);
        int i42 = i41;
        while (iA5 > iArr13[i42]) {
            int i43 = i42 + 1;
            b(i43, 258, "zn");
            i42 = i43;
            iA5 = (iA5 << 1) | a(this.k, i36);
            i36 = 1;
        }
        int i44 = iA5 - tj0Var5.g[i40][i42];
        b(i44, 258, "zvec");
        int i45 = tj0Var5.h[i40][i44];
        int i46 = bArr6[c3] & 255;
        b(i46, 6, "zt");
        int[] iArr14 = iArr11[i46];
        int[] iArr15 = iArr10[i46];
        int[] iArr16 = iArr12[i46];
        int i47 = iArr9[i46];
        int i48 = -1;
        int[] iArr17 = iArr16;
        int i49 = 49;
        int i50 = c3;
        while (i45 != i39) {
            iArr9 = iArr9;
            iArr10 = iArr10;
            iArr11 = iArr11;
            i39 = i39;
            if (i45 == 0 || i45 == 1) {
                int[] iArr18 = iArr14;
                int i51 = -1;
                int i52 = 1;
                while (true) {
                    if (i45 != 0) {
                        cArr = cArr7;
                        if (i45 != 1) {
                            break;
                        } else {
                            i51 += i52 << 1;
                        }
                    } else {
                        i51 += i52;
                        cArr = cArr7;
                    }
                    if (i49 == 0) {
                        int i53 = i50 + 1;
                        b(i53, 18002, "groupNo");
                        int i54 = bArr6[i53] & 255;
                        b(i54, 6, "zt");
                        iArr18 = iArr11[i54];
                        int[] iArr19 = iArr10[i54];
                        iArr17 = iArr12[i54];
                        i47 = iArr9[i54];
                        i50 = i53;
                        iArr15 = iArr19;
                        i49 = 49;
                    } else {
                        i49--;
                    }
                    int i55 = i47;
                    b(i55, 258, "zn");
                    i47 = i55;
                    int iA6 = a(gr0Var2, i55);
                    int i56 = i47;
                    while (iA6 > iArr15[i56]) {
                        int i57 = i56 + 1;
                        b(i57, 258, "zn");
                        iA6 = (iA6 << 1) | a(gr0Var2, 1);
                        i56 = i57;
                    }
                    int i58 = iA6 - iArr18[i56];
                    b(i58, 258, "zvec");
                    i52 <<= 1;
                    i45 = iArr17[i58];
                    cArr7 = cArr;
                }
                b(i51, this.M.o.length, "s");
                char c10 = cArr[0];
                b(c10, 256, "yy");
                byte b2 = bArr7[c10];
                int i59 = b2 & 255;
                iArr8[i59] = i51 + 1 + iArr8[i59];
                int i60 = i48 + 1;
                int i61 = i60 + i51;
                b(i61, this.M.o.length, "lastShadow");
                Arrays.fill(bArr5, i60, i61 + 1, b2);
                if (i61 >= i37) {
                    y5.m(dj7.i("Block overrun while expanding RLE in MTF, ", i61, i37, " exceeds "));
                    return;
                } else {
                    i48 = i61;
                    iArr14 = iArr18;
                    cArr7 = cArr;
                }
            } else {
                i48++;
                if (i48 >= i37) {
                    y5.m(dj7.i("Block overrun in MTF, ", i48, i37, " exceeds "));
                    return;
                }
                b(i45, 257, "nextSym");
                int i62 = i45 - 1;
                char c11 = cArr7[i62];
                int[] iArr20 = iArr14;
                b(c11, 256, "yy");
                byte b3 = bArr7[c11];
                int i63 = b3 & 255;
                iArr8[i63] = iArr8[i63] + 1;
                bArr5[i48] = b3;
                if (i45 <= 16) {
                    while (i62 > 0) {
                        int i64 = i62 - 1;
                        cArr7[i62] = cArr7[i64];
                        i62 = i64;
                    }
                    c = c3;
                } else {
                    c = c3;
                    System.arraycopy(cArr7, c, cArr7, 1, i62);
                }
                cArr7[c] = c11;
                if (i49 == 0) {
                    int i65 = i50 + 1;
                    b(i65, 18002, "groupNo");
                    int i66 = bArr6[i65] & 255;
                    b(i66, 6, "zt");
                    int[] iArr21 = iArr11[i66];
                    int[] iArr22 = iArr10[i66];
                    int[] iArr23 = iArr12[i66];
                    i = iArr9[i66];
                    i50 = i65;
                    iArr20 = iArr21;
                    iArr15 = iArr22;
                    iArr17 = iArr23;
                    i49 = 49;
                } else {
                    i49--;
                    i = i47;
                }
                b(i, 258, "zn");
                int iA7 = a(gr0Var2, i);
                int i67 = i;
                while (iA7 > iArr15[i67]) {
                    i67++;
                    b(i67, 258, "zn");
                    iA7 = (iA7 << 1) | a(gr0Var2, 1);
                }
                int i68 = iA7 - iArr20[i67];
                b(i68, 258, "zvec");
                i45 = iArr17[i68];
                i47 = i;
                iArr14 = iArr20;
            }
            c3 = 0;
        }
        this.a = i48;
        this.e.a = -1;
        this.n = 1;
    }

    public final int j() throws IOException {
        switch (this.n) {
            case 0:
                return -1;
            case 1:
                return m();
            case 2:
                g84.c();
                return 0;
            case 3:
                if (this.x != this.y) {
                    this.n = 2;
                    this.t = 1;
                    return r();
                }
                int i = this.t + 1;
                this.t = i;
                if (i < 4) {
                    this.n = 2;
                    return r();
                }
                tj0 tj0Var = this.M;
                byte[] bArr = tj0Var.o;
                int i2 = this.K;
                this.L = (char) (bArr[i2] & 255);
                b(i2, tj0Var.n.length, "su_tPos");
                this.K = this.M.n[this.K];
                int i3 = this.I;
                if (i3 == 0) {
                    int i4 = this.J;
                    this.I = k55.e[i4] - 1;
                    int i5 = i4 + 1;
                    this.J = i5;
                    if (i5 == 512) {
                        this.J = 0;
                    }
                } else {
                    this.I = i3 - 1;
                }
                this.H = 0;
                this.n = 4;
                if (this.I == 1) {
                    this.L = (char) (this.L ^ 1);
                }
                return u();
            case 4:
                return u();
            case 5:
                g84.c();
                return 0;
            case 6:
                if (this.x != this.y) {
                    this.t = 1;
                    return n();
                }
                int i6 = this.t + 1;
                this.t = i6;
                if (i6 < 4) {
                    return n();
                }
                b(this.K, this.M.o.length, "su_tPos");
                tj0 tj0Var2 = this.M;
                byte[] bArr2 = tj0Var2.o;
                int i7 = this.K;
                this.L = (char) (bArr2[i7] & 255);
                this.K = tj0Var2.n[i7];
                this.H = 0;
                return q();
            case 7:
                return q();
            default:
                g84.c();
                return 0;
        }
    }

    public final int m() throws IOException {
        tj0 tj0Var;
        if (this.n == 0 || (tj0Var = this.M) == null) {
            return -1;
        }
        int[] iArr = tj0Var.j;
        int i = this.a + 1;
        int[] iArr2 = tj0Var.n;
        if (iArr2 == null || iArr2.length < i) {
            iArr2 = new int[i];
            tj0Var.n = iArr2;
        }
        byte[] bArr = tj0Var.o;
        iArr[0] = 0;
        System.arraycopy(tj0Var.e, 0, iArr, 1, 256);
        int i2 = iArr[0];
        for (int i3 = 1; i3 <= 256; i3++) {
            i2 += iArr[i3];
            iArr[i3] = i2;
        }
        int i4 = this.a;
        for (int i5 = 0; i5 <= i4; i5++) {
            int i6 = bArr[i5] & 255;
            int i7 = iArr[i6];
            iArr[i6] = i7 + 1;
            b(i7, i, "tt index");
            iArr2[i7] = i5;
        }
        int i8 = this.b;
        if (i8 < 0 || i8 >= iArr2.length) {
            y5.m("Stream corrupted");
            return 0;
        }
        this.K = iArr2[i8];
        this.t = 0;
        this.G = 0;
        this.x = 256;
        if (!this.d) {
            return n();
        }
        this.I = 0;
        this.J = 0;
        return r();
    }

    public final int n() throws IOException {
        if (this.G > this.a) {
            this.n = 5;
            g();
            h();
            return m();
        }
        this.y = this.x;
        tj0 tj0Var = this.M;
        byte[] bArr = tj0Var.o;
        int i = this.K;
        int i2 = bArr[i] & 255;
        this.x = i2;
        b(i, tj0Var.n.length, "su_tPos");
        this.K = this.M.n[this.K];
        this.G++;
        this.n = 6;
        dz0 dz0Var = this.e;
        int i3 = dz0Var.a;
        int i4 = (i3 >> 24) ^ i2;
        int i5 = i3 << 8;
        if (i4 < 0) {
            i4 += 256;
        }
        dz0Var.a = i5 ^ dz0.b[i4];
        return i2;
    }

    public final int q() {
        int i = this.H;
        if (i >= this.L) {
            this.G++;
            this.t = 0;
            return n();
        }
        int i2 = this.x;
        dz0 dz0Var = this.e;
        int i3 = dz0Var.a;
        int i4 = (i3 >> 24) ^ i2;
        int i5 = i3 << 8;
        if (i4 < 0) {
            i4 += 256;
        }
        dz0Var.a = i5 ^ dz0.b[i4];
        this.H = i + 1;
        this.n = 7;
        return i2;
    }

    public final int r() throws IOException {
        if (this.G > this.a) {
            g();
            h();
            return m();
        }
        this.y = this.x;
        tj0 tj0Var = this.M;
        byte[] bArr = tj0Var.o;
        int i = this.K;
        int i2 = bArr[i] & 255;
        b(i, tj0Var.n.length, "su_tPos");
        this.K = this.M.n[this.K];
        int i3 = this.I;
        if (i3 == 0) {
            int i4 = this.J;
            this.I = k55.e[i4] - 1;
            int i5 = i4 + 1;
            this.J = i5;
            if (i5 == 512) {
                this.J = 0;
            }
        } else {
            this.I = i3 - 1;
        }
        int i6 = i2 ^ (this.I == 1 ? 1 : 0);
        this.x = i6;
        this.G++;
        this.n = 3;
        dz0 dz0Var = this.e;
        int i7 = dz0Var.a;
        int i8 = (i7 >> 24) ^ i6;
        int i9 = i7 << 8;
        if (i8 < 0) {
            i8 += 256;
        }
        dz0Var.a = i9 ^ dz0.b[i8];
        return i6;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        if (i < 0) {
            a6.d(xs1.h(i, "offs(", ") < 0."));
            return 0;
        }
        if (i2 < 0) {
            a6.d(xs1.h(i2, "len(", ") < 0."));
            return 0;
        }
        int i3 = i + i2;
        if (i3 > bArr.length) {
            a6.d(xs1.m(xs1.n("offs(", i, ") + len(", ") > dest.length(", i2), bArr.length, ")."));
            return 0;
        }
        if (this.k == null) {
            y5.m("Stream closed");
            return 0;
        }
        if (i2 == 0) {
            return 0;
        }
        int i4 = i;
        while (i4 < i3) {
            int iJ = j();
            if (iJ < 0) {
                break;
            }
            bArr[i4] = (byte) iJ;
            i4++;
        }
        if (i4 == i) {
            return -1;
        }
        return i4 - i;
    }

    public final int u() {
        int i = this.H;
        if (i >= this.L) {
            this.n = 2;
            this.G++;
            this.t = 0;
            return r();
        }
        int i2 = this.x;
        dz0 dz0Var = this.e;
        int i3 = dz0Var.a;
        int i4 = (i3 >> 24) ^ i2;
        int i5 = i3 << 8;
        if (i4 < 0) {
            i4 += 256;
        }
        dz0Var.a = i5 ^ dz0.b[i4];
        this.H = i + 1;
        return i2;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        if (this.k != null) {
            return j();
        }
        y5.m("Stream closed");
        return 0;
    }
}
