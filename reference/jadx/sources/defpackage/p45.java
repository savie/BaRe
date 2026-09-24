package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class p45 extends ei0 {
    public final byte[] c;
    public final byte[] d;
    public final byte[] e;
    public final byte[] f;
    public final byte[] k;
    public final byte[] n;
    public final int p;

    public p45(o45 o45Var, byte[] bArr, r45 r45Var) {
        p45 p45Var;
        int i;
        int i2;
        g26[] g26VarArr;
        g26[] g26VarArr2;
        g26[] g26VarArr3;
        int i3;
        super((Object) o45Var, true);
        k45 k45Var = new k45(o45Var.b);
        int length = bArr.length;
        int i4 = k45Var.e;
        int i5 = k45Var.f;
        if (length == 64) {
            byte[] bArrT = ms8.t(bArr, 0, 32);
            byte[] bArrT2 = ms8.t(bArr, 32, bArr.length);
            l45 l45Var = k45Var.a;
            k45 k45Var2 = l45Var.a;
            h26 h26Var = new h26(k45Var2);
            h26 h26Var2 = new h26(k45Var2);
            i2 = 2;
            h26 h26Var3 = new h26(k45Var2);
            byte[] bArr2 = new byte[64];
            ai5 ai5Var = l45Var.e;
            int i6 = l45Var.b;
            int length2 = bArrT.length;
            byte[] bArr3 = new byte[length2 + 1];
            System.arraycopy(bArrT, 0, bArr3, 0, length2);
            bArr3[length2] = (byte) i6;
            jr6 jr6Var = (jr6) ai5Var.c;
            lr6 lr6Var = (lr6) ai5Var.b;
            jr6Var.update(bArr3, 0, bArr3.length);
            jr6Var.doFinal(bArr2, 0);
            byte[] bArr4 = new byte[32];
            byte[] bArr5 = new byte[32];
            System.arraycopy(bArr2, 0, bArr4, 0, 32);
            System.arraycopy(bArr2, 32, bArr5, 0, 32);
            h26[] h26VarArr = new h26[i6];
            for (int i7 = 0; i7 < i6; i7++) {
                h26VarArr[i7] = new h26(k45Var2);
            }
            int i8 = l45Var.f * 168;
            byte[] bArr6 = new byte[i8 + 2];
            int i9 = 0;
            while (i9 < i6) {
                int i10 = 0;
                while (i10 < i6) {
                    int i11 = i4;
                    byte b = (byte) i10;
                    int i12 = i10;
                    lr6Var.reset();
                    int i13 = i9;
                    byte[] bArr7 = new byte[34];
                    System.arraycopy(bArr4, 0, bArr7, 0, 32);
                    bArr7[32] = b;
                    bArr7[33] = (byte) i9;
                    lr6Var.update(bArr7, 0, 34);
                    lr6Var.m(bArr6, 0, i8);
                    int iA = l45.a(h26VarArr[i13].a[i12], 0, 256, bArr6, i8);
                    int i14 = i8;
                    for (int i15 = 256; iA < i15; i15 = 256) {
                        int i16 = i14 % 3;
                        int i17 = i14;
                        for (int i18 = 0; i18 < i16; i18++) {
                            bArr6[i18] = bArr6[(i17 - i16) + i18];
                        }
                        lr6Var.m(bArr6, i16, 336);
                        i14 = i16 + 168;
                        iA += l45.a(h26VarArr[i13].a[i12], iA, 256 - iA, bArr6, i14);
                        i8 = i8;
                    }
                    i10 = i12 + 1;
                    i4 = i11;
                    i9 = i13;
                }
                i9++;
            }
            int i19 = i4;
            int i20 = 0;
            byte b2 = 0;
            while (true) {
                g26VarArr = h26Var.a;
                if (i20 >= i6) {
                    break;
                }
                g26VarArr[i20].b(b2, bArr5);
                b2 = (byte) (b2 + 1);
                i20++;
            }
            int i21 = 0;
            while (true) {
                g26VarArr2 = h26Var3.a;
                if (i21 >= i6) {
                    break;
                }
                g26VarArr2[i21].b(b2, bArr5);
                b2 = (byte) (b2 + 1);
                i21++;
            }
            h26Var.a();
            h26Var3.a();
            int i22 = 0;
            while (true) {
                g26VarArr3 = h26Var2.a;
                if (i22 >= i6) {
                    break;
                }
                g26 g26Var = g26VarArr3[i22];
                h26 h26Var4 = h26VarArr[i22];
                g26 g26Var2 = new g26(k45Var2);
                int i23 = i22;
                g26.a(g26Var, h26Var4.a[0], g26VarArr[0]);
                int i24 = 1;
                while (i24 < k45Var2.b) {
                    int i25 = i24;
                    g26.a(g26Var2, h26Var4.a[i24], g26VarArr[i25]);
                    int i26 = 0;
                    while (i26 < 256) {
                        short[] sArr = g26Var.a;
                        int i27 = i26;
                        sArr[i27] = (short) (sArr[i26] + g26Var2.a[i27]);
                        i26 = i27 + 1;
                    }
                    g26Var.getClass();
                    i24 = i25 + 1;
                }
                g26Var.c();
                g26 g26Var3 = g26VarArr3[i23];
                for (int i28 = 0; i28 < 256; i28++) {
                    g26Var3.a[i28] = wx3.u(g26Var3.a[i28] * 1353);
                }
                g26Var3.getClass();
                i22 = i23 + 1;
            }
            int i29 = 0;
            while (true) {
                i3 = h26Var2.b;
                if (i29 >= i3) {
                    break;
                }
                g26 g26Var4 = g26VarArr3[i29];
                g26 g26Var5 = g26VarArr2[i29];
                for (int i30 = 0; i30 < 256; i30++) {
                    short[] sArr2 = g26Var4.a;
                    sArr2[i30] = (short) (sArr2[i30] + g26Var5.a[i30]);
                }
                g26Var4.getClass();
                i29++;
            }
            for (int i31 = 0; i31 < i3; i31++) {
                g26VarArr3[i31].c();
            }
            byte[] bArr8 = new byte[l45Var.c];
            byte[] bArrB = h26Var2.b();
            int i32 = l45Var.d;
            System.arraycopy(bArrB, 0, bArr8, 0, i32);
            System.arraycopy(bArr4, 0, bArr8, i32, 32);
            byte[][] bArr9 = {bArr8, h26Var.b()};
            byte[] bArr10 = new byte[i5];
            System.arraycopy(bArr9[1], 0, bArr10, 0, i5);
            byte[] bArr11 = new byte[32];
            byte[] bArr12 = bArr9[0];
            jr6 jr6Var2 = (jr6) k45Var.h.d;
            jr6Var2.update(bArr12, 0, bArr12.length);
            jr6Var2.doFinal(bArr11, 0);
            byte[] bArr13 = new byte[i19];
            System.arraycopy(bArr9[0], 0, bArr13, 0, i19);
            int i33 = i19 - 32;
            byte[][] bArr14 = {ms8.t(bArr13, 0, i33), ms8.t(bArr13, i33, i19), bArr10, bArr11, bArrT2, ms8.p(bArrT, bArrT2)};
            p45Var = this;
            p45Var.c = bArr14[2];
            p45Var.d = bArr14[3];
            p45Var.e = bArr14[4];
            i = 0;
            p45Var.f = bArr14[0];
            p45Var.k = bArr14[1];
            p45Var.n = bArr14[5];
        } else {
            p45Var = this;
            i = 0;
            i2 = 2;
            p45Var.c = ms8.t(bArr, 0, i5);
            p45Var.f = ms8.t(bArr, i5, (i5 + i4) - 32);
            int i34 = (i4 - 32) + i5;
            int i35 = i34 + 32;
            p45Var.k = ms8.t(bArr, i34, i35);
            int i36 = i34 + 64;
            p45Var.d = ms8.t(bArr, i35, i36);
            p45Var.e = ms8.t(bArr, i36, i34 + 96);
            p45Var.n = null;
        }
        if (r45Var != null && (!ms8.r(p45Var.f, r45Var.c) || !ms8.r(p45Var.k, r45Var.d))) {
            c6.f("passed in public key does not match private values");
            throw null;
        }
        p45Var.p = p45Var.n == null ? i2 : i;
    }

    public final byte[] getEncoded() {
        return ms8.q(new byte[][]{this.c, this.f, this.k, this.d, this.e});
    }
}
