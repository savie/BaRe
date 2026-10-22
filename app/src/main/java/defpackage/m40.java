package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class m40 {
    public static final byte[] e = new byte[4];
    public n40 a;
    public k40[] b;
    public int c;
    public int d;

    public static void a(long[] jArr, int i, int i2, int i3, int i4) {
        f(jArr, i, i2, i4, 32);
        f(jArr, i3, i4, i2, 24);
        f(jArr, i, i2, i4, 16);
        f(jArr, i3, i4, i2, 63);
    }

    public static void b(byte[] bArr, ss0 ss0Var, byte[] bArr2) {
        if (bArr2 == null) {
            ss0Var.update(e, 0, 4);
            return;
        }
        xx3.o(bArr, bArr2.length, 0);
        ss0Var.update(bArr, 0, 4);
        ss0Var.update(bArr2, 0, bArr2.length);
    }

    public static void d(int i, byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[4];
        xx3.o(bArr3, i, 0);
        if (i <= 64) {
            ss0 ss0Var = new ss0(i * 8);
            ss0Var.update(bArr3, 0, 4);
            ss0Var.update(bArr, 0, bArr.length);
            ss0Var.doFinal(bArr2, 0);
            return;
        }
        ss0 ss0Var2 = new ss0(512);
        byte[] bArr4 = new byte[64];
        ss0Var2.update(bArr3, 0, 4);
        ss0Var2.update(bArr, 0, bArr.length);
        ss0Var2.doFinal(bArr4, 0);
        System.arraycopy(bArr4, 0, bArr2, 0, 32);
        int i2 = 2;
        int i3 = ((i + 31) / 32) - 2;
        int i4 = 32;
        while (i2 <= i3) {
            ss0Var2.update(bArr4, 0, 64);
            ss0Var2.doFinal(bArr4, 0);
            System.arraycopy(bArr4, 0, bArr2, i4, 32);
            i2++;
            i4 += 32;
        }
        ss0 ss0Var3 = new ss0((i - (i3 * 32)) * 8);
        ss0Var3.update(bArr4, 0, 64);
        ss0Var3.doFinal(bArr2, i4);
    }

    public static void f(long[] jArr, int i, int i2, int i3, int i4) {
        long j = jArr[i];
        long j2 = jArr[i2];
        long j3 = jArr[i3];
        long jD = dj7.d((j & 4294967295L) * 2, 4294967295L & j2, j2, j);
        long jRotateRight = Long.rotateRight(j3 ^ jD, i4);
        jArr[i] = jD;
        jArr[i3] = jRotateRight;
    }

    public final void c(byte[] bArr, byte[] bArr2) {
        int i;
        k40 k40Var;
        k40 k40Var2;
        long j;
        int i2;
        int i3;
        int length = bArr2.length;
        int i4 = 4;
        if (length < 4) {
            l0.e("output length less than 4");
            return;
        }
        byte[] bArr3 = new byte[1024];
        ss0 ss0Var = new ss0(512);
        n40 n40Var = this.a;
        xx3.p(bArr3, new int[]{n40Var.f, length, n40Var.e, n40Var.d, n40Var.g, n40Var.h});
        int i5 = 0;
        ss0Var.update(bArr3, 0, 24);
        b(bArr3, ss0Var, bArr);
        b(bArr3, ss0Var, ms8.k(this.a.a));
        b(bArr3, ss0Var, ms8.k(this.a.b));
        b(bArr3, ss0Var, ms8.k(this.a.c));
        byte[] bArr4 = new byte[72];
        ss0Var.doFinal(bArr4, 0);
        byte[] bArr5 = new byte[72];
        System.arraycopy(bArr4, 0, bArr5, 0, 64);
        int i6 = 1;
        bArr5[64] = 1;
        for (int i7 = 0; i7 < this.a.f; i7++) {
            xx3.o(bArr4, i7, 68);
            xx3.o(bArr5, i7, 68);
            d(1024, bArr4, bArr3);
            long[] jArr = this.b[this.d * i7].a;
            int i8 = 0;
            for (int i9 = 0; i9 < jArr.length; i9++) {
                jArr[i9] = xx3.t(bArr3, i8);
                i8 += 8;
            }
            d(1024, bArr5, bArr3);
            long[] jArr2 = this.b[(this.d * i7) + 1].a;
            int i10 = 0;
            for (int i11 = 0; i11 < jArr2.length; i11++) {
                jArr2[i11] = xx3.t(bArr3, i10);
                i10 += 8;
            }
        }
        l40 l40Var = new l40(0);
        l40Var.b = new k40();
        l40Var.c = new k40();
        l40Var.d = new k40();
        l40Var.e = new k40();
        int i12 = 0;
        while (true) {
            long j2 = 0;
            if (i12 >= this.a.d) {
                break;
            }
            int i13 = i5;
            while (i13 < i4) {
                int i14 = i5;
                while (true) {
                    n40 n40Var2 = this.a;
                    if (i14 < n40Var2.f) {
                        int i15 = n40Var2.h;
                        int i16 = (i15 == i6 || (i15 == 2 && i12 == 0 && i13 < 2)) ? i6 : i5;
                        int i17 = (i12 == 0 && i13 == 0) ? 2 : i5;
                        int i18 = i6;
                        int i19 = this.d;
                        int i20 = i4;
                        int i21 = (this.c * i13) + (i14 * i19) + i17;
                        int i22 = i21 % i19 == 0 ? (i19 + i21) - 1 : i21 - 1;
                        if (i16 != 0) {
                            k40Var = (k40) l40Var.d;
                            int i23 = i5;
                            Arrays.fill(k40Var.a, j2);
                            k40Var2 = (k40) l40Var.e;
                            long[] jArr3 = k40Var2.a;
                            i = i22;
                            long[] jArr4 = k40Var2.a;
                            Arrays.fill(jArr3, j2);
                            jArr4[i23] = ((long) i12) & 4294967295L;
                            jArr4[i18] = ((long) i14) & 4294967295L;
                            jArr4[2] = ((long) i13) & 4294967295L;
                            jArr4[3] = ((long) this.b.length) & 4294967295L;
                            n40 n40Var3 = this.a;
                            jArr4[i20] = ((long) n40Var3.d) & 4294967295L;
                            jArr4[5] = ((long) n40Var3.h) & 4294967295L;
                            if (i12 == 0 && i13 == 0) {
                                jArr4[6] = jArr4[6] + 1;
                                k40 k40Var3 = (k40) l40Var.c;
                                k40Var3.getClass();
                                long[] jArr5 = k40Var3.a;
                                System.arraycopy(jArr4, i23, jArr5, i23, 128);
                                l40Var.b();
                                k40.a(k40Var, k40Var2, k40Var3);
                                System.arraycopy(k40Var.a, i23, jArr5, i23, 128);
                                l40Var.b();
                                k40.a(k40Var, k40Var, k40Var3);
                            }
                        } else {
                            i = i22;
                            k40Var = null;
                            k40Var2 = null;
                        }
                        int i24 = (i12 == 0 || this.a.g == 16) ? 0 : i18;
                        int i25 = i17;
                        int i26 = i;
                        while (i25 < this.c) {
                            if (i16 != 0) {
                                int i27 = i25 % 128;
                                if (i27 == 0) {
                                    long[] jArr6 = k40Var2.a;
                                    jArr6[6] = jArr6[6] + 1;
                                    k40 k40Var4 = (k40) l40Var.c;
                                    k40Var4.getClass();
                                    long[] jArr7 = k40Var4.a;
                                    System.arraycopy(k40Var2.a, 0, jArr7, 0, 128);
                                    l40Var.b();
                                    k40.a(k40Var, k40Var2, k40Var4);
                                    System.arraycopy(k40Var.a, 0, jArr7, 0, 128);
                                    l40Var.b();
                                    k40.a(k40Var, k40Var, k40Var4);
                                }
                                j = k40Var.a[i27];
                            } else {
                                i25 = i25;
                                i13 = i13;
                                i26 = i26;
                                i21 = i21;
                                j = this.b[i26].a[0];
                            }
                            int i28 = (int) ((j >>> 32) % ((long) this.a.f));
                            if (i12 == 0 && i13 == 0) {
                                i28 = i14;
                            }
                            int i29 = i28 == i14 ? i18 : 0;
                            int i30 = this.c;
                            if (i12 == 0) {
                                i2 = i29 != 0 ? ((i13 * i30) + i25) - 1 : (i13 * i30) + (i25 == 0 ? -1 : 0);
                                i3 = 0;
                            } else {
                                int i31 = this.d;
                                int i32 = ((i13 + 1) * i30) % i31;
                                int i33 = i31 - i30;
                                i2 = i29 != 0 ? (i33 + i25) - 1 : i33 + (i25 == 0 ? -1 : 0);
                                i3 = i32;
                            }
                            long j3 = j & 4294967295L;
                            k40 k40Var5 = k40Var2;
                            int i34 = i28;
                            int i35 = this.d;
                            int i36 = ((int) (((long) i3) + (((long) (i2 - 1)) - ((((long) i2) * ((j3 * j3) >>> 32)) >>> 32)))) % i35;
                            k40[] k40VarArr = this.b;
                            k40 k40Var6 = k40VarArr[i26];
                            k40 k40Var7 = k40VarArr[(i35 * i34) + i36];
                            k40 k40Var8 = k40VarArr[i21];
                            k40 k40Var9 = (k40) l40Var.b;
                            if (i24 != 0) {
                                k40.a(k40Var9, k40Var6, k40Var7);
                                long[] jArr8 = k40Var9.a;
                                k40 k40Var10 = (k40) l40Var.c;
                                k40Var10.getClass();
                                long[] jArr9 = k40Var10.a;
                                System.arraycopy(jArr8, 0, jArr9, 0, 128);
                                l40Var.b();
                                long[] jArr10 = k40Var8.a;
                                int i37 = 0;
                                for (int i38 = 128; i37 < i38; i38 = 128) {
                                    jArr10[i37] = jArr10[i37] ^ (jArr8[i37] ^ jArr9[i37]);
                                    i37++;
                                }
                            } else {
                                k40.a(k40Var9, k40Var6, k40Var7);
                                k40 k40Var11 = (k40) l40Var.c;
                                k40Var11.getClass();
                                System.arraycopy(k40Var9.a, 0, k40Var11.a, 0, 128);
                                l40Var.b();
                                k40.a(k40Var8, k40Var9, k40Var11);
                            }
                            i21++;
                            i25++;
                            i13 = i13;
                            i26 = i21;
                            k40Var2 = k40Var5;
                        }
                        i14++;
                        i6 = i18;
                        i5 = 0;
                        i4 = i20;
                        i12 = i12;
                        j2 = 0;
                    }
                }
                i13++;
                j2 = 0;
            }
            i12++;
        }
        int i39 = i5;
        k40 k40Var12 = this.b[this.d - 1];
        for (int i40 = i6; i40 < this.a.f; i40++) {
            int i41 = this.d;
            k40 k40Var13 = this.b[(i41 - 1) + (i40 * i41)];
            long[] jArr11 = k40Var12.a;
            long[] jArr12 = k40Var13.a;
            for (int i42 = i39; i42 < 128; i42++) {
                jArr11[i42] = jArr11[i42] ^ jArr12[i42];
            }
        }
        k40Var12.getClass();
        long[] jArr13 = k40Var12.a;
        int i43 = i39;
        for (int i44 = i43; i44 < jArr13.length; i44++) {
            xx3.v(i43, jArr13[i44], bArr3);
            i43 += 8;
        }
        d(length, bArr3, bArr2);
        if (this.b == null) {
            return;
        }
        int i45 = i39;
        while (true) {
            k40[] k40VarArr2 = this.b;
            if (i45 >= k40VarArr2.length) {
                return;
            }
            k40 k40Var14 = k40VarArr2[i45];
            if (k40Var14 != null) {
                Arrays.fill(k40Var14.a, 0L);
            }
            i45++;
        }
    }

    public final void e(n40 n40Var) {
        int i = n40Var.g;
        int i2 = n40Var.f;
        if (i != 16 && i != 19) {
            g84.j("unknown Argon2 version");
            return;
        }
        int i3 = n40Var.h;
        if (i3 != 0 && i3 != 1 && i3 != 2) {
            g84.j("unknown Argon2 type");
            return;
        }
        if (i2 < 1) {
            l0.e("lanes must be at least 1");
            return;
        }
        if (i2 > 16777215) {
            l0.e("lanes must be at most 16777215");
            return;
        }
        if (n40Var.d < 1) {
            l0.e("iterations is less than: 1");
            return;
        }
        this.a = n40Var;
        int iMax = Math.max(n40Var.e, i2 * 8) / (i2 * 4);
        this.c = iMax;
        int i4 = iMax * 4;
        this.d = i4;
        this.b = new k40[i2 * i4];
        int i5 = 0;
        while (true) {
            k40[] k40VarArr = this.b;
            if (i5 >= k40VarArr.length) {
                return;
            }
            k40VarArr[i5] = new k40();
            i5++;
        }
    }
}
