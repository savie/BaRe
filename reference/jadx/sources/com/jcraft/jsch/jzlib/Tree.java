package com.jcraft.jsch.jzlib;

import com.nimbusds.jose.crypto.impl.XC20P;
import com.nimbusds.jose.jwk.gen.OctetSequenceKeyGenerator;
import com.nimbusds.jose.jwk.gen.RSAKeyGenerator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class Tree {
    public static final int[] d = {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 0};
    public static final int[] e = {0, 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13};
    public static final int[] f = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 7};
    public static final byte[] g = {16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15};
    public static final byte[] h = {0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 0, 0, 16, 17, 18, 18, 19, 19, 20, 20, 20, 20, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 28, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29};
    public static final byte[] i = {0, 1, 2, 3, 4, 5, 6, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 15, 15, 15, 15, 16, 16, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 17, 18, 18, 18, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 19, 19, 19, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 25, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 28};
    public static final int[] j = {0, 1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 20, 24, 28, 32, 40, 48, 56, 64, 80, 96, OctetSequenceKeyGenerator.MIN_KEY_SIZE_BITS, 128, 160, XC20P.IV_BIT_LENGTH, 224, 0};
    public static final int[] k = {0, 1, 2, 3, 4, 6, 8, 12, 16, 24, 32, 48, 64, 96, 128, XC20P.IV_BIT_LENGTH, 256, 384, 512, 768, 1024, 1536, RSAKeyGenerator.MIN_KEY_SIZE_BITS, 3072, 4096, 6144, 8192, 12288, 16384, 24576};
    public short[] a;
    public int b;
    public StaticTree c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v14, types: [int] */
    /* JADX WARN: Type inference failed for: r3v15, types: [int] */
    /* JADX WARN: Type inference failed for: r4v13, types: [int, short] */
    /* JADX WARN: Type inference failed for: r4v14, types: [int] */
    /* JADX WARN: Type inference failed for: r4v15, types: [int] */
    /* JADX WARN: Type inference failed for: r6v10, types: [int] */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12, types: [int] */
    /* JADX WARN: Type inference failed for: r6v9, types: [short] */
    public final void a(Deflate deflate) {
        int i2;
        int i3;
        char c;
        short[] sArr;
        short s;
        short[] sArr2;
        char c2;
        int i4;
        int i5;
        short[] sArr3 = this.a;
        StaticTree staticTree = this.c;
        short[] sArr4 = staticTree.a;
        int i6 = staticTree.d;
        deflate.i0 = 0;
        deflate.j0 = 573;
        int i7 = 0;
        int i8 = -1;
        while (true) {
            i2 = 1;
            if (i7 >= i6) {
                break;
            }
            int i9 = i7 * 2;
            if (sArr3[i9] != 0) {
                int[] iArr = deflate.h0;
                int i10 = deflate.i0 + 1;
                deflate.i0 = i10;
                iArr[i10] = i7;
                deflate.k0[i7] = 0;
                i8 = i7;
            } else {
                sArr3[i9 + 1] = 0;
            }
            i7++;
        }
        while (true) {
            i3 = deflate.i0;
            c = 2;
            if (i3 >= 2) {
                break;
            }
            int[] iArr2 = deflate.h0;
            int i11 = i3 + 1;
            deflate.i0 = i11;
            if (i8 < 2) {
                i5 = i8 + 1;
                i4 = i5;
            } else {
                i4 = i8;
                i5 = 0;
            }
            iArr2[i11] = i5;
            int i12 = i5 * 2;
            sArr3[i12] = 1;
            deflate.k0[i5] = 0;
            deflate.p0--;
            if (sArr4 != null) {
                deflate.q0 -= sArr4[i12 + 1];
            }
            i8 = i4;
        }
        this.b = i8;
        for (int i13 = i3 / 2; i13 >= 1; i13--) {
            deflate.l(i13, sArr3);
        }
        while (true) {
            int[] iArr3 = deflate.h0;
            int i14 = iArr3[1];
            int i15 = deflate.i0;
            deflate.i0 = i15 - 1;
            iArr3[1] = iArr3[i15];
            deflate.l(1, sArr3);
            int[] iArr4 = deflate.h0;
            int i16 = iArr4[1];
            int i17 = deflate.j0;
            int i18 = i17 - 1;
            deflate.j0 = i18;
            iArr4[i18] = i14;
            int i19 = i17 - 2;
            deflate.j0 = i19;
            iArr4[i19] = i16;
            int i20 = i14 * 2;
            int i21 = i16 * 2;
            sArr3[i6 * 2] = (short) (sArr3[i20] + sArr3[i21]);
            byte[] bArr = deflate.k0;
            bArr[i6] = (byte) (Math.max((int) bArr[i14], (int) bArr[i16]) + 1);
            short s2 = (short) i6;
            sArr3[i21 + 1] = s2;
            sArr3[i20 + 1] = s2;
            int i22 = i6 + 1;
            deflate.h0[1] = i6;
            deflate.l(1, sArr3);
            if (deflate.i0 < 2) {
                break;
            } else {
                i6 = i22;
            }
        }
        int[] iArr5 = deflate.h0;
        int i23 = deflate.j0 - 1;
        deflate.j0 = i23;
        iArr5[i23] = iArr5[1];
        short[] sArr5 = this.a;
        StaticTree staticTree2 = this.c;
        short[] sArr6 = staticTree2.a;
        int[] iArr6 = staticTree2.b;
        int i24 = staticTree2.c;
        int i25 = staticTree2.e;
        for (int i26 = 0; i26 <= 15; i26++) {
            deflate.f0[i26] = 0;
        }
        int[] iArr7 = deflate.h0;
        int i27 = deflate.j0;
        sArr5[(iArr7[i27] * 2) + 1] = 0;
        int i28 = i27 + 1;
        int i29 = 0;
        for (int i30 = 573; i28 < i30; i30 = 573) {
            int i31 = deflate.h0[i28];
            int i32 = i31 * 2;
            int i33 = i32 + 1;
            int i34 = sArr5[(sArr5[i33] * 2) + 1] + 1;
            if (i34 > i25) {
                i29++;
                i34 = i25;
            }
            int i35 = i2;
            sArr5[i33] = (short) i34;
            if (i31 > this.b) {
                c2 = c;
            } else {
                short[] sArr7 = deflate.f0;
                c2 = c;
                sArr7[i34] = (short) (sArr7[i34] + 1);
                int i36 = i31 >= i24 ? iArr6[i31 - i24] : 0;
                short s3 = sArr5[i32];
                deflate.p0 = ((i34 + i36) * s3) + deflate.p0;
                if (sArr6 != null) {
                    deflate.q0 = ((sArr6[i33] + i36) * s3) + deflate.q0;
                }
            }
            i28++;
            i2 = i35;
            c = c2;
        }
        int i37 = i2;
        if (i29 != 0) {
            do {
                int i38 = i25 - 1;
                while (true) {
                    sArr = deflate.f0;
                    s = sArr[i38];
                    if (s != 0) {
                        break;
                    } else {
                        i38--;
                    }
                }
                sArr[i38] = (short) (s - 1);
                int i39 = i38 + 1;
                sArr[i39] = (short) (sArr[i39] + 2);
                sArr[i25] = (short) (sArr[i25] - 1);
                i29 -= 2;
            } while (i29 > 0);
            while (i25 != 0) {
                short s4 = deflate.f0[i25];
                while (s4 != 0) {
                    i28--;
                    int i40 = deflate.h0[i28];
                    if (i40 <= this.b) {
                        int i41 = i40 * 2;
                        int i42 = i41 + 1;
                        short s5 = sArr5[i42];
                        if (s5 != i25) {
                            sArr2 = sArr5;
                            deflate.p0 += (int) ((((long) i25) - ((long) s5)) * ((long) sArr2[i41]));
                            sArr2[i42] = (short) i25;
                        } else {
                            sArr2 = sArr5;
                        }
                        s4--;
                        sArr3 = sArr3;
                        sArr5 = sArr2;
                    }
                }
                i25--;
            }
        }
        short[] sArr8 = sArr3;
        short[] sArr9 = deflate.f0;
        short[] sArr10 = deflate.g0;
        sArr10[0] = 0;
        short s6 = 0;
        for (int i43 = i37; i43 <= 15; i43++) {
            s6 = (short) ((s6 + sArr9[i43 - 1]) << 1);
            sArr10[i43] = s6;
        }
        for (int i44 = 0; i44 <= i8; i44++) {
            int i45 = i44 * 2;
            short s7 = sArr8[i45 + 1];
            if (s7 != 0) {
                short s8 = sArr10[s7];
                sArr10[s7] = (short) (s8 + 1);
                int i46 = 0;
                do {
                    int i47 = i46 | (s8 & 1);
                    s8 >>>= 1;
                    i46 = i47 << 1;
                    s7--;
                } while (s7 > 0);
                sArr8[i45] = (short) (i46 >>> 1);
            }
        }
    }
}
