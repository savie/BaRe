package defpackage;

import com.nimbusds.jose.crypto.PasswordBasedEncrypter;
import java.util.BitSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ft0 {
    public static final int m = Math.max(PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT, 100);
    public static final int[] n = {1, 4, 13, 40, 121, 364, 1093, 3280, 9841, 29524, 88573, 265720, 797161, 2391484};
    public int a;
    public int b;
    public boolean c;
    public final int[] d;
    public final int[] e;
    public final int[] f;
    public final int[] g;
    public final int[] h;
    public final boolean[] i;
    public final int[] j;
    public final char[] k;
    public int[] l;

    public ft0(vj0 vj0Var) {
        int i = m;
        this.d = new int[i];
        this.e = new int[i];
        this.f = new int[PasswordBasedEncrypter.MIN_RECOMMENDED_ITERATION_COUNT];
        this.g = new int[256];
        this.h = new int[256];
        this.i = new boolean[256];
        this.j = new int[65537];
        this.k = vj0Var.s;
    }

    public final void a(vj0 vj0Var, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        this = this;
        byte[] bArr = vj0Var.q;
        int i10 = i + 1;
        int i11 = 0;
        bArr[0] = bArr[i10];
        int[] iArr = vj0Var.r;
        int[] iArr2 = new int[257];
        if (this.l == null) {
            this.l = new int[this.k.length / 2];
        }
        int[] iArr3 = this.l;
        for (int i12 = 0; i12 < i10; i12++) {
            iArr3[i12] = 0;
        }
        int i13 = 0;
        while (true) {
            i2 = 1;
            if (i13 >= i10) {
                break;
            }
            int i14 = bArr[i13] & 255;
            iArr2[i14] = iArr2[i14] + 1;
            i13++;
        }
        for (int i15 = 1; i15 < 257; i15++) {
            iArr2[i15] = iArr2[i15] + iArr2[i15 - 1];
        }
        for (int i16 = 0; i16 < i10; i16++) {
            int i17 = bArr[i16] & 255;
            int i18 = iArr2[i17] - 1;
            iArr2[i17] = i18;
            iArr[i18] = i16;
        }
        BitSet bitSet = new BitSet(i + 65);
        for (int i19 = 0; i19 < 256; i19++) {
            bitSet.set(iArr2[i19]);
        }
        for (int i20 = 0; i20 < 32; i20++) {
            int i21 = (i20 * 2) + i10;
            bitSet.set(i21);
            bitSet.clear(i21 + 1);
        }
        int i22 = 1;
        do {
            int i23 = i11;
            int i24 = i23;
            while (i23 < i10) {
                if (bitSet.get(i23)) {
                    i24 = i23;
                }
                int i25 = iArr[i23] - i22;
                if (i25 < 0) {
                    i25 += i10;
                }
                iArr3[i25] = i24;
                i23++;
            }
            i3 = -1;
            i4 = i11;
            int iNextSetBit = -1;
            while (true) {
                int iNextClearBit = bitSet.nextClearBit(iNextSetBit + i2);
                int i26 = iNextClearBit - 1;
                if (i26 >= i10 || (iNextSetBit = bitSet.nextSetBit(iNextClearBit + 1) - i2) >= i10) {
                    break;
                }
                if (iNextSetBit > i26) {
                    i4 += (iNextSetBit - i26) + i2;
                    int[] iArr4 = this.d;
                    iArr4[i11] = i26;
                    int[] iArr5 = this.e;
                    iArr5[i11] = iNextSetBit;
                    int i27 = i2;
                    long j = 0;
                    while (i27 > 0) {
                        int i28 = i27 - 1;
                        i11 = i11;
                        int[] iArr6 = {iArr4[i28], iArr5[i28]};
                        int i29 = iArr6[i11];
                        int i30 = iArr6[i2];
                        i2 = i2;
                        int i31 = i30 - i29;
                        if (i31 < 10) {
                            if (i29 != i30) {
                                if (i31 > 3) {
                                    for (int i32 = i30 - 4; i32 >= i29; i32--) {
                                        int i33 = iArr[i32];
                                        int i34 = iArr3[i33];
                                        int i35 = i32 + 4;
                                        while (true) {
                                            if (i35 > i30) {
                                                i9 = i35;
                                                break;
                                            }
                                            int i36 = iArr[i35];
                                            i9 = i35;
                                            if (i34 <= iArr3[i36]) {
                                                break;
                                            }
                                            iArr[i9 - 4] = i36;
                                            i35 = i9 + 4;
                                        }
                                        iArr[i9 - 4] = i33;
                                    }
                                }
                                int i37 = i30 - 1;
                                while (i37 >= i29) {
                                    int i38 = iArr[i37];
                                    int i39 = iArr3[i38];
                                    int i40 = i37 + 1;
                                    while (true) {
                                        if (i40 > i30) {
                                            i8 = i37;
                                            break;
                                        }
                                        int i41 = iArr[i40];
                                        i8 = i37;
                                        if (i39 <= iArr3[i41]) {
                                            break;
                                        }
                                        iArr[i40 - 1] = i41;
                                        i40++;
                                        i37 = i8;
                                    }
                                    iArr[i40 - 1] = i38;
                                    i37 = i8 - 1;
                                }
                            }
                            i27 = i28;
                        } else {
                            j = ((j * 7621) + 1) % 32768;
                            long j2 = j % 3;
                            long j3 = j2 == 0 ? iArr3[iArr[i29]] : j2 == 1 ? iArr3[iArr[(i29 + i30) >>> 1]] : iArr3[iArr[i30]];
                            int[] iArr7 = iArr;
                            int i42 = i30;
                            int i43 = i42;
                            int i44 = i29;
                            int i45 = i44;
                            while (true) {
                                if (i44 > i42) {
                                    i5 = i22;
                                } else {
                                    int i46 = iArr7[i44];
                                    i5 = i22;
                                    int i47 = iArr3[i46] - ((int) j3);
                                    if (i47 == 0) {
                                        iArr7[i44] = iArr7[i45];
                                        iArr7[i45] = i46;
                                        i45++;
                                    } else {
                                        if (i47 > 0) {
                                        }
                                        i22 = i5;
                                    }
                                    i44++;
                                    i22 = i5;
                                }
                                i6 = i43;
                                while (true) {
                                    if (i44 > i42) {
                                        i7 = i10;
                                        break;
                                    }
                                    int i48 = iArr7[i42];
                                    i7 = i10;
                                    int i49 = iArr3[i48] - ((int) j3);
                                    if (i49 != 0) {
                                        if (i49 < 0) {
                                            break;
                                        }
                                    } else {
                                        iArr7[i42] = iArr7[i6];
                                        iArr7[i6] = i48;
                                        i6--;
                                    }
                                    i42--;
                                    i10 = i7;
                                }
                                if (i44 > i42) {
                                    break;
                                }
                                int i50 = iArr7[i44];
                                iArr7[i44] = iArr7[i42];
                                iArr7[i42] = i50;
                                i44++;
                                i42--;
                                i43 = i6;
                                i10 = i7;
                                i22 = i5;
                            }
                            if (i6 < i45) {
                                i27 = i28;
                            } else {
                                int iMin = Math.min(i45 - i29, i44 - i45);
                                int i51 = i44 - iMin;
                                int i52 = i29;
                                while (iMin > 0) {
                                    int i53 = iArr7[i52];
                                    iArr7[i52] = iArr7[i51];
                                    iArr7[i51] = i53;
                                    i52++;
                                    i51++;
                                    iMin--;
                                }
                                int i54 = i30 - i6;
                                int i55 = i6 - i42;
                                int iMin2 = Math.min(i54, i55);
                                int i56 = i42 + 1;
                                int i57 = (i30 - iMin2) + 1;
                                while (iMin2 > 0) {
                                    int i58 = iArr7[i56];
                                    iArr7[i56] = iArr7[i57];
                                    iArr7[i57] = i58;
                                    i56++;
                                    i57++;
                                    iMin2--;
                                }
                                int i59 = ((i44 + i29) - i45) - 1;
                                int i60 = (i30 - i55) + 1;
                                if (i59 - i29 > i30 - i60) {
                                    iArr4[i28] = i29;
                                    iArr5[i28] = i59;
                                    iArr4[i27] = i60;
                                    iArr5[i27] = i30;
                                    i27++;
                                } else {
                                    iArr4[i28] = i60;
                                    iArr5[i28] = i30;
                                    iArr4[i27] = i29;
                                    iArr5[i27] = i59;
                                    i27++;
                                }
                            }
                            iArr = iArr7;
                            i10 = i7;
                            i22 = i5;
                        }
                    }
                    int[] iArr8 = iArr;
                    int i61 = i22;
                    int i62 = i10;
                    int i63 = i11;
                    int i64 = i2;
                    int i65 = -1;
                    while (i26 <= iNextSetBit) {
                        int i66 = iArr3[iArr8[i26]];
                        if (i65 != i66) {
                            bitSet.set(i26);
                            i65 = i66;
                        }
                        i26++;
                    }
                    i11 = i63;
                    i2 = i64;
                    iArr = iArr8;
                    i10 = i62;
                    i22 = i61;
                    i3 = -1;
                }
            }
            i22 *= 2;
            if (i22 > i10) {
                break;
            }
        } while (i4 != 0);
        for (int i67 = i11; i67 < i10; i67++) {
            iArr[i67] = iArr[i67] - i2;
        }
        while (i11 < i10) {
            if (iArr[i11] == i3) {
                iArr[i11] = i;
                return;
            }
            i11++;
        }
    }
}
