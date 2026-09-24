package defpackage;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public final class se6 extends ei0 {
    public final byte[] G;
    public final byte[] H;
    public final byte[] c;
    public final short[][] d;
    public final short[][] e;
    public final short[][] f;
    public final short[][] k;
    public final short[][][] n;
    public final short[][][] p;
    public final short[][][] q;
    public final short[][][] r;
    public final short[][][] t;
    public final short[][][] x;
    public final short[][][] y;

    public se6(re6 re6Var, byte[] bArr) {
        super(true, re6Var);
        q15 q15Var = re6Var.f;
        int i = re6Var.c;
        int i2 = re6Var.b;
        int i3 = re6Var.a;
        int i4 = re6Var.k;
        Class cls = Short.TYPE;
        int i5 = 0;
        if (i4 != 3) {
            short[][] sArr = (short[][]) Array.newInstance((Class<?>) cls, i2, i);
            this.d = sArr;
            short[][] sArr2 = (short[][]) Array.newInstance((Class<?>) cls, i3, i2);
            this.e = sArr2;
            short[][] sArr3 = (short[][]) Array.newInstance((Class<?>) cls, i3, i);
            this.k = sArr3;
            short[][] sArr4 = (short[][]) Array.newInstance((Class<?>) cls, i2, i);
            this.f = sArr4;
            short[][][] sArr5 = (short[][][]) Array.newInstance((Class<?>) cls, i2, i3, i3);
            this.n = sArr5;
            short[][][] sArr6 = (short[][][]) Array.newInstance((Class<?>) cls, i2, i3, i2);
            this.p = sArr6;
            short[][][] sArr7 = (short[][][]) Array.newInstance((Class<?>) cls, i, i3, i3);
            this.q = sArr7;
            short[][][] sArr8 = (short[][][]) Array.newInstance((Class<?>) cls, i, i3, i2);
            this.r = sArr8;
            short[][][] sArr9 = (short[][][]) Array.newInstance((Class<?>) cls, i, i3, i);
            this.t = sArr9;
            short[][][] sArr10 = (short[][][]) Array.newInstance((Class<?>) cls, i, i2, i2);
            this.x = sArr10;
            short[][][] sArr11 = (short[][][]) Array.newInstance((Class<?>) cls, i, i2, i);
            this.y = sArr11;
            this.G = null;
            byte[] bArrT = ms8.t(bArr, 0, 32);
            this.c = bArrT;
            int length = bArrT.length;
            int iL = x13.L(sArr, bArr, length) + length;
            int iL2 = x13.L(sArr2, bArr, iL) + iL;
            int iL3 = x13.L(sArr3, bArr, iL2) + iL2;
            int iL4 = x13.L(sArr4, bArr, iL3) + iL3;
            int iM = x13.M(sArr5, bArr, iL4, true) + iL4;
            int iM2 = x13.M(sArr6, bArr, iM, false) + iM;
            int iM3 = x13.M(sArr7, bArr, iM2, true) + iM2;
            int iM4 = x13.M(sArr8, bArr, iM3, false) + iM3;
            int iM5 = x13.M(sArr9, bArr, iM4, false) + iM4;
            int iM6 = x13.M(sArr10, bArr, iM5, true) + iM5;
            this.H = ms8.t(bArr, x13.M(sArr11, bArr, iM6, false) + iM6, bArr.length);
            return;
        }
        byte[] bArrT2 = ms8.t(bArr, 0, 32);
        this.G = bArrT2;
        byte[] bArrT3 = ms8.t(bArr, 32, 64);
        this.c = bArrT3;
        byte[] bArrK = ms8.k(bArrT3);
        byte[] bArrK2 = ms8.k(bArrT2);
        qe6 qe6Var = new qe6(bArrK, q15Var);
        qe6 qe6Var2 = new qe6(bArrK2, q15Var);
        short[][] sArrP = x13.p(qe6Var, i2, i);
        short[][] sArrP2 = x13.p(qe6Var, i3, i2);
        short[][] sArrP3 = x13.p(qe6Var, i3, i);
        short[][] sArrP4 = x13.p(qe6Var, i2, i);
        short[][] sArrG = bb9.g(bb9.C(sArrP2, sArrP4), sArrP3);
        short[][][] sArrO = x13.o(qe6Var2, i2, i3, i3, true);
        short[][][] sArrO2 = x13.o(qe6Var2, i2, i3, i2, false);
        short[][][] sArrO3 = x13.o(qe6Var2, i, i3, i3, true);
        short[][][] sArrO4 = x13.o(qe6Var2, i, i3, i2, false);
        short[][][] sArrO5 = x13.o(qe6Var2, i, i3, i, false);
        short[][][] sArrO6 = x13.o(qe6Var2, i, i2, i2, true);
        short[][][] sArrO7 = x13.o(qe6Var2, i, i2, i, false);
        short[][][] sArrE = bb9.E(sArrP, sArrO3, sArrO);
        short[][][] sArrE2 = bb9.E(sArrP, sArrO4, sArrO2);
        short[][][] sArrJ = x13.j(sArrE);
        short[][][] sArr12 = new short[i2][][];
        while (i5 < i2) {
            short[][][] sArr13 = sArrO3;
            short[][] sArrH = bb9.h(sArrE[i5]);
            sArr12[i5] = sArrH;
            short[][] sArrC = bb9.C(sArrH, sArrP2);
            sArr12[i5] = sArrC;
            sArr12[i5] = bb9.g(sArrC, sArrE2[i5]);
            i5++;
            sArrO4 = sArrO4;
            sArrO3 = sArr13;
        }
        short[][][] sArr14 = sArrO3;
        short[][][] sArr15 = sArrO4;
        short[][][] sArr16 = new short[i][][];
        short[][][] sArr17 = new short[i][][];
        short[][][] sArr18 = new short[i][][];
        short[][][] sArr19 = new short[i][][];
        short[][][] sArrJ2 = x13.j(sArr14);
        int i6 = 0;
        while (i6 < i) {
            short[][][] sArr20 = sArr16;
            short[][] sArrH2 = bb9.h(sArr14[i6]);
            short[][][] sArr21 = sArr19;
            short[][] sArrC2 = bb9.C(sArrH2, sArrP2);
            sArr20[i6] = sArrC2;
            short[][][] sArr22 = sArr12;
            sArr20[i6] = bb9.g(sArrC2, sArr15[i6]);
            sArr17[i6] = bb9.C(sArrH2, sArrG);
            short[][] sArrG2 = bb9.g(sArr17[i6], bb9.C(sArr15[i6], sArrP4));
            sArr17[i6] = sArrG2;
            sArr17[i6] = bb9.g(sArrG2, sArrO5[i6]);
            short[][] sArrG3 = bb9.g(bb9.C(sArr14[i6], sArrP2), sArr15[i6]);
            short[][] sArrO8 = bb9.O(sArrP2);
            short[][] sArrC3 = bb9.C(sArrO8, sArrG3);
            sArr18[i6] = sArrC3;
            short[][] sArrG4 = bb9.g(sArrC3, sArrO6[i6]);
            sArr18[i6] = sArrG4;
            short[][] sArr23 = sArrP;
            if (sArrG4.length != sArrG4[0].length) {
                g84.h("Computation to upper triangular matrix is not possible!");
                throw null;
            }
            short[][] sArr24 = (short[][]) Array.newInstance((Class<?>) cls, sArrG4.length, sArrG4.length);
            int i7 = 0;
            while (i7 < sArrG4.length) {
                sArr24[i7][i7] = sArrG4[i7][i7];
                short[][] sArr25 = sArrG4;
                int i8 = i7 + 1;
                while (i8 < sArr25[0].length) {
                    short[] sArr26 = sArr24[i7];
                    short s = sArr25[i7][i8];
                    short s2 = sArr25[i8][i7];
                    byte[][] bArr2 = iu3.a;
                    int i9 = i8;
                    sArr26[i9] = (short) (s ^ s2);
                    i8 = i9 + 1;
                }
                sArrG4 = sArr25;
                i7 = i8;
            }
            sArr18[i6] = sArr24;
            sArr21[i6] = bb9.C(sArrO8, sArr17[i6]);
            sArr21[i6] = bb9.g(sArr21[i6], bb9.C(bb9.O(sArr15[i6]), sArrG));
            short[][] sArrG5 = bb9.g(sArr21[i6], bb9.C(bb9.h(sArrO6[i6]), sArrP4));
            sArr21[i6] = sArrG5;
            sArr21[i6] = bb9.g(sArrG5, sArrO7[i6]);
            i6++;
            sArr19 = sArr21;
            sArr16 = sArr20;
            sArr12 = sArr22;
            sArrP = sArr23;
        }
        se6 se6Var = new se6(re6Var, bArrK, sArrP, sArrP2, sArrP4, sArrG, sArrJ, sArr12, sArrJ2, sArr16, sArr17, sArr18, sArr19);
        this.H = null;
        this.d = se6Var.d;
        this.e = se6Var.e;
        this.f = se6Var.f;
        this.k = se6Var.k;
        this.n = se6Var.n;
        this.p = se6Var.p;
        this.q = se6Var.q;
        this.r = se6Var.r;
        this.t = se6Var.t;
        this.x = se6Var.x;
        this.y = se6Var.y;
    }

    public final byte[] getEncoded() {
        int i = ((re6) this.b).k;
        byte[] bArr = this.c;
        byte[] bArr2 = this.G;
        if (i == 3) {
            return ms8.p(bArr2, bArr);
        }
        return ms8.p(i == 3 ? ms8.p(bArr2, bArr) : ms8.p(ms8.p(ms8.p(ms8.p(ms8.p(ms8.p(ms8.p(ms8.p(ms8.p(ms8.p(ms8.p(bArr, x13.r(this.d)), x13.r(this.e)), x13.r(this.k)), x13.r(this.f)), x13.s(this.n, true)), x13.s(this.p, false)), x13.s(this.q, true)), x13.s(this.r, false)), x13.s(this.t, false)), x13.s(this.x, true)), x13.s(this.y, false)), this.H);
    }

    public se6(re6 re6Var, byte[] bArr, short[][] sArr, short[][] sArr2, short[][] sArr3, short[][] sArr4, short[][][] sArr5, short[][][] sArr6, short[][][] sArr7, short[][][] sArr8, short[][][] sArr9, short[][][] sArr10, short[][][] sArr11) {
        super(true, re6Var);
        this.G = null;
        this.H = null;
        this.c = (byte[]) bArr.clone();
        this.d = x13.i(sArr);
        this.e = x13.i(sArr2);
        this.f = x13.i(sArr3);
        this.k = x13.i(sArr4);
        this.n = x13.j(sArr5);
        this.p = x13.j(sArr6);
        this.q = x13.j(sArr7);
        this.r = x13.j(sArr8);
        this.t = x13.j(sArr9);
        this.x = x13.j(sArr10);
        this.y = x13.j(sArr11);
    }
}
