package com.jcraft.jsch.jzlib;

import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class InfCodes {
    public static final int[] q = {0, 1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535};
    public int a;
    public int b;
    public int[] c;
    public int d = 0;
    public int e;
    public int f;
    public int g;
    public int h;
    public byte i;
    public byte j;
    public int[] k;
    public int l;
    public int[] m;
    public int n;
    public final ZStream o;
    public final InfBlocks p;

    public InfCodes(ZStream zStream, InfBlocks infBlocks) {
        this.o = zStream;
        this.p = infBlocks;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0225 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:103:0x0227 A[LOOP:14: B:101:0x0223->B:103:0x0227, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:108:0x0269  */
    /* JADX WARN: Code duplicated, block: B:109:0x0278  */
    /* JADX WARN: Code duplicated, block: B:111:0x027c  */
    /* JADX WARN: Code duplicated, block: B:196:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:222:0x0551 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:223:0x0553 A[LOOP:2: B:221:0x054f->B:223:0x0553, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:237:0x05c6  */
    /* JADX WARN: Code duplicated, block: B:247:0x019e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:249:0x0238 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:250:0x0289 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:260:0x0564 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:261:0x059e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:262:0x0593 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:263:0x05b1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:264:0x05a2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:265:0x05c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:266:0x05b5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:267:0x05cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x015c A[LOOP:11: B:59:0x015a->B:60:0x015c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:63:0x0164  */
    /* JADX WARN: Code duplicated, block: B:64:0x0166  */
    /* JADX WARN: Code duplicated, block: B:69:0x0170  */
    /* JADX WARN: Code duplicated, block: B:70:0x0174  */
    /* JADX WARN: Code duplicated, block: B:73:0x0178  */
    /* JADX WARN: Code duplicated, block: B:75:0x0184  */
    /* JADX WARN: Code duplicated, block: B:76:0x018b  */
    /* JADX WARN: Code duplicated, block: B:83:0x019b  */
    /* JADX WARN: Code duplicated, block: B:89:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:90:0x01c9  */
    public final int a(int i) {
        int i2;
        int i3;
        int[] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int[] iArr2;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        ZStream zStream = this.o;
        int i24 = zStream.b;
        int i25 = zStream.c;
        InfBlocks infBlocks = this.p;
        int i26 = infBlocks.q;
        int i27 = infBlocks.p;
        int i28 = infBlocks.v;
        int i29 = infBlocks.u;
        int i30 = i28 < i29 ? (i29 - i28) - 1 : infBlocks.t - i28;
        int i31 = i28;
        int i32 = i27;
        int i33 = i26;
        int i34 = i25;
        int i35 = i24;
        int iA = i;
        while (true) {
            int i36 = this.a;
            int[] iArr3 = q;
            switch (i36) {
                case 0:
                    if (i30 >= 258 && i34 >= 10) {
                        infBlocks.q = i33;
                        infBlocks.p = i32;
                        zStream.c = i34;
                        zStream.d += (long) (i35 - zStream.b);
                        zStream.b = i35;
                        infBlocks.v = i31;
                        byte b = this.i;
                        byte b2 = this.j;
                        int[] iArr4 = this.k;
                        int i37 = this.l;
                        int[] iArr5 = this.m;
                        int i38 = this.n;
                        int i39 = infBlocks.t;
                        int i40 = infBlocks.u;
                        int i41 = i31 < i40 ? (i40 - i31) - 1 : i39 - i31;
                        int i42 = iArr3[b];
                        int i43 = iArr3[b2];
                        int i44 = i41;
                        while (true) {
                            if (i32 < 20) {
                                i34--;
                                i33 |= (zStream.a[i35] & 255) << i32;
                                i32 += 8;
                                i35++;
                            } else {
                                int i45 = i33 & i42;
                                int i46 = (i37 + i45) * 3;
                                int i47 = iArr4[i46];
                                if (i47 == 0) {
                                    int i48 = iArr4[i46 + 1];
                                    i33 >>= i48;
                                    i32 -= i48;
                                    i19 = i31 + 1;
                                    infBlocks.s[i31] = (byte) iArr4[i46 + 2];
                                } else {
                                    while (true) {
                                        int i49 = iArr4[i46 + 1];
                                        i33 >>= i49;
                                        i32 -= i49;
                                        if ((i47 & 16) != 0) {
                                            int i50 = i47 & 15;
                                            int i51 = iArr4[i46 + 2] + (i33 & iArr3[i50]);
                                            int i52 = i33 >> i50;
                                            int i53 = i32 - i50;
                                            int i54 = i35;
                                            while (i53 < 15) {
                                                i34--;
                                                i52 |= (zStream.a[i54] & 255) << i53;
                                                i53 += 8;
                                                i54++;
                                            }
                                            int i55 = i52 & i43;
                                            int i56 = (i38 + i55) * 3;
                                            int i57 = iArr5[i56];
                                            while (true) {
                                                int i58 = iArr5[i56 + 1];
                                                i52 >>= i58;
                                                i53 -= i58;
                                                if ((i57 & 16) != 0) {
                                                    int i59 = i57 & 15;
                                                    int i60 = i34;
                                                    while (true) {
                                                        int i61 = i54;
                                                        if (i53 < i59) {
                                                            i60--;
                                                            i54 = i61 + 1;
                                                            i52 |= (zStream.a[i61] & 255) << i53;
                                                            i53 += 8;
                                                        } else {
                                                            int i62 = iArr5[i56 + 2] + (i52 & iArr3[i59]);
                                                            int i63 = i52 >> i59;
                                                            int i64 = i53 - i59;
                                                            int i65 = i44 - i51;
                                                            if (i31 >= i62) {
                                                                int i66 = i31 - i62;
                                                                int i67 = i31 - i66;
                                                                if (i67 <= 0 || 2 <= i67) {
                                                                    byte[] bArr = infBlocks.s;
                                                                    System.arraycopy(bArr, i66, bArr, i31, 2);
                                                                    i31 += 2;
                                                                    i16 = i66 + 2;
                                                                } else {
                                                                    byte[] bArr2 = infBlocks.s;
                                                                    int i68 = i31 + 1;
                                                                    int i69 = i66 + 1;
                                                                    bArr2[i31] = bArr2[i66];
                                                                    i31 += 2;
                                                                    i16 = i66 + 2;
                                                                    bArr2[i68] = bArr2[i69];
                                                                }
                                                                i51 -= 2;
                                                            } else {
                                                                i16 = i31 - i62;
                                                                do {
                                                                    i16 += i39;
                                                                } while (i16 < 0);
                                                                int i70 = i39 - i16;
                                                                if (i51 > i70) {
                                                                    i51 -= i70;
                                                                    int i71 = i31 - i16;
                                                                    if (i71 <= 0 || i70 <= i71) {
                                                                        byte[] bArr3 = infBlocks.s;
                                                                        System.arraycopy(bArr3, i16, bArr3, i31, i70);
                                                                        i31 += i70;
                                                                    } else {
                                                                        while (true) {
                                                                            byte[] bArr4 = infBlocks.s;
                                                                            int i72 = i16 + 1;
                                                                            bArr4[i31] = bArr4[i16];
                                                                            i70--;
                                                                            i31++;
                                                                            if (i70 != 0) {
                                                                                i16 = i72;
                                                                            }
                                                                        }
                                                                    }
                                                                    i16 = 0;
                                                                }
                                                            }
                                                            int i73 = i31 - i16;
                                                            if (i73 <= 0 || i51 <= i73) {
                                                                byte[] bArr5 = infBlocks.s;
                                                                System.arraycopy(bArr5, i16, bArr5, i31, i51);
                                                                i31 += i51;
                                                            } else {
                                                                while (true) {
                                                                    byte[] bArr6 = infBlocks.s;
                                                                    int i74 = i16 + 1;
                                                                    bArr6[i31] = bArr6[i16];
                                                                    i51--;
                                                                    i31++;
                                                                    if (i51 != 0) {
                                                                        i16 = i74;
                                                                    }
                                                                }
                                                            }
                                                            i34 = i60;
                                                            i17 = i61;
                                                            i33 = i63;
                                                            i32 = i64;
                                                            i18 = i65;
                                                            if (i18 >= 258 || i34 < 10) {
                                                                i22 = zStream.c - i34;
                                                                i23 = i32 >> 3;
                                                                if (i23 < i22) {
                                                                    i22 = i23;
                                                                }
                                                                int i75 = i17 - i22;
                                                                infBlocks.q = i33;
                                                                infBlocks.p = i32 - (i22 << 3);
                                                                zStream.c = i34 + i22;
                                                                zStream.d += (long) (i75 - zStream.b);
                                                                zStream.b = i75;
                                                                infBlocks.v = i31;
                                                                iA = 0;
                                                            } else {
                                                                i44 = i18;
                                                                i35 = i17;
                                                            }
                                                        }
                                                    }
                                                } else if ((i57 & 64) == 0) {
                                                    i55 = i55 + iArr5[i56 + 2] + (i52 & iArr3[i57]);
                                                    i56 = (i38 + i55) * 3;
                                                    i57 = iArr5[i56];
                                                } else {
                                                    zStream.i = "invalid distance code";
                                                    int i76 = zStream.c - i34;
                                                    int i77 = i53 >> 3;
                                                    if (i77 < i76) {
                                                        i76 = i77;
                                                    }
                                                    int i78 = i54 - i76;
                                                    infBlocks.q = i52;
                                                    infBlocks.p = i53 - (i76 << 3);
                                                    zStream.c = i34 + i76;
                                                    zStream.d += (long) (i78 - zStream.b);
                                                    zStream.b = i78;
                                                    infBlocks.v = i31;
                                                }
                                            }
                                        } else if ((i47 & 64) == 0) {
                                            i45 = i45 + iArr4[i46 + 2] + (i33 & iArr3[i47]);
                                            i46 = (i37 + i45) * 3;
                                            i47 = iArr4[i46];
                                            if (i47 == 0) {
                                                int i79 = iArr4[i46 + 1];
                                                i33 >>= i79;
                                                i32 -= i79;
                                                i19 = i31 + 1;
                                                infBlocks.s[i31] = (byte) iArr4[i46 + 2];
                                            }
                                        } else {
                                            int i80 = i35;
                                            if ((i47 & 32) != 0) {
                                                int i81 = zStream.c - i34;
                                                int i82 = i32 >> 3;
                                                if (i82 < i81) {
                                                    i81 = i82;
                                                }
                                                int i83 = i80 - i81;
                                                infBlocks.q = i33;
                                                infBlocks.p = i32 - (i81 << 3);
                                                zStream.c = i34 + i81;
                                                zStream.d += (long) (i83 - zStream.b);
                                                zStream.b = i83;
                                                infBlocks.v = i31;
                                                iA = 1;
                                            } else {
                                                zStream.i = "invalid literal/length code";
                                                int i84 = zStream.c - i34;
                                                int i85 = i32 >> 3;
                                                if (i85 < i84) {
                                                    i84 = i85;
                                                }
                                                int i86 = i80 - i84;
                                                infBlocks.q = i33;
                                                infBlocks.p = i32 - (i84 << 3);
                                                zStream.c = i34 + i84;
                                                zStream.d += (long) (i86 - zStream.b);
                                                zStream.b = i86;
                                                infBlocks.v = i31;
                                            }
                                        }
                                        iA = -3;
                                    }
                                }
                                i17 = i35;
                                i18 = i44 - 1;
                                i31 = i19;
                                if (i18 >= 258) {
                                }
                                i22 = zStream.c - i34;
                                i23 = i32 >> 3;
                                if (i23 < i22) {
                                    i22 = i23;
                                }
                                int i710 = i17 - i22;
                                infBlocks.q = i33;
                                infBlocks.p = i32 - (i22 << 3);
                                zStream.c = i34 + i22;
                                zStream.d += (long) (i710 - zStream.b);
                                zStream.b = i710;
                                infBlocks.v = i31;
                                iA = 0;
                            }
                        }
                        i35 = zStream.b;
                        i34 = zStream.c;
                        i33 = infBlocks.q;
                        i32 = infBlocks.p;
                        i31 = infBlocks.v;
                        int i87 = infBlocks.u;
                        if (i31 < i87) {
                            i20 = 1;
                            i21 = (i87 - i31) - 1;
                        } else {
                            i20 = 1;
                            i21 = infBlocks.t - i31;
                        }
                        if (iA != 0) {
                            this.a = iA == i20 ? 7 : 9;
                            i30 = i21;
                        } else {
                            i30 = i21;
                        }
                        break;
                    }
                    this.e = this.i;
                    this.c = this.k;
                    this.d = this.l;
                    this.a = 1;
                    i13 = this.e;
                    while (i32 < i13) {
                        if (i34 != 0) {
                            infBlocks.q = i33;
                            infBlocks.p = i32;
                            zStream.c = i34;
                            zStream.d += (long) (i35 - zStream.b);
                            zStream.b = i35;
                            infBlocks.v = i31;
                            return infBlocks.a(iA);
                        }
                        i34--;
                        i33 |= (zStream.a[i35] & 255) << i32;
                        i32 += 8;
                        i35++;
                        iA = 0;
                    }
                    i14 = (this.d + (iArr3[i13] & i33)) * 3;
                    iArr2 = this.c;
                    int i88 = iArr2[i14 + 1];
                    i33 >>>= i88;
                    i32 -= i88;
                    i15 = iArr2[i14];
                    if (i15 == 0) {
                        this.f = iArr2[i14 + 2];
                        this.a = 6;
                    } else if ((i15 & 16) != 0) {
                        this.g = i15 & 15;
                        this.b = iArr2[i14 + 2];
                        this.a = 2;
                    } else if ((i15 & 64) == 0) {
                        this.e = i15;
                        this.d = (i14 / 3) + iArr2[i14 + 2];
                    } else {
                        if ((i15 & 32) != 0) {
                            this.a = 9;
                            zStream.i = "invalid literal/length code";
                            infBlocks.q = i33;
                            infBlocks.p = i32;
                            zStream.c = i34;
                            zStream.d += (long) (i35 - zStream.b);
                            zStream.b = i35;
                            infBlocks.v = i31;
                            return infBlocks.a(-3);
                        }
                        this.a = 7;
                    }
                    break;
                case 1:
                    i13 = this.e;
                    while (i32 < i13) {
                        if (i34 != 0) {
                            infBlocks.q = i33;
                            infBlocks.p = i32;
                            zStream.c = i34;
                            zStream.d += (long) (i35 - zStream.b);
                            zStream.b = i35;
                            infBlocks.v = i31;
                            return infBlocks.a(iA);
                        }
                        i34--;
                        i33 |= (zStream.a[i35] & 255) << i32;
                        i32 += 8;
                        i35++;
                        iA = 0;
                    }
                    i14 = (this.d + (iArr3[i13] & i33)) * 3;
                    iArr2 = this.c;
                    int i89 = iArr2[i14 + 1];
                    i33 >>>= i89;
                    i32 -= i89;
                    i15 = iArr2[i14];
                    if (i15 == 0) {
                        this.f = iArr2[i14 + 2];
                        this.a = 6;
                    } else if ((i15 & 16) != 0) {
                        this.g = i15 & 15;
                        this.b = iArr2[i14 + 2];
                        this.a = 2;
                    } else if ((i15 & 64) == 0) {
                        this.e = i15;
                        this.d = (i14 / 3) + iArr2[i14 + 2];
                    } else {
                        if ((i15 & 32) != 0) {
                            this.a = 9;
                            zStream.i = "invalid literal/length code";
                            infBlocks.q = i33;
                            infBlocks.p = i32;
                            zStream.c = i34;
                            zStream.d += (long) (i35 - zStream.b);
                            zStream.b = i35;
                            infBlocks.v = i31;
                            return infBlocks.a(-3);
                        }
                        this.a = 7;
                    }
                    break;
                case 2:
                    int i90 = this.g;
                    while (i32 < i90) {
                        if (i34 == 0) {
                            infBlocks.q = i33;
                            infBlocks.p = i32;
                            zStream.c = i34;
                            zStream.d += (long) (i35 - zStream.b);
                            zStream.b = i35;
                            infBlocks.v = i31;
                            return infBlocks.a(iA);
                        }
                        i34--;
                        i33 |= (zStream.a[i35] & 255) << i32;
                        i32 += 8;
                        iA = 0;
                        i35++;
                    }
                    this.b += iArr3[i90] & i33;
                    i33 >>= i90;
                    i32 -= i90;
                    this.e = this.j;
                    this.c = this.m;
                    this.d = this.n;
                    this.a = 3;
                    i2 = this.e;
                    while (i32 < i2) {
                        if (i34 != 0) {
                            infBlocks.q = i33;
                            infBlocks.p = i32;
                            zStream.c = i34;
                            zStream.d += (long) (i35 - zStream.b);
                            zStream.b = i35;
                            infBlocks.v = i31;
                            return infBlocks.a(iA);
                        }
                        i34--;
                        i33 |= (zStream.a[i35] & 255) << i32;
                        i32 += 8;
                        iA = 0;
                        i35++;
                    }
                    i3 = (this.d + (iArr3[i2] & i33)) * 3;
                    iArr = this.c;
                    int i91 = iArr[i3 + 1];
                    i33 >>= i91;
                    i32 -= i91;
                    i4 = iArr[i3];
                    if ((i4 & 16) != 0) {
                        this.g = i4 & 15;
                        this.h = iArr[i3 + 2];
                        this.a = 4;
                    } else {
                        if ((i4 & 64) == 0) {
                            this.a = 9;
                            zStream.i = "invalid distance code";
                            infBlocks.q = i33;
                            infBlocks.p = i32;
                            zStream.c = i34;
                            zStream.d += (long) (i35 - zStream.b);
                            zStream.b = i35;
                            infBlocks.v = i31;
                            return infBlocks.a(-3);
                        }
                        this.e = i4;
                        this.d = (i3 / 3) + iArr[i3 + 2];
                    }
                    break;
                case 3:
                    i2 = this.e;
                    while (i32 < i2) {
                        if (i34 != 0) {
                            infBlocks.q = i33;
                            infBlocks.p = i32;
                            zStream.c = i34;
                            zStream.d += (long) (i35 - zStream.b);
                            zStream.b = i35;
                            infBlocks.v = i31;
                            return infBlocks.a(iA);
                        }
                        i34--;
                        i33 |= (zStream.a[i35] & 255) << i32;
                        i32 += 8;
                        iA = 0;
                        i35++;
                    }
                    i3 = (this.d + (iArr3[i2] & i33)) * 3;
                    iArr = this.c;
                    int i92 = iArr[i3 + 1];
                    i33 >>= i92;
                    i32 -= i92;
                    i4 = iArr[i3];
                    if ((i4 & 16) != 0) {
                        this.g = i4 & 15;
                        this.h = iArr[i3 + 2];
                        this.a = 4;
                    } else {
                        if ((i4 & 64) == 0) {
                            this.a = 9;
                            zStream.i = "invalid distance code";
                            infBlocks.q = i33;
                            infBlocks.p = i32;
                            zStream.c = i34;
                            zStream.d += (long) (i35 - zStream.b);
                            zStream.b = i35;
                            infBlocks.v = i31;
                            return infBlocks.a(-3);
                        }
                        this.e = i4;
                        this.d = (i3 / 3) + iArr[i3 + 2];
                    }
                    break;
                case 4:
                    int i93 = this.g;
                    while (i32 < i93) {
                        if (i34 == 0) {
                            infBlocks.q = i33;
                            infBlocks.p = i32;
                            zStream.c = i34;
                            zStream.d += (long) (i35 - zStream.b);
                            zStream.b = i35;
                            infBlocks.v = i31;
                            return infBlocks.a(iA);
                        }
                        i34--;
                        i33 |= (zStream.a[i35] & 255) << i32;
                        i32 += 8;
                        iA = 0;
                        i35++;
                    }
                    this.h += iArr3[i93] & i33;
                    i33 >>= i93;
                    i32 -= i93;
                    this.a = 5;
                    i5 = i31 - this.h;
                    while (i5 < 0) {
                        i5 += infBlocks.t;
                    }
                    while (this.b != 0) {
                        if (i30 == 0) {
                            i7 = infBlocks.t;
                            if (i31 == i7 && (i11 = infBlocks.u) != 0) {
                                if (i11 > 0) {
                                    i30 = i11 - 1;
                                } else {
                                    i30 = i7;
                                }
                                i31 = 0;
                            }
                            if (i30 == 0) {
                                infBlocks.v = i31;
                                iA = infBlocks.a(iA);
                                i31 = infBlocks.v;
                                i8 = infBlocks.u;
                                if (i31 < i8) {
                                    i9 = (i8 - i31) - 1;
                                } else {
                                    i9 = infBlocks.t - i31;
                                }
                                i10 = infBlocks.t;
                                if (i31 == i10 || i8 == 0) {
                                    i30 = i9;
                                } else {
                                    if (i8 > 0) {
                                        i10 = i8 - 1;
                                    }
                                    i31 = 0;
                                    i30 = i10;
                                }
                                if (i30 == 0) {
                                    infBlocks.q = i33;
                                    infBlocks.p = i32;
                                    zStream.c = i34;
                                    zStream.d += (long) (i35 - zStream.b);
                                    zStream.b = i35;
                                    infBlocks.v = i31;
                                    return infBlocks.a(iA);
                                }
                            }
                        }
                        byte[] bArr7 = infBlocks.s;
                        int i94 = i31 + 1;
                        i6 = i5 + 1;
                        bArr7[i31] = bArr7[i5];
                        i30--;
                        if (i6 == infBlocks.t) {
                            i5 = 0;
                        } else {
                            i5 = i6;
                        }
                        this.b--;
                        i31 = i94;
                    }
                    this.a = 0;
                    break;
                case 5:
                    i5 = i31 - this.h;
                    while (i5 < 0) {
                        i5 += infBlocks.t;
                    }
                    while (this.b != 0) {
                        if (i30 == 0) {
                            i7 = infBlocks.t;
                            if (i31 == i7) {
                                if (i11 > 0) {
                                    i30 = i11 - 1;
                                } else {
                                    i30 = i7;
                                }
                                i31 = 0;
                            }
                            if (i30 == 0) {
                                infBlocks.v = i31;
                                iA = infBlocks.a(iA);
                                i31 = infBlocks.v;
                                i8 = infBlocks.u;
                                if (i31 < i8) {
                                    i9 = (i8 - i31) - 1;
                                } else {
                                    i9 = infBlocks.t - i31;
                                }
                                i10 = infBlocks.t;
                                if (i31 == i10) {
                                    i30 = i9;
                                } else {
                                    i30 = i9;
                                }
                                if (i30 == 0) {
                                    infBlocks.q = i33;
                                    infBlocks.p = i32;
                                    zStream.c = i34;
                                    zStream.d += (long) (i35 - zStream.b);
                                    zStream.b = i35;
                                    infBlocks.v = i31;
                                    return infBlocks.a(iA);
                                }
                            }
                        }
                        byte[] bArr8 = infBlocks.s;
                        int i95 = i31 + 1;
                        i6 = i5 + 1;
                        bArr8[i31] = bArr8[i5];
                        i30--;
                        if (i6 == infBlocks.t) {
                            i5 = 0;
                        } else {
                            i5 = i6;
                        }
                        this.b--;
                        i31 = i95;
                    }
                    this.a = 0;
                    break;
                case 6:
                    if (i30 == 0) {
                        int i96 = infBlocks.t;
                        if (i31 == i96 && (i12 = infBlocks.u) != 0) {
                            i30 = i12 > 0 ? i12 - 1 : i96;
                            i31 = 0;
                        }
                        if (i30 == 0) {
                            infBlocks.v = i31;
                            int iA2 = infBlocks.a(iA);
                            i31 = infBlocks.v;
                            int i97 = infBlocks.u;
                            int i98 = i31 < i97 ? (i97 - i31) - 1 : infBlocks.t - i31;
                            int i99 = infBlocks.t;
                            if (i31 != i99 || i97 == 0) {
                                i30 = i98;
                            } else {
                                if (i97 > 0) {
                                    i99 = i97 - 1;
                                }
                                i31 = 0;
                                i30 = i99;
                            }
                            if (i30 == 0) {
                                infBlocks.q = i33;
                                infBlocks.p = i32;
                                zStream.c = i34;
                                zStream.d += (long) (i35 - zStream.b);
                                zStream.b = i35;
                                infBlocks.v = i31;
                                return infBlocks.a(iA2);
                            }
                        }
                    }
                    infBlocks.s[i31] = (byte) this.f;
                    i30--;
                    this.a = 0;
                    iA = 0;
                    i31++;
                    break;
                case 7:
                    if (i32 > 7) {
                        i32 -= 8;
                        i34++;
                        i35--;
                    }
                    infBlocks.v = i31;
                    int iA3 = infBlocks.a(iA);
                    i31 = infBlocks.v;
                    int i100 = infBlocks.u;
                    if (i31 >= i100) {
                        int i101 = infBlocks.t;
                    }
                    if (i100 != i31) {
                        infBlocks.q = i33;
                        infBlocks.p = i32;
                        zStream.c = i34;
                        zStream.d += (long) (i35 - zStream.b);
                        zStream.b = i35;
                        infBlocks.v = i31;
                        return infBlocks.a(iA3);
                    }
                    this.a = 8;
                    infBlocks.q = i33;
                    infBlocks.p = i32;
                    zStream.c = i34;
                    zStream.d += (long) (i35 - zStream.b);
                    zStream.b = i35;
                    infBlocks.v = i31;
                    return infBlocks.a(1);
                case 8:
                    infBlocks.q = i33;
                    infBlocks.p = i32;
                    zStream.c = i34;
                    zStream.d += (long) (i35 - zStream.b);
                    zStream.b = i35;
                    infBlocks.v = i31;
                    return infBlocks.a(1);
                case XmlPullParser.COMMENT /* 9 */:
                    infBlocks.q = i33;
                    infBlocks.p = i32;
                    zStream.c = i34;
                    zStream.d += (long) (i35 - zStream.b);
                    zStream.b = i35;
                    infBlocks.v = i31;
                    return infBlocks.a(-3);
                default:
                    infBlocks.q = i33;
                    infBlocks.p = i32;
                    zStream.c = i34;
                    zStream.d += (long) (i35 - zStream.b);
                    zStream.b = i35;
                    infBlocks.v = i31;
                    return infBlocks.a(-2);
            }
        }
    }
}
