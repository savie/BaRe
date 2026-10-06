package com.jcraft.jsch.jzlib;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class Deflater extends ZStream {
    public boolean m;

    public Deflater(int i, int i2, int i3, JZlib.WrapperType wrapperType) throws GZIPException {
        this.m = false;
        int iD = -2;
        if (i2 >= 9 && i2 <= 15) {
            if (wrapperType == JZlib.a) {
                i2 *= -1;
            } else if (wrapperType == JZlib.b) {
                i2 += 16;
            } else if (wrapperType != JZlib.c) {
            }
            this.m = false;
            Deflate deflate = new Deflate(this);
            this.j = deflate;
            iD = deflate.d(i, i2, i3);
        }
        if (iD == 0) {
            return;
        }
        a.a(iD, this.i);
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:113:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:115:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:146:0x0297  */
    /* JADX WARN: Code duplicated, block: B:148:0x029f  */
    /* JADX WARN: Code duplicated, block: B:150:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:156:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:171:0x02f4 A[PHI: r21
      0x02f4: PHI (r21v5 int) = (r21v1 int), (r21v0 int) binds: [B:217:0x0408, B:170:0x02f2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:173:0x02f8 A[PHI: r21
      0x02f8: PHI (r21v4 int) = (r21v1 int), (r21v0 int) binds: [B:219:0x040c, B:172:0x02f6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:174:0x02fa A[PHI: r21
      0x02fa: PHI (r21v3 int) = (r21v1 int), (r21v0 int) binds: [B:219:0x040c, B:172:0x02f6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:175:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:177:0x0301  */
    /* JADX WARN: Code duplicated, block: B:185:0x0343  */
    /* JADX WARN: Code duplicated, block: B:194:0x0399  */
    /* JADX WARN: Code duplicated, block: B:195:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:197:0x03cf  */
    /* JADX WARN: Code duplicated, block: B:221:0x0410  */
    /* JADX WARN: Code duplicated, block: B:224:0x0420  */
    /* JADX WARN: Code duplicated, block: B:227:0x042d  */
    /* JADX WARN: Code duplicated, block: B:229:0x0439  */
    /* JADX WARN: Code duplicated, block: B:259:0x04c0  */
    /* JADX WARN: Code duplicated, block: B:261:0x04c4  */
    /* JADX WARN: Code duplicated, block: B:264:0x04cb  */
    /* JADX WARN: Code duplicated, block: B:266:0x04d0  */
    /* JADX WARN: Code duplicated, block: B:267:0x0527  */
    /* JADX WARN: Code duplicated, block: B:270:0x053e  */
    /* JADX WARN: Code duplicated, block: B:284:0x0184 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:289:0x0287 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:292:0x02e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:295:0x03d8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:296:0x03d8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:298:0x02e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:299:0x02e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:302:0x0550 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:303:0x0550 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x012f  */
    public final int c(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean zA;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int iK;
        int i14;
        Checksum checksum;
        int i15;
        Deflate deflate = this.j;
        int i16 = -2;
        if (deflate == null) {
            return -2;
        }
        ZStream zStream = deflate.a;
        if (i <= 4 && i >= 0) {
            byte[] bArr = zStream.e;
            String[] strArr = Deflate.x0;
            if (bArr == null || ((zStream.a == null && zStream.c != 0) || ((i2 = deflate.b) == 666 && i != 4))) {
                zStream.i = strArr[4];
            } else {
                if (zStream.g == 0) {
                    zStream.i = strArr[7];
                } else {
                    int i17 = deflate.p;
                    deflate.p = i;
                    int i18 = 3;
                    int i19 = 7;
                    if (i2 == 42) {
                        if (deflate.k == 2) {
                            GZIPHeader gZIPHeaderI = deflate.i();
                            int i20 = gZIPHeaderI.b != null ? 4 : 0;
                            if (gZIPHeaderI.c != null) {
                                i20 |= 8;
                            }
                            if (gZIPHeaderI.d != null) {
                                i20 |= 16;
                            }
                            int i21 = deflate.W;
                            int i22 = i21 == 1 ? 4 : i21 == 9 ? 2 : 0;
                            deflate.p(-29921);
                            deflate.n((byte) 8);
                            deflate.n((byte) i20);
                            deflate.n((byte) gZIPHeaderI.e);
                            deflate.n((byte) (gZIPHeaderI.e >> 8));
                            deflate.n((byte) (gZIPHeaderI.e >> 16));
                            deflate.n((byte) (gZIPHeaderI.e >> 24));
                            deflate.n((byte) i22);
                            deflate.n((byte) gZIPHeaderI.a);
                            byte[] bArr2 = gZIPHeaderI.b;
                            if (bArr2 != null) {
                                deflate.n((byte) bArr2.length);
                                deflate.n((byte) (gZIPHeaderI.b.length >> 8));
                                byte[] bArr3 = gZIPHeaderI.b;
                                deflate.o(bArr3, 0, bArr3.length);
                            }
                            byte[] bArr4 = gZIPHeaderI.c;
                            if (bArr4 != null) {
                                deflate.o(bArr4, 0, bArr4.length);
                                deflate.n((byte) 0);
                            }
                            byte[] bArr5 = gZIPHeaderI.d;
                            if (bArr5 != null) {
                                deflate.o(bArr5, 0, bArr5.length);
                                deflate.n((byte) 0);
                            }
                            deflate.b = 113;
                            zStream.l.reset();
                        } else {
                            int i23 = (((deflate.r - 8) << 4) + 8) << 8;
                            int i24 = ((deflate.W - 1) & 255) >> 1;
                            if (i24 > 3) {
                                i24 = 3;
                            }
                            int i25 = i23 | (i24 << 6);
                            if (deflate.Q != 0) {
                                i25 |= 32;
                            }
                            deflate.b = 113;
                            deflate.m((31 - (i25 % 31)) + i25);
                            if (deflate.Q != 0) {
                                long value = zStream.l.getValue();
                                deflate.m((int) (value >>> 16));
                                deflate.m((int) (value & 65535));
                            }
                            zStream.l.reset();
                        }
                    }
                    if (deflate.f != 0) {
                        zStream.a();
                        if (zStream.g == 0) {
                            deflate.p = -1;
                        }
                        i16 = 0;
                    } else if (zStream.c == 0 && i <= i17 && i != 4) {
                        zStream.i = strArr[7];
                    }
                    int i26 = deflate.b;
                    if (i26 == 666 && zStream.c != 0) {
                        zStream.i = strArr[7];
                    } else if (zStream.c != 0 || deflate.S != 0 || (i != 0 && i26 != 666)) {
                        int i27 = Deflate.w0[deflate.W].e;
                        int i28 = 5;
                        int i29 = 262;
                        short s = 65535;
                        if (i27 == 0) {
                            int i30 = deflate.d - 5;
                            int i31 = 65535 > i30 ? i30 : 65535;
                            while (true) {
                                if (deflate.S <= 1) {
                                    deflate.f();
                                    int i32 = deflate.S;
                                    if (i32 != 0 || i != 0) {
                                        if (i32 == 0) {
                                            deflate.h(i == 4);
                                            if (zStream.g == 0) {
                                                if (i == 4) {
                                                    i5 = 2;
                                                }
                                                i6 = 2;
                                            } else {
                                                if (i == 4) {
                                                    i5 = 3;
                                                } else {
                                                    i5 = 1;
                                                }
                                                i6 = 2;
                                            }
                                        } else {
                                            i3 = deflate.Q + deflate.S;
                                            deflate.Q = i3;
                                            deflate.S = 0;
                                            i4 = deflate.M + i31;
                                            if (i3 != 0 || i3 >= i4) {
                                                deflate.S = i3 - i4;
                                                deflate.Q = i4;
                                                deflate.h(false);
                                                if (zStream.g != 0) {
                                                    if (deflate.Q - deflate.M >= deflate.q - 262) {
                                                        deflate.h(false);
                                                        if (zStream.g == 0) {
                                                        }
                                                    }
                                                    i19 = i19;
                                                }
                                            } else {
                                                if (deflate.Q - deflate.M >= deflate.q - 262) {
                                                    deflate.h(false);
                                                    if (zStream.g == 0) {
                                                    }
                                                }
                                                i19 = i19;
                                            }
                                        }
                                    }
                                } else {
                                    i3 = deflate.Q + deflate.S;
                                    deflate.Q = i3;
                                    deflate.S = 0;
                                    i4 = deflate.M + i31;
                                    if (i3 != 0) {
                                        deflate.S = i3 - i4;
                                        deflate.Q = i4;
                                        deflate.h(false);
                                        if (zStream.g != 0) {
                                            if (deflate.Q - deflate.M >= deflate.q - 262) {
                                                deflate.h(false);
                                                if (zStream.g == 0) {
                                                }
                                            }
                                            i19 = i19;
                                        }
                                    } else {
                                        deflate.S = i3 - i4;
                                        deflate.Q = i4;
                                        deflate.h(false);
                                        if (zStream.g != 0) {
                                            if (deflate.Q - deflate.M >= deflate.q - 262) {
                                                deflate.h(false);
                                                if (zStream.g == 0) {
                                                }
                                            }
                                            i19 = i19;
                                        }
                                    }
                                }
                                i5 = 0;
                                i6 = 2;
                            }
                        } else if (i27 != 1) {
                            i6 = 2;
                            if (i27 != 2) {
                                i5 = -1;
                            } else {
                                int i33 = 0;
                                while (true) {
                                    if (deflate.S < 262) {
                                        deflate.f();
                                        int i34 = deflate.S;
                                        if (i34 >= 262 || i != 0) {
                                            if (i34 == 0) {
                                                if (deflate.P != 0) {
                                                    deflate.a(0, deflate.x[deflate.Q - 1] & 255);
                                                    deflate.P = 0;
                                                }
                                                deflate.h(i == 4);
                                                if (zStream.g != 0) {
                                                    if (i == 4) {
                                                        break;
                                                    }
                                                    i18 = 1;
                                                    break;
                                                }
                                                if (i == 4) {
                                                    i18 = 2;
                                                    break;
                                                }
                                            } else {
                                                if (deflate.S >= i18) {
                                                    int i35 = deflate.I << deflate.L;
                                                    byte[] bArr6 = deflate.x;
                                                    int i36 = deflate.Q;
                                                    int i37 = (i35 ^ (bArr6[i36 + 2] & 255)) & deflate.K;
                                                    deflate.I = i37;
                                                    short[] sArr = deflate.H;
                                                    short s2 = sArr[i37];
                                                    deflate.G[deflate.t & i36] = s2;
                                                    sArr[i37] = (short) i36;
                                                    i33 = s2 & s;
                                                }
                                                int i38 = deflate.N;
                                                deflate.T = i38;
                                                deflate.O = deflate.R;
                                                deflate.N = 2;
                                                if (i33 != 0 && i38 < deflate.V && ((deflate.Q - i33) & s) <= deflate.q - 262) {
                                                    iK = deflate.k(i33);
                                                    deflate.N = iK;
                                                    if (iK <= i28 && iK == i18 && deflate.Q - deflate.R > 4096) {
                                                        deflate.N = 2;
                                                    }
                                                }
                                                i12 = deflate.T;
                                                if (i12 >= i18 || deflate.N > i12) {
                                                    i28 = i28;
                                                    s = s;
                                                    if (deflate.P != 0) {
                                                        if (deflate.a(0, deflate.x[deflate.Q - 1] & 255)) {
                                                            deflate.h(false);
                                                        }
                                                        deflate.Q++;
                                                        deflate.S--;
                                                        if (zStream.g == 0) {
                                                        }
                                                    } else {
                                                        deflate.P = 1;
                                                        deflate.Q++;
                                                        deflate.S--;
                                                    }
                                                    i28 = i28;
                                                    s = s;
                                                    i18 = 3;
                                                } else {
                                                    int i39 = deflate.Q;
                                                    int i40 = (deflate.S + i39) - i18;
                                                    boolean zA2 = deflate.a((i39 - 1) - deflate.O, i12 - 3);
                                                    int i41 = deflate.S;
                                                    int i42 = deflate.T;
                                                    deflate.S = i41 - (i42 - 1);
                                                    deflate.T = i42 - 2;
                                                    while (true) {
                                                        i13 = deflate.Q;
                                                        int i43 = i13 + 1;
                                                        deflate.Q = i43;
                                                        if (i43 <= i40) {
                                                            int i44 = ((deflate.I << deflate.L) ^ (deflate.x[i13 + 3] & 255)) & deflate.K;
                                                            deflate.I = i44;
                                                            short[] sArr2 = deflate.H;
                                                            short s3 = sArr2[i44];
                                                            deflate.G[deflate.t & i43] = s3;
                                                            sArr2[i44] = (short) i43;
                                                            i33 = s3 & s;
                                                        }
                                                        int i45 = deflate.T - 1;
                                                        deflate.T = i45;
                                                        if (i45 == 0) {
                                                            break;
                                                        }
                                                        i28 = i28;
                                                        s = s;
                                                    }
                                                    deflate.P = 0;
                                                    deflate.N = 2;
                                                    deflate.Q = i13 + 2;
                                                    if (zA2) {
                                                        deflate.h(false);
                                                        if (zStream.g == 0) {
                                                        }
                                                    } else {
                                                        continue;
                                                    }
                                                    i28 = i28;
                                                    s = s;
                                                    i18 = 3;
                                                }
                                            }
                                        }
                                        i18 = 0;
                                        break;
                                    }
                                    if (deflate.S >= i18) {
                                        int i310 = deflate.I << deflate.L;
                                        byte[] bArr7 = deflate.x;
                                        int i311 = deflate.Q;
                                        int i312 = (i310 ^ (bArr7[i311 + 2] & 255)) & deflate.K;
                                        deflate.I = i312;
                                        short[] sArr3 = deflate.H;
                                        short s4 = sArr3[i312];
                                        deflate.G[deflate.t & i311] = s4;
                                        sArr3[i312] = (short) i311;
                                        i33 = s4 & s;
                                    }
                                    int i313 = deflate.N;
                                    deflate.T = i313;
                                    deflate.O = deflate.R;
                                    deflate.N = 2;
                                    if (i33 != 0) {
                                        iK = deflate.k(i33);
                                        deflate.N = iK;
                                        if (iK <= i28) {
                                            deflate.N = 2;
                                        }
                                    }
                                    i12 = deflate.T;
                                    if (i12 >= i18) {
                                        i28 = i28;
                                        s = s;
                                        if (deflate.P != 0) {
                                            if (deflate.a(0, deflate.x[deflate.Q - 1] & 255)) {
                                                deflate.h(false);
                                            }
                                            deflate.Q++;
                                            deflate.S--;
                                            if (zStream.g == 0) {
                                                i18 = 0;
                                                break;
                                            }
                                        } else {
                                            deflate.P = 1;
                                            deflate.Q++;
                                            deflate.S--;
                                        }
                                        i28 = i28;
                                        s = s;
                                        i18 = 3;
                                    } else {
                                        i28 = i28;
                                        s = s;
                                        if (deflate.P != 0) {
                                            if (deflate.a(0, deflate.x[deflate.Q - 1] & 255)) {
                                                deflate.h(false);
                                            }
                                            deflate.Q++;
                                            deflate.S--;
                                            if (zStream.g == 0) {
                                                i18 = 0;
                                                break;
                                            }
                                        } else {
                                            deflate.P = 1;
                                            deflate.Q++;
                                            deflate.S--;
                                        }
                                        i28 = i28;
                                        s = s;
                                        i18 = 3;
                                    }
                                }
                                i5 = i18;
                                i6 = 2;
                            }
                        } else {
                            int i46 = 0;
                            while (true) {
                                if (deflate.S < i29) {
                                    deflate.f();
                                    int i47 = deflate.S;
                                    if (i47 >= i29 || i != 0) {
                                        if (i47 == 0) {
                                            deflate.h(i == 4);
                                            if (zStream.g == 0) {
                                                if (i == 4) {
                                                    i5 = 2;
                                                }
                                                i6 = 2;
                                            } else {
                                                if (i == 4) {
                                                    i5 = 3;
                                                } else {
                                                    i5 = 1;
                                                }
                                                i6 = 2;
                                            }
                                        } else {
                                            if (deflate.S >= 3) {
                                                int i48 = deflate.I << deflate.L;
                                                byte[] bArr8 = deflate.x;
                                                int i49 = deflate.Q;
                                                int i50 = (i48 ^ (bArr8[i49 + 2] & 255)) & deflate.K;
                                                deflate.I = i50;
                                                short[] sArr4 = deflate.H;
                                                short s5 = sArr4[i50];
                                                deflate.G[deflate.t & i49] = s5;
                                                sArr4[i50] = (short) i49;
                                                i46 = s5 & 65535;
                                            }
                                            if (i46 != 0 && ((deflate.Q - i46) & 65535) <= deflate.q - i29) {
                                                deflate.N = deflate.k(i46);
                                            }
                                            i7 = deflate.N;
                                            if (i7 >= 3) {
                                                zA = deflate.a(deflate.Q - deflate.R, i7 - 3);
                                                int i51 = deflate.S;
                                                i8 = deflate.N;
                                                int i52 = i51 - i8;
                                                deflate.S = i52;
                                                if (i8 <= deflate.V || i52 < 3) {
                                                    int i53 = deflate.Q + i8;
                                                    deflate.Q = i53;
                                                    deflate.N = 0;
                                                    byte[] bArr9 = deflate.x;
                                                    int i54 = bArr9[i53] & 255;
                                                    deflate.I = i54;
                                                    deflate.I = ((bArr9[i53 + 1] & 255) ^ (i54 << deflate.L)) & deflate.K;
                                                } else {
                                                    deflate.N = i8 - 1;
                                                    do {
                                                        i9 = deflate.Q;
                                                        int i55 = i9 + 1;
                                                        deflate.Q = i55;
                                                        int i56 = ((deflate.I << deflate.L) ^ (deflate.x[i9 + 3] & 255)) & deflate.K;
                                                        deflate.I = i56;
                                                        short[] sArr5 = deflate.H;
                                                        short s6 = sArr5[i56];
                                                        i10 = s6 & 65535;
                                                        deflate.G[deflate.t & i55] = s6;
                                                        sArr5[i56] = (short) i55;
                                                        i11 = deflate.N - 1;
                                                        deflate.N = i11;
                                                    } while (i11 != 0);
                                                    deflate.Q = i9 + 2;
                                                    i46 = i10;
                                                }
                                            } else {
                                                zA = deflate.a(0, deflate.x[deflate.Q] & 255);
                                                deflate.S--;
                                                deflate.Q++;
                                            }
                                            if (zA) {
                                                deflate.h(false);
                                                if (zStream.g == 0) {
                                                }
                                            }
                                            i29 = 262;
                                        }
                                    }
                                } else {
                                    if (deflate.S >= 3) {
                                        int i410 = deflate.I << deflate.L;
                                        byte[] bArr10 = deflate.x;
                                        int i411 = deflate.Q;
                                        int i57 = (i410 ^ (bArr10[i411 + 2] & 255)) & deflate.K;
                                        deflate.I = i57;
                                        short[] sArr6 = deflate.H;
                                        short s7 = sArr6[i57];
                                        deflate.G[deflate.t & i411] = s7;
                                        sArr6[i57] = (short) i411;
                                        i46 = s7 & 65535;
                                    }
                                    if (i46 != 0) {
                                        deflate.N = deflate.k(i46);
                                    }
                                    i7 = deflate.N;
                                    if (i7 >= 3) {
                                        zA = deflate.a(deflate.Q - deflate.R, i7 - 3);
                                        int i58 = deflate.S;
                                        i8 = deflate.N;
                                        int i59 = i58 - i8;
                                        deflate.S = i59;
                                        if (i8 <= deflate.V) {
                                            int i510 = deflate.Q + i8;
                                            deflate.Q = i510;
                                            deflate.N = 0;
                                            byte[] bArr11 = deflate.x;
                                            int i511 = bArr11[i510] & 255;
                                            deflate.I = i511;
                                            deflate.I = ((bArr11[i510 + 1] & 255) ^ (i511 << deflate.L)) & deflate.K;
                                        } else {
                                            int i512 = deflate.Q + i8;
                                            deflate.Q = i512;
                                            deflate.N = 0;
                                            byte[] bArr12 = deflate.x;
                                            int i513 = bArr12[i512] & 255;
                                            deflate.I = i513;
                                            deflate.I = ((bArr12[i512 + 1] & 255) ^ (i513 << deflate.L)) & deflate.K;
                                        }
                                    } else {
                                        zA = deflate.a(0, deflate.x[deflate.Q] & 255);
                                        deflate.S--;
                                        deflate.Q++;
                                    }
                                    if (zA) {
                                        deflate.h(false);
                                        if (zStream.g == 0) {
                                        }
                                    }
                                    i29 = 262;
                                }
                                i5 = 0;
                                i6 = 2;
                            }
                        }
                        if (i5 == i6 || i5 == 3) {
                            deflate.b = 666;
                        }
                        if (i5 == 0 || i5 == i6) {
                            if (zStream.g == 0) {
                                deflate.p = -1;
                            }
                        } else if (i5 == 1) {
                            if (i == 1) {
                                deflate.r(i6, 3);
                                short[] sArr7 = StaticTree.f;
                                deflate.s(256, sArr7);
                                deflate.b();
                                if ((deflate.s0 + 11) - deflate.u0 < 9) {
                                    deflate.r(i6, 3);
                                    deflate.s(256, sArr7);
                                    deflate.b();
                                }
                                deflate.s0 = i19;
                            } else {
                                deflate.r(0, 3);
                                int i60 = deflate.u0;
                                if (i60 > 8) {
                                    deflate.p(deflate.t0);
                                } else if (i60 > 0) {
                                    deflate.n((byte) deflate.t0);
                                }
                                deflate.t0 = (short) 0;
                                deflate.u0 = 0;
                                deflate.s0 = 8;
                                deflate.p(0);
                                deflate.p(-1);
                                deflate.o(deflate.x, 0, 0);
                                if (i == 3) {
                                    for (int i61 = 0; i61 < deflate.J; i61++) {
                                        deflate.H[i61] = 0;
                                    }
                                }
                            }
                            zStream.a();
                            if (zStream.g == 0) {
                                deflate.p = -1;
                            } else if (i == 4) {
                                i14 = deflate.k;
                                if (i14 > 0) {
                                    checksum = zStream.l;
                                    if (i14 == 2) {
                                        long value2 = checksum.getValue();
                                        deflate.n((byte) (value2 & 255));
                                        deflate.n((byte) ((value2 >> 8) & 255));
                                        deflate.n((byte) ((value2 >> 16) & 255));
                                        deflate.n((byte) ((value2 >> 24) & 255));
                                        deflate.n((byte) (zStream.d & 255));
                                        deflate.n((byte) ((zStream.d >> 8) & 255));
                                        deflate.n((byte) ((zStream.d >> 16) & 255));
                                        deflate.n((byte) ((zStream.d >> 24) & 255));
                                        deflate.i().getClass();
                                    } else {
                                        long value3 = checksum.getValue();
                                        deflate.m((int) (value3 >>> 16));
                                        deflate.m((int) (value3 & 65535));
                                    }
                                    zStream.a();
                                    i15 = deflate.k;
                                    if (i15 > 0) {
                                        deflate.k = -i15;
                                    }
                                    if (deflate.f != 0) {
                                    }
                                }
                                i16 = 1;
                            }
                        } else if (i == 4) {
                            i14 = deflate.k;
                            if (i14 > 0) {
                                checksum = zStream.l;
                                if (i14 == 2) {
                                    long value4 = checksum.getValue();
                                    deflate.n((byte) (value4 & 255));
                                    deflate.n((byte) ((value4 >> 8) & 255));
                                    deflate.n((byte) ((value4 >> 16) & 255));
                                    deflate.n((byte) ((value4 >> 24) & 255));
                                    deflate.n((byte) (zStream.d & 255));
                                    deflate.n((byte) ((zStream.d >> 8) & 255));
                                    deflate.n((byte) ((zStream.d >> 16) & 255));
                                    deflate.n((byte) ((zStream.d >> 24) & 255));
                                    deflate.i().getClass();
                                } else {
                                    long value5 = checksum.getValue();
                                    deflate.m((int) (value5 >>> 16));
                                    deflate.m((int) (value5 & 65535));
                                }
                                zStream.a();
                                i15 = deflate.k;
                                if (i15 > 0) {
                                    deflate.k = -i15;
                                }
                                if (deflate.f != 0) {
                                }
                            }
                            i16 = 1;
                        }
                        i16 = 0;
                    } else if (i == 4) {
                        i14 = deflate.k;
                        if (i14 > 0) {
                            checksum = zStream.l;
                            if (i14 == 2) {
                                long value6 = checksum.getValue();
                                deflate.n((byte) (value6 & 255));
                                deflate.n((byte) ((value6 >> 8) & 255));
                                deflate.n((byte) ((value6 >> 16) & 255));
                                deflate.n((byte) ((value6 >> 24) & 255));
                                deflate.n((byte) (zStream.d & 255));
                                deflate.n((byte) ((zStream.d >> 8) & 255));
                                deflate.n((byte) ((zStream.d >> 16) & 255));
                                deflate.n((byte) ((zStream.d >> 24) & 255));
                                deflate.i().getClass();
                            } else {
                                long value7 = checksum.getValue();
                                deflate.m((int) (value7 >>> 16));
                                deflate.m((int) (value7 & 65535));
                            }
                            zStream.a();
                            i15 = deflate.k;
                            if (i15 > 0) {
                                deflate.k = -i15;
                            }
                            if (deflate.f != 0) {
                                i16 = 0;
                            }
                        }
                        i16 = 1;
                    } else {
                        i16 = 0;
                    }
                }
                i16 = -5;
            }
        }
        if (i16 == 1) {
            this.m = true;
        }
        return i16;
    }

    public final void d() {
        this.m = true;
        Deflate deflate = this.j;
        if (deflate == null) {
            return;
        }
        int i = deflate.b;
        if (i == 42 || i == 113 || i == 666) {
            deflate.c = null;
            deflate.l0 = null;
            deflate.H = null;
            deflate.G = null;
            deflate.x = null;
        }
        this.j = null;
        this.a = null;
        this.e = null;
        this.i = null;
    }

    public Deflater(int i, boolean z) throws GZIPException {
        this(i, 15, z);
    }

    public Deflater(int i) throws GZIPException {
        this(i, 15, false);
    }

    public Deflater(int i, int i2) throws GZIPException {
        this(i, i2, false);
    }

    public Deflater(int i, int i2, boolean z) throws GZIPException {
        this.m = false;
        Deflate deflate = new Deflate(this);
        this.j = deflate;
        int iD = deflate.d(i, z ? -i2 : i2, 8);
        if (iD == 0) {
            return;
        }
        a.a(iD, this.i);
        throw null;
    }

    public Deflater() {
        this.m = false;
    }

    public Deflater(int i, int i2, int i3) throws GZIPException {
        this.m = false;
        Deflate deflate = new Deflate(this);
        this.j = deflate;
        int iD = deflate.d(i, i2, i3);
        if (iD == 0) {
            return;
        }
        a.a(iD, this.i);
        throw null;
    }
}
