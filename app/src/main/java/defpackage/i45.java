package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class i45 extends ei0 {
    public final byte[] c;
    public final byte[] d;
    public final byte[] e;
    public final byte[] f;
    public final byte[] k;
    public final byte[] n;
    public final byte[] p;
    public final byte[] q;
    public final int r;

    public i45(h45 h45Var, byte[] bArr, j45 j45Var) throws Throwable {
        i45 i45Var;
        int i;
        Throwable th;
        super((Object) h45Var, true);
        g45 g45Var = new g45(h45Var.a);
        int length = bArr.length;
        int i2 = g45Var.d;
        int i3 = g45Var.b;
        int i4 = g45Var.c;
        if (length == 32) {
            byte[] bArr2 = new byte[128];
            byte[] bArr3 = new byte[64];
            byte[] bArr4 = new byte[32];
            byte[] bArr5 = new byte[64];
            byte[] bArr6 = new byte[32];
            ln5 ln5Var = new ln5(g45Var);
            l22[] l22VarArr = (l22[]) new ke(g45Var).b;
            l22[] l22VarArr2 = (l22[]) new zq8(g45Var).b;
            zq8 zq8Var = new zq8(g45Var);
            zq8 zq8Var2 = new zq8(g45Var);
            lr6 lr6Var = g45Var.a;
            lr6Var.update(bArr, 0, 32);
            lr6Var.a((byte) i4);
            lr6Var.a((byte) i2);
            lr6Var.l(bArr2, 0, 128);
            System.arraycopy(bArr2, 0, bArr4, 0, 32);
            System.arraycopy(bArr2, 32, bArr5, 0, 64);
            System.arraycopy(bArr2, 96, bArr6, 0, 32);
            ln5Var.l(bArr4);
            int i5 = 0;
            short s = 0;
            while (i5 < l22VarArr.length) {
                l22VarArr[i5].k(bArr5, s);
                i5++;
                s = (short) (s + 1);
            }
            short s2 = (short) i2;
            int i6 = 0;
            while (i6 < l22VarArr2.length) {
                l22VarArr2[i6].k(bArr5, s2);
                i6++;
                s2 = (short) (s2 + 1);
            }
            ke keVar = new ke(g45Var);
            for (int i7 = 0; i7 < l22VarArr.length; i7++) {
                System.arraycopy((int[]) l22VarArr[i7].b, 0, (int[]) ((l22[]) keVar.b)[i7].b, 0, 256);
            }
            keVar.j();
            ln5Var.n(zq8Var, keVar);
            zq8Var.C();
            zq8Var.z();
            int i8 = 0;
            while (true) {
                l22[] l22VarArr3 = (l22[]) zq8Var.b;
                if (i8 >= l22VarArr3.length) {
                    break;
                }
                l22 l22Var = l22VarArr3[i8];
                l22 l22Var2 = l22VarArr2[i8];
                int i9 = 0;
                while (i9 < 256) {
                    int[] iArr = (int[]) l22Var.b;
                    iArr[i9] = iArr[i9] + ((int[]) l22Var2.b)[i9];
                    i9++;
                    i8 = i8;
                }
                l22Var.getClass();
                i8++;
            }
            zq8Var.r();
            zq8Var.B(zq8Var2);
            byte[] bArrB = z85.B(zq8Var, g45Var);
            lr6Var.update(bArr4, 0, 32);
            lr6Var.update(bArrB, 0, bArrB.length);
            lr6Var.l(bArr3, 0, 64);
            byte[][] bArr7 = new byte[6][];
            bArr7[0] = bArr4;
            bArr7[1] = bArr6;
            bArr7[2] = bArr3;
            bArr7[3] = new byte[i2 * i3];
            for (int i10 = 0; i10 < i2; i10++) {
                l22VarArr[i10].e(bArr7[3], i10 * i3);
            }
            bArr7[4] = new byte[i4 * i3];
            for (int i11 = 0; i11 < i4; i11++) {
                l22VarArr2[i11].e(bArr7[4], i11 * i3);
            }
            bArr7[5] = new byte[i4 * 416];
            for (int i12 = 0; i12 < i4; i12++) {
                l22 l22Var3 = ((l22[]) zq8Var2.b)[i12];
                byte[] bArr8 = bArr7[5];
                int i13 = i12 * 416;
                int i14 = 0;
                while (i14 < 32) {
                    int i15 = i14 * 8;
                    int[] iArr2 = (int[]) l22Var3.b;
                    byte[] bArr9 = bArrB;
                    int[] iArr3 = {4096 - iArr2[i15], 4096 - iArr2[i15 + 1], 4096 - iArr2[i15 + 2], 4096 - iArr2[i15 + 3], 4096 - iArr2[i15 + 4], 4096 - iArr2[i15 + 5], 4096 - iArr2[i15 + 6], 4096 - iArr2[i15 + 7]};
                    int i16 = (i14 * 13) + i13;
                    int i17 = iArr3[0];
                    bArr8[i16] = (byte) i17;
                    int i18 = i16 + 1;
                    byte b = (byte) (i17 >> 8);
                    bArr8[i18] = b;
                    int i19 = iArr3[1];
                    bArr8[i18] = (byte) (b | ((byte) (i19 << 5)));
                    bArr8[i16 + 2] = (byte) (i19 >> 3);
                    int i20 = i16 + 3;
                    byte b2 = (byte) (i19 >> 11);
                    bArr8[i20] = b2;
                    int i21 = iArr3[2];
                    bArr8[i20] = (byte) (b2 | ((byte) (i21 << 2)));
                    int i22 = i16 + 4;
                    byte b3 = (byte) (i21 >> 6);
                    bArr8[i22] = b3;
                    int i23 = iArr3[3];
                    bArr8[i22] = (byte) (b3 | ((byte) (i23 << 7)));
                    bArr8[i16 + 5] = (byte) (i23 >> 1);
                    int i24 = i16 + 6;
                    byte b4 = (byte) (i23 >> 9);
                    bArr8[i24] = b4;
                    int i25 = iArr3[4];
                    bArr8[i24] = (byte) (b4 | ((byte) (i25 << 4)));
                    bArr8[i16 + 7] = (byte) (i25 >> 4);
                    int i26 = i16 + 8;
                    byte b5 = (byte) (i25 >> 12);
                    bArr8[i26] = b5;
                    int i27 = iArr3[5];
                    bArr8[i26] = (byte) (b5 | ((byte) (i27 << 1)));
                    int i28 = i16 + 9;
                    byte b6 = (byte) (i27 >> 7);
                    bArr8[i28] = b6;
                    int i29 = iArr3[6];
                    bArr8[i28] = (byte) (b6 | ((byte) (i29 << 6)));
                    bArr8[i16 + 10] = (byte) (i29 >> 2);
                    int i30 = i16 + 11;
                    byte b7 = (byte) (i29 >> 10);
                    bArr8[i30] = b7;
                    int i31 = iArr3[7];
                    bArr8[i30] = (byte) (b7 | ((byte) (i31 << 3)));
                    bArr8[i16 + 12] = (byte) (i31 >> 5);
                    i14++;
                    bArrB = bArr9;
                }
                l22Var3.getClass();
            }
            th = null;
            byte[][] bArr10 = {bArr7[0], bArr7[1], bArr7[2], bArr7[3], bArr7[4], bArr7[5], bArrB, bArr};
            i45Var = this;
            i45Var.c = bArr10[0];
            i45Var.d = bArr10[1];
            i45Var.e = bArr10[2];
            i45Var.f = bArr10[3];
            i45Var.k = bArr10[4];
            i45Var.n = bArr10[5];
            i45Var.p = bArr10[6];
            i45Var.q = bArr10[7];
            i = 0;
        } else {
            i45Var = this;
            byte[] bArrT = ms8.t(bArr, 0, 32);
            i45Var.c = bArrT;
            i45Var.d = ms8.t(bArr, 32, 64);
            i45Var.e = ms8.t(bArr, 64, 128);
            int i32 = (i2 * i3) + 128;
            byte[] bArrT2 = ms8.t(bArr, 128, i32);
            i45Var.f = bArrT2;
            int i33 = (i4 * i3) + i32;
            byte[] bArrT3 = ms8.t(bArr, i32, i33);
            i45Var.k = bArrT3;
            byte[] bArrT4 = ms8.t(bArr, i33, (i4 * 416) + i33);
            i45Var.n = bArrT4;
            ln5 ln5Var2 = new ln5(g45Var);
            l22[] l22VarArr4 = (l22[]) new ke(g45Var).b;
            l22[] l22VarArr5 = (l22[]) new zq8(g45Var).b;
            zq8 zq8Var3 = new zq8(g45Var);
            zq8 zq8Var4 = new zq8(g45Var);
            for (int i34 = 0; i34 < i2; i34++) {
                l22VarArr4[i34].f(bArrT2, i34 * i3);
            }
            for (int i35 = 0; i35 < i4; i35++) {
                l22VarArr5[i35].f(bArrT3, i35 * i3);
            }
            for (int i36 = 0; i36 < i4; i36++) {
                l22 l22Var4 = ((l22[]) zq8Var4.b)[i36];
                int i37 = i36 * 416;
                l22Var4.getClass();
                int i38 = 0;
                while (i38 < 32) {
                    int i39 = (i38 * 13) + i37;
                    int i40 = i38 * 8;
                    int i41 = bArrT4[i39] & 255;
                    int i42 = i37;
                    int i43 = bArrT4[i39 + 1] & 255;
                    int i44 = (i41 | (i43 << 8)) & 8191;
                    int[] iArr4 = (int[]) l22Var4.b;
                    iArr4[i40] = i44;
                    int i45 = i40 + 1;
                    l22 l22Var5 = l22Var4;
                    int i46 = (i43 >> 5) | ((bArrT4[i39 + 2] & 255) << 3);
                    int i47 = bArrT4[i39 + 3] & 255;
                    iArr4[i45] = (i46 | (i47 << 11)) & 8191;
                    int i48 = i40 + 2;
                    int i49 = i47 >> 2;
                    int i50 = bArrT4[i39 + 4] & 255;
                    iArr4[i48] = (i49 | (i50 << 6)) & 8191;
                    int i51 = i40 + 3;
                    int i52 = (i50 >> 7) | ((bArrT4[i39 + 5] & 255) << 1);
                    int i53 = bArrT4[i39 + 6] & 255;
                    iArr4[i51] = (i52 | (i53 << 9)) & 8191;
                    int i54 = i40 + 4;
                    int i55 = (i53 >> 4) | ((bArrT4[i39 + 7] & 255) << 4);
                    int i56 = bArrT4[i39 + 8] & 255;
                    iArr4[i54] = (i55 | (i56 << 12)) & 8191;
                    int i57 = i40 + 5;
                    int i58 = i56 >> 1;
                    int i59 = bArrT4[i39 + 9] & 255;
                    iArr4[i57] = (i58 | (i59 << 7)) & 8191;
                    int i60 = i40 + 6;
                    int i61 = (i59 >> 6) | ((bArrT4[i39 + 10] & 255) << 2);
                    int i62 = bArrT4[i39 + 11] & 255;
                    iArr4[i60] = (i61 | (i62 << 10)) & 8191;
                    int i63 = i40 + 7;
                    iArr4[i63] = ((i62 >> 3) | ((bArrT4[i39 + 12] & 255) << 5)) & 8191;
                    iArr4[i40] = 4096 - iArr4[i40];
                    iArr4[i45] = 4096 - iArr4[i45];
                    iArr4[i48] = 4096 - iArr4[i48];
                    iArr4[i51] = 4096 - iArr4[i51];
                    iArr4[i54] = 4096 - iArr4[i54];
                    iArr4[i57] = 4096 - iArr4[i57];
                    iArr4[i60] = 4096 - iArr4[i60];
                    iArr4[i63] = 4096 - iArr4[i63];
                    i38++;
                    l22Var4 = l22Var5;
                    i37 = i42;
                }
            }
            ln5Var2.l(bArrT);
            ke keVar2 = new ke(g45Var);
            for (int i64 = 0; i64 < l22VarArr4.length; i64++) {
                System.arraycopy((int[]) l22VarArr4[i64].b, 0, (int[]) ((l22[]) keVar2.b)[i64].b, 0, 256);
            }
            i = 0;
            keVar2.j();
            ln5Var2.n(zq8Var3, keVar2);
            zq8Var3.C();
            zq8Var3.z();
            int i65 = 0;
            while (true) {
                l22[] l22VarArr6 = (l22[]) zq8Var3.b;
                if (i65 >= l22VarArr6.length) {
                    break;
                }
                l22 l22Var6 = l22VarArr6[i65];
                l22 l22Var7 = l22VarArr5[i65];
                for (int i66 = 0; i66 < 256; i66++) {
                    int[] iArr5 = (int[]) l22Var6.b;
                    iArr5[i66] = iArr5[i66] + ((int[]) l22Var7.b)[i66];
                }
                l22Var6.getClass();
                i65++;
            }
            zq8Var3.r();
            zq8Var3.B(zq8Var4);
            i45Var.p = z85.B(zq8Var3, g45Var);
            th = null;
            i45Var.q = null;
        }
        if (j45Var != null && !ms8.r(i45Var.p, ms8.k(j45Var.d))) {
            c6.f("passed in public key does not match private values");
            throw th;
        }
        i45Var.r = i45Var.q == null ? 2 : i;
    }

    public final byte[] getEncoded() {
        return ms8.q(new byte[][]{this.c, this.d, this.e, this.f, this.k, this.n});
    }
}
