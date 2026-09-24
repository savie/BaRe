package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class rq4 extends pq4 {
    public final gu5[] B;
    public int C;
    public int D;
    public nn1 E;
    public final int[] F;
    public final dm7 G;

    public rq4(bf6 bf6Var, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, v40 v40Var) {
        aq4 g24Var;
        int iMax = Math.max(i5, 4096);
        if (i7 == 4) {
            g24Var = new g24(i4, iMax, 4096, i6, i8, v40Var);
        } else {
            if (i7 != 20) {
                c6.b();
                throw null;
            }
            g24Var = new qj0(i4, iMax, 4096, i6, i8, v40Var);
        }
        super(bf6Var, g24Var, i, i2, i3, i4, i6);
        this.B = new gu5[4096];
        this.C = 0;
        this.D = 0;
        this.F = new int[4];
        this.G = new dm7();
        for (int i9 = 0; i9 < 4096; i9++) {
            this.B[i9] = new gu5();
        }
    }

    @Override // defpackage.pq4, defpackage.gq4
    public final void a() {
        this.C = 0;
        this.D = 0;
        super.a();
    }

    /* JADX WARN: Code duplicated, block: B:174:0x045a  */
    /* JADX WARN: Code duplicated, block: B:175:0x0460  */
    /* JADX WARN: Code duplicated, block: B:177:0x0463  */
    /* JADX WARN: Code duplicated, block: B:185:0x049c  */
    /* JADX WARN: Code duplicated, block: B:186:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:189:0x04aa A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:194:0x04cd  */
    /* JADX WARN: Code duplicated, block: B:197:0x04f1 A[LOOP:18: B:195:0x04ed->B:197:0x04f1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:200:0x0502  */
    /* JADX WARN: Code duplicated, block: B:203:0x0514  */
    /* JADX WARN: Code duplicated, block: B:206:0x051d  */
    /* JADX WARN: Code duplicated, block: B:208:0x0532  */
    /* JADX WARN: Code duplicated, block: B:209:0x0538 A[LOOP:20: B:209:0x0538->B:211:0x0540, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:211:0x0540 A[LOOP:20: B:209:0x0538->B:211:0x0540, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:215:0x0557  */
    /* JADX WARN: Code duplicated, block: B:217:0x056e  */
    /* JADX WARN: Code duplicated, block: B:221:0x0582  */
    /* JADX WARN: Code duplicated, block: B:225:0x058f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:226:0x0591  */
    /* JADX WARN: Code duplicated, block: B:229:0x05ab  */
    /* JADX WARN: Code duplicated, block: B:232:0x05f5 A[LOOP:22: B:230:0x05f1->B:232:0x05f5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:235:0x0606  */
    /* JADX WARN: Code duplicated, block: B:239:0x062b  */
    /* JADX WARN: Code duplicated, block: B:241:0x0635  */
    /* JADX WARN: Code duplicated, block: B:244:0x0644 A[LOOP:23: B:242:0x0638->B:244:0x0644, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:248:0x065f  */
    /* JADX WARN: Code duplicated, block: B:250:0x0668 A[LOOP:24: B:250:0x0668->B:252:0x067b, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:252:0x067b A[LOOP:24: B:250:0x0668->B:252:0x067b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:256:0x06a2 A[LOOP:25: B:254:0x0698->B:256:0x06a2, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:259:0x06bb  */
    /* JADX WARN: Code duplicated, block: B:262:0x06ca  */
    /* JADX WARN: Code duplicated, block: B:263:0x06d2  */
    /* JADX WARN: Code duplicated, block: B:265:0x06db A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:266:0x06dd  */
    /* JADX WARN: Code duplicated, block: B:269:0x06ee  */
    /* JADX WARN: Code duplicated, block: B:272:0x072f A[LOOP:27: B:270:0x072b->B:272:0x072f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:275:0x0742  */
    /* JADX WARN: Code duplicated, block: B:278:0x075f  */
    /* JADX WARN: Code duplicated, block: B:283:0x0771  */
    /* JADX WARN: Code duplicated, block: B:284:0x0778  */
    /* JADX WARN: Code duplicated, block: B:327:0x04fc A[EDGE_INSN: B:327:0x04fc->B:198:0x04fc BREAK  A[LOOP:18: B:195:0x04ed->B:197:0x04f1], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:331:0x061a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:332:0x061a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:333:0x061a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:334:0x054b A[EDGE_INSN: B:334:0x054b->B:212:0x054b BREAK  A[LOOP:20: B:209:0x0538->B:211:0x0540], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:337:0x0571 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:338:0x0600 A[EDGE_INSN: B:338:0x0600->B:233:0x0600 BREAK  A[LOOP:22: B:230:0x05f1->B:232:0x05f5], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:339:0x0649 A[EDGE_INSN: B:339:0x0649->B:245:0x0649 BREAK  A[LOOP:23: B:242:0x0638->B:244:0x0644], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:340:0x0688 A[EDGE_INSN: B:340:0x0688->B:253:0x0688 BREAK  A[LOOP:24: B:250:0x0668->B:252:0x067b], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:343:0x076b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:344:0x073a A[EDGE_INSN: B:344:0x073a->B:273:0x073a BREAK  A[LOOP:27: B:270:0x072b->B:272:0x072f], SYNTHETIC] */
    @Override // defpackage.pq4
    public final int k() {
        int[] iArr;
        int[] iArr2;
        int i;
        short[] sArr;
        short[][] sArr2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int iT;
        int iT2;
        int iB;
        int iB2;
        int iB3;
        int i7;
        gu5 gu5Var;
        int i8;
        boolean z;
        boolean z2;
        int i9;
        dm7 dm7Var;
        int i10;
        short[][] sArr3;
        int iMin;
        int i11;
        int i12;
        nn1 nn1Var;
        int i13;
        nn1 nn1Var2;
        int i14;
        int i15;
        nn1 nn1Var3;
        int iT3;
        int i16;
        int i17;
        int i18;
        int i19;
        gu5 gu5Var2;
        int i20;
        int iG;
        int iG2;
        int i21;
        int i22;
        gu5 gu5Var3;
        nn1 nn1Var4;
        int[] iArr3;
        int i23;
        int iG3;
        int i24;
        int i25;
        int iH;
        int i26;
        int i27;
        short[][] sArr4;
        int i28;
        int i29;
        int iG4;
        int iG5;
        int i30;
        int i31;
        gu5 gu5Var4;
        int i32;
        int i33;
        gu5 gu5Var5;
        int iG6;
        int iG7;
        int i34;
        int i35;
        gu5 gu5Var6;
        int i36;
        gu5 gu5Var7;
        int iT4;
        int i37;
        gu5 gu5Var8;
        int[][] iArr4;
        int i38;
        int i39;
        int[][] iArr5;
        int[][] iArr6;
        int i40;
        int i41;
        int i42 = this.C;
        int i43 = this.D;
        gu5[] gu5VarArr = this.B;
        if (i42 < i43) {
            int i44 = gu5VarArr[i42].d;
            int i45 = i44 - i42;
            this.C = i44;
            this.y = gu5VarArr[i44].e;
            return i45;
        }
        this.C = 0;
        this.D = 0;
        this.y = -1;
        if (this.z == -1) {
            this.E = j();
        }
        aq4 aq4Var = this.n;
        int i46 = aq4Var.j;
        byte[] bArr = aq4Var.e;
        int iMin2 = Math.min(i46 - aq4Var.g, 273);
        if (iMin2 >= 2) {
            int i47 = 0;
            int i48 = 0;
            while (true) {
                iArr = this.b;
                iArr2 = this.F;
                if (i47 >= 4) {
                    break;
                }
                int iG8 = rs9.g(bArr, aq4Var.g, iArr[i47] + 1, 0, iMin2);
                iArr2[i47] = iG8;
                if (iG8 < 2) {
                    iArr2[i47] = 0;
                } else if (iG8 > iArr2[i48]) {
                    i48 = i47;
                }
                i47++;
            }
            int i49 = iArr2[i48];
            int i50 = this.r;
            if (i49 >= i50) {
                this.y = i48;
                l(i49 - 1);
                return iArr2[i48];
            }
            nn1 nn1Var5 = this.E;
            int i51 = nn1Var5.a;
            if (i51 > 0) {
                int i52 = i51 - 1;
                i = ((int[]) nn1Var5.b)[i52];
                int i53 = ((int[]) nn1Var5.c)[i52];
                if (i >= i50) {
                    this.y = i53 + 4;
                    l(i - 1);
                    return i;
                }
            } else {
                i = 0;
            }
            int iB4 = aq4Var.b(0);
            int iB5 = aq4Var.b(iArr[0] + 1);
            if (i >= 2 || iB4 == iB5 || iArr2[i48] >= 2) {
                int i54 = aq4Var.g;
                int i55 = this.a;
                int i56 = i54 & i55;
                int iB6 = aq4Var.b(1);
                oq4 oq4Var = this.o;
                dm7 dm7Var2 = this.c;
                gu5VarArr[1].a(oq4Var.b(iB4, iB5, iB6, i54, dm7Var2), 0, -1);
                int i57 = dm7Var2.a;
                short[][] sArr5 = this.d;
                int iT5 = bf6.T(sArr5[i57][i56], 1);
                int i58 = dm7Var2.a;
                short[] sArr6 = this.e;
                int iT6 = bf6.T(sArr6[i58], 1) + iT5;
                short[][] sArr7 = this.i;
                short[] sArr8 = this.f;
                if (iB5 == iB4) {
                    sArr = sArr8;
                    int iT7 = bf6.T(sArr7[dm7Var2.a][i56], 0) + bf6.T(sArr8[dm7Var2.a], 0) + iT6;
                    i2 = 1;
                    gu5 gu5Var9 = gu5VarArr[1];
                    sArr2 = sArr5;
                    if (iT7 < gu5Var9.c) {
                        gu5Var9.a(iT7, 0, 0);
                    }
                } else {
                    sArr = sArr8;
                    sArr2 = sArr5;
                    i2 = 1;
                }
                int iMax = Math.max(i, iArr2[i48]);
                this.D = iMax;
                if (iMax < 2) {
                    this.y = gu5VarArr[i2].e;
                    return i2;
                }
                if (this.s <= 0) {
                    this.s = 128;
                    int i59 = 0;
                    while (true) {
                        iArr5 = this.w;
                        iArr6 = this.v;
                        if (i59 >= 4) {
                            break;
                        }
                        int i60 = 0;
                        while (true) {
                            i41 = this.u;
                            if (i60 >= i41) {
                                break;
                            }
                            int i61 = i59;
                            iArr6[i59][i60] = bf6.U(i60, this.j[i61]);
                            i60++;
                            i59 = i61;
                        }
                        int i62 = i59;
                        int i63 = 14;
                        while (i63 < i41) {
                            int[] iArr7 = iArr6[i62];
                            int i64 = iArr7[i63];
                            int[] iArr8 = bf6.l;
                            int i65 = i63;
                            iArr7[i65] = i64 + (((i63 >>> 1) - 5) << 4);
                            i63 = i65 + 1;
                        }
                        for (int i66 = 0; i66 < 4; i66++) {
                            iArr5[i62][i66] = iArr6[i62][i66];
                        }
                        i59 = i62 + 1;
                    }
                    int i67 = 4;
                    int i68 = 4;
                    while (i67 < 14) {
                        int i69 = ((i67 & 1) | 2) << ((i67 >>> 1) - 1);
                        int i70 = i67 - 4;
                        short[][] sArr9 = this.k;
                        int i71 = i67;
                        int length = sArr9[i70].length;
                        int[][] iArr9 = iArr5;
                        int i72 = 0;
                        while (i72 < length) {
                            int i73 = length;
                            short[] sArr10 = sArr9[i70];
                            int i74 = i72;
                            int length2 = (i68 - i69) | sArr10.length;
                            int iT8 = 0;
                            int i75 = 1;
                            while (true) {
                                short[] sArr11 = sArr10;
                                int i76 = length2 & 1;
                                length2 >>>= 1;
                                i40 = i68;
                                iT8 = bf6.T(sArr11[i75], i76) + iT8;
                                i75 = (i75 << 1) | i76;
                                if (length2 == 1) {
                                    break;
                                }
                                sArr10 = sArr11;
                                i68 = i40;
                            }
                            for (int i77 = 0; i77 < 4; i77++) {
                                iArr9[i77][i40] = iArr6[i77][i71] + iT8;
                            }
                            i68 = i40 + 1;
                            i72 = i74 + 1;
                            length = i73;
                        }
                        i67 = i71 + 1;
                        iArr5 = iArr9;
                    }
                }
                if (this.t <= 0) {
                    this.t = 16;
                    int i78 = 0;
                    for (int i79 = 16; i78 < i79; i79 = 16) {
                        short[] sArr12 = this.l;
                        int length3 = sArr12.length | i78;
                        int iT9 = 0;
                        int i80 = 1;
                        while (true) {
                            int i81 = length3 & 1;
                            i39 = i78;
                            length3 >>>= 1;
                            iT9 += bf6.T(sArr12[i80], i81);
                            i80 = (i80 << 1) | i81;
                            if (length3 == 1) {
                                break;
                            }
                            i78 = i39;
                        }
                        this.x[i39] = iT9;
                        i78 = i39 + 1;
                    }
                }
                this.p.g();
                mq4 mq4Var = this.q;
                mq4Var.g();
                int[][] iArr10 = mq4Var.f;
                gu5 gu5Var10 = gu5VarArr[0];
                gu5Var10.a.a = dm7Var2.a;
                System.arraycopy(iArr, 0, gu5Var10.b, 0, 4);
                int i82 = this.D;
                while (true) {
                    i3 = 2;
                    if (i82 < 2) {
                        break;
                    }
                    gu5VarArr[i82].c = 1073741824;
                    i82--;
                }
                int i83 = 0;
                for (int i84 = 4; i83 < i84; i84 = 4) {
                    int i85 = iArr2[i83];
                    if (i85 < i3) {
                        iArr4 = iArr10;
                        i38 = i3;
                    } else {
                        int iH2 = h(iT6, i83, dm7Var2, i56);
                        while (true) {
                            int i86 = iArr10[i56][i85 - 2] + iH2;
                            gu5 gu5Var11 = gu5VarArr[i85];
                            iArr4 = iArr10;
                            if (i86 < gu5Var11.c) {
                                gu5Var11.a(i86, 0, i83);
                            }
                            i85--;
                            i38 = 2;
                            if (i85 < 2) {
                                break;
                            }
                            iArr10 = iArr4;
                        }
                    }
                    i83++;
                    i3 = i38;
                    iArr10 = iArr4;
                }
                int[][] iArr11 = iArr10;
                int iMax2 = Math.max(iArr2[0] + 1, i3);
                if (iMax2 <= i) {
                    int iT10 = bf6.T(sArr6[dm7Var2.a], 0) + iT5;
                    int i87 = 0;
                    while (iMax2 > ((int[]) this.E.b)[i87]) {
                        i87++;
                    }
                    while (true) {
                        int i88 = ((int[]) this.E.c)[i87];
                        int i89 = i(iT10, i88, iMax2, i56);
                        gu5 gu5Var12 = gu5VarArr[iMax2];
                        if (i89 < gu5Var12.c) {
                            gu5Var12.a(i89, 0, i88 + 4);
                        }
                        nn1 nn1Var6 = this.E;
                        if (iMax2 == ((int[]) nn1Var6.b)[i87] && (i87 = i87 + 1) == nn1Var6.a) {
                            break;
                        }
                        iMax2++;
                    }
                }
                int iMin3 = Math.min(aq4Var.j - aq4Var.g, 4095);
                int i90 = i54;
                while (true) {
                    int i91 = this.C + 1;
                    this.C = i91;
                    if (i91 >= this.D) {
                        break;
                    }
                    nn1 nn1VarJ = j();
                    this.E = nn1VarJ;
                    int i92 = nn1VarJ.a;
                    if (i92 > 0 && ((int[]) nn1VarJ.b)[i92 - 1] >= i50) {
                        break;
                    }
                    int i93 = iMin3 - 1;
                    int i94 = i90 + 1;
                    int i95 = i94 & i55;
                    gu5 gu5Var13 = gu5VarArr[this.C];
                    int i96 = gu5Var13.d;
                    dm7 dm7Var3 = gu5Var13.a;
                    if (gu5Var13.f) {
                        i96--;
                        if (gu5Var13.g) {
                            dm7Var3.a = gu5VarArr[gu5Var13.h].a.a;
                            if (gu5Var13.i < 4) {
                                dm7Var3.b();
                            } else {
                                dm7Var3.c();
                            }
                        } else {
                            dm7Var3.a = gu5VarArr[i96].a.a;
                        }
                        gu5VarArr[this.C].a.a();
                    } else {
                        dm7Var3.a = gu5VarArr[i96].a.a;
                    }
                    int i97 = this.C;
                    if (i96 == i97 - 1) {
                        gu5 gu5Var14 = gu5VarArr[i97];
                        int i98 = gu5Var14.e;
                        dm7 dm7Var4 = gu5Var14.a;
                        if (i98 == 0) {
                            dm7Var4.a = dm7Var4.a < 7 ? 9 : 11;
                        } else {
                            dm7Var4.a();
                        }
                        System.arraycopy(gu5VarArr[i96].b, 0, gu5VarArr[this.C].b, 0, 4);
                    } else {
                        gu5 gu5Var15 = gu5VarArr[i97];
                        boolean z3 = gu5Var15.f;
                        dm7 dm7Var5 = gu5Var15.a;
                        if (z3 && gu5Var15.g) {
                            i96 = gu5Var15.h;
                            i4 = gu5Var15.i;
                            dm7Var5.b();
                            i5 = 4;
                        } else {
                            i4 = gu5Var15.e;
                            i5 = 4;
                            if (i4 < 4) {
                                dm7Var5.b();
                            } else {
                                dm7Var5.c();
                            }
                        }
                        int i99 = this.C;
                        if (i4 < i5) {
                            gu5VarArr[i99].b[0] = gu5VarArr[i96].b[i4];
                            int i100 = 1;
                            while (i100 <= i4) {
                                gu5VarArr[this.C].b[i100] = gu5VarArr[i96].b[i100 - 1];
                                i100++;
                            }
                            while (i100 < 4) {
                                gu5VarArr[this.C].b[i100] = gu5VarArr[i96].b[i100];
                                i100++;
                            }
                        } else {
                            int[] iArr12 = gu5VarArr[i99].b;
                            iArr12[0] = i4 - 4;
                            i6 = 1;
                            System.arraycopy(gu5VarArr[i96].b, 0, iArr12, 1, 3);
                        }
                        gu5 gu5Var16 = gu5VarArr[this.C];
                        iT = bf6.T(sArr2[gu5Var16.a.a][i95], i6) + gu5Var16.c;
                        iT2 = bf6.T(sArr6[gu5VarArr[this.C].a.a], i6) + iT;
                        iB = aq4Var.b(0);
                        iB2 = aq4Var.b(gu5VarArr[this.C].b[0] + i6);
                        iB3 = gu5VarArr[this.C].c + this.o.b(iB, iB2, aq4Var.b(i6), i94, gu5VarArr[this.C].a);
                        i7 = this.C;
                        gu5Var = gu5VarArr[i7 + 1];
                        i8 = iMin3;
                        if (iB3 < gu5Var.c) {
                            gu5Var.a(iB3, i7, -1);
                            z = true;
                        } else {
                            z = false;
                        }
                        if (iB2 == iB) {
                            i36 = this.C;
                            gu5Var7 = gu5VarArr[i36 + 1];
                            z2 = z;
                            if (gu5Var7.d != i36 || gu5Var7.e != 0) {
                                dm7 dm7Var6 = gu5VarArr[i36].a;
                                iT4 = bf6.T(sArr7[dm7Var6.a][i95], 0) + bf6.T(sArr[dm7Var6.a], 0) + iT2;
                                i37 = this.C;
                                gu5Var8 = gu5VarArr[i37 + 1];
                                i9 = iT;
                                if (iT4 <= gu5Var8.c) {
                                    gu5Var8.a(iT4, i37, 0);
                                    z2 = true;
                                }
                            }
                            dm7Var = this.G;
                            if (!z2 && iB2 != iB && i93 > 2) {
                                iG6 = rs9.g(bArr, aq4Var.g + 1, gu5VarArr[this.C].b[0] + 1, 0, Math.min(i50, i8 - 2));
                                if (iG6 >= 2) {
                                    dm7 dm7Var7 = gu5VarArr[this.C].a;
                                    dm7Var.getClass();
                                    dm7Var.a = dm7Var7.a;
                                    dm7Var.a();
                                    iG7 = g(iG6, dm7Var, (i90 + 2) & i55) + iB3;
                                    i34 = this.C + 1 + iG6;
                                    while (true) {
                                        i35 = this.D;
                                        if (i35 < i34) {
                                            break;
                                        }
                                        int i101 = i35 + 1;
                                        this.D = i101;
                                        gu5VarArr[i101].c = 1073741824;
                                    }
                                    gu5Var6 = gu5VarArr[i34];
                                    if (iG7 < gu5Var6.c) {
                                        int i102 = this.C;
                                        gu5Var6.c = iG7;
                                        gu5Var6.d = i102 + 1;
                                        gu5Var6.e = 0;
                                        gu5Var6.f = true;
                                        gu5Var6.g = false;
                                    }
                                }
                            }
                            i10 = 2;
                            if (i93 >= 2) {
                                iMin = Math.min(i93, i50);
                                i11 = 2;
                                i12 = 0;
                                while (i12 < 4) {
                                    iG3 = rs9.g(bArr, aq4Var.g, gu5VarArr[this.C].b[i12] + 1, 0, iMin);
                                    if (iG3 < i10) {
                                        sArr4 = sArr7;
                                        i28 = iT2;
                                    } else {
                                        while (true) {
                                            i24 = this.D;
                                            i25 = this.C;
                                            if (i24 < i25 + iG3) {
                                                break;
                                            }
                                            int i103 = i24 + 1;
                                            this.D = i103;
                                            gu5VarArr[i103].c = 1073741824;
                                        }
                                        iH = h(iT2, i12, gu5VarArr[i25].a, i95);
                                        i26 = iG3;
                                        while (i26 >= 2) {
                                            i32 = iArr11[i95][i26 - 2] + iH;
                                            int i104 = iH;
                                            i33 = this.C;
                                            short[][] sArr13 = sArr7;
                                            gu5Var5 = gu5VarArr[i33 + i26];
                                            int i105 = iT2;
                                            if (i32 < gu5Var5.c) {
                                                gu5Var5.a(i32, i33, i12);
                                            }
                                            i26--;
                                            iH = i104;
                                            iT2 = i105;
                                            sArr7 = sArr13;
                                        }
                                        i27 = iH;
                                        sArr4 = sArr7;
                                        i28 = iT2;
                                        if (i12 == 0) {
                                            i11 = iG3 + 1;
                                        }
                                        i29 = (i93 - iG3) - 1;
                                        if (i29 >= 2) {
                                            if (i29 > i50) {
                                                i29 = i50;
                                            }
                                            iG4 = rs9.g(bArr, aq4Var.g + iG3 + 1, gu5VarArr[this.C].b[i12] + 1, 0, i29);
                                            if (iG4 >= 2) {
                                                int i106 = iArr11[i95][iG3 - 2] + i27;
                                                dm7 dm7Var8 = gu5VarArr[this.C].a;
                                                dm7Var.getClass();
                                                dm7Var.a = dm7Var8.a;
                                                dm7Var.b();
                                                int i107 = i94 + iG3;
                                                int iB7 = i106 + this.o.b(aq4Var.c(iG3, 0), aq4Var.b(0), aq4Var.c(iG3, 1), i107, this.G);
                                                dm7Var.a();
                                                iG5 = g(iG4, dm7Var, (i107 + 1) & i55) + iB7;
                                                i30 = this.C + iG3 + 1 + iG4;
                                                while (true) {
                                                    i31 = this.D;
                                                    if (i31 < i30) {
                                                        break;
                                                    }
                                                    int i108 = i31 + 1;
                                                    this.D = i108;
                                                    gu5VarArr[i108].c = 1073741824;
                                                }
                                                gu5Var4 = gu5VarArr[i30];
                                                if (iG5 < gu5Var4.c) {
                                                    int i109 = this.C;
                                                    gu5Var4.c = iG5;
                                                    gu5Var4.d = iG3 + i109 + 1;
                                                    gu5Var4.e = 0;
                                                    gu5Var4.f = true;
                                                    gu5Var4.g = true;
                                                    gu5Var4.h = i109;
                                                    gu5Var4.i = i12;
                                                }
                                            }
                                        }
                                    }
                                    i12++;
                                    iT2 = i28;
                                    sArr7 = sArr4;
                                    i10 = 2;
                                }
                                sArr3 = sArr7;
                                nn1Var = this.E;
                                i13 = nn1Var.a;
                                if (i13 <= 0) {
                                    if (((int[]) nn1Var.b)[i13 - 1] > i93) {
                                        nn1Var.a = 0;
                                        while (true) {
                                            nn1Var4 = this.E;
                                            iArr3 = (int[]) nn1Var4.b;
                                            i23 = nn1Var4.a;
                                            if (iArr3[i23] < i93) {
                                                break;
                                            }
                                            nn1Var4.a = i23 + 1;
                                        }
                                        nn1Var4.a = i23 + 1;
                                        iArr3[i23] = i93;
                                    }
                                    nn1Var2 = this.E;
                                    if (((int[]) nn1Var2.b)[nn1Var2.a - 1] < i11) {
                                        while (true) {
                                            i14 = this.D;
                                            i15 = this.C;
                                            nn1Var3 = this.E;
                                            if (i14 < ((int[]) nn1Var3.b)[nn1Var3.a - 1] + i15) {
                                                break;
                                            }
                                            int i110 = i14 + 1;
                                            this.D = i110;
                                            gu5VarArr[i110].c = 1073741824;
                                        }
                                        iT3 = bf6.T(sArr6[gu5VarArr[i15].a.a], 0) + i9;
                                        i16 = 0;
                                        while (i11 > ((int[]) this.E.b)[i16]) {
                                            i16++;
                                        }
                                        while (true) {
                                            i17 = ((int[]) this.E.c)[i16];
                                            i18 = i(iT3, i17, i11, i95);
                                            i19 = this.C;
                                            gu5Var2 = gu5VarArr[i19 + i11];
                                            if (i18 < gu5Var2.c) {
                                                gu5Var2.a(i18, i19, i17 + 4);
                                            }
                                            if (i11 != ((int[]) this.E.b)[i16]) {
                                                i20 = (i93 - i11) - 1;
                                                if (i20 >= 2) {
                                                    if (i20 > i50) {
                                                        i20 = i50;
                                                    }
                                                    i93 = i93;
                                                    iG = rs9.g(bArr, aq4Var.g + i11 + 1, i17 + 1, 0, i20);
                                                    if (iG >= 2) {
                                                        dm7 dm7Var9 = gu5VarArr[this.C].a;
                                                        dm7Var.getClass();
                                                        dm7Var.a = dm7Var9.a;
                                                        dm7Var.c();
                                                        int i111 = i94 + i11;
                                                        int iB8 = i18 + this.o.b(aq4Var.c(i11, 0), aq4Var.b(0), aq4Var.c(i11, 1), i111, this.G);
                                                        dm7Var.a();
                                                        iG2 = g(iG, dm7Var, (i111 + 1) & i55) + iB8;
                                                        i21 = this.C + i11 + 1 + iG;
                                                        while (true) {
                                                            i22 = this.D;
                                                            if (i22 < i21) {
                                                                break;
                                                            }
                                                            int i112 = i22 + 1;
                                                            this.D = i112;
                                                            gu5VarArr[i112].c = 1073741824;
                                                        }
                                                        gu5Var3 = gu5VarArr[i21];
                                                        if (iG2 < gu5Var3.c) {
                                                            int i113 = this.C;
                                                            gu5Var3.c = iG2;
                                                            gu5Var3.d = i113 + i11 + 1;
                                                            gu5Var3.e = 0;
                                                            gu5Var3.f = true;
                                                            gu5Var3.g = true;
                                                            gu5Var3.h = i113;
                                                            gu5Var3.i = i17 + 4;
                                                        }
                                                        i16++;
                                                        if (i16 == this.E.a) {
                                                            break;
                                                        }
                                                    }
                                                    i16++;
                                                    if (i16 == this.E.a) {
                                                        break;
                                                    }
                                                } else {
                                                    i93 = i93;
                                                }
                                                i16++;
                                                if (i16 == this.E.a) {
                                                    break;
                                                }
                                            } else {
                                                i93 = i93;
                                            }
                                            i11++;
                                            i93 = i93;
                                        }
                                    }
                                }
                            } else {
                                i93 = i93;
                                sArr3 = sArr7;
                            }
                            iMin3 = i93;
                            sArr7 = sArr3;
                            i90 = i94;
                        } else {
                            z2 = z;
                        }
                        i9 = iT;
                        dm7Var = this.G;
                        if (!z2) {
                            iG6 = rs9.g(bArr, aq4Var.g + 1, gu5VarArr[this.C].b[0] + 1, 0, Math.min(i50, i8 - 2));
                            if (iG6 >= 2) {
                                dm7 dm7Var10 = gu5VarArr[this.C].a;
                                dm7Var.getClass();
                                dm7Var.a = dm7Var10.a;
                                dm7Var.a();
                                iG7 = g(iG6, dm7Var, (i90 + 2) & i55) + iB3;
                                i34 = this.C + 1 + iG6;
                                while (true) {
                                    i35 = this.D;
                                    if (i35 < i34) {
                                        break;
                                        break;
                                    }
                                    int i1010 = i35 + 1;
                                    this.D = i1010;
                                    gu5VarArr[i1010].c = 1073741824;
                                }
                                gu5Var6 = gu5VarArr[i34];
                                if (iG7 < gu5Var6.c) {
                                    int i1011 = this.C;
                                    gu5Var6.c = iG7;
                                    gu5Var6.d = i1011 + 1;
                                    gu5Var6.e = 0;
                                    gu5Var6.f = true;
                                    gu5Var6.g = false;
                                }
                            }
                        }
                        i10 = 2;
                        if (i93 >= 2) {
                            iMin = Math.min(i93, i50);
                            i11 = 2;
                            i12 = 0;
                            while (i12 < 4) {
                                iG3 = rs9.g(bArr, aq4Var.g, gu5VarArr[this.C].b[i12] + 1, 0, iMin);
                                if (iG3 < i10) {
                                    sArr4 = sArr7;
                                    i28 = iT2;
                                } else {
                                    while (true) {
                                        i24 = this.D;
                                        i25 = this.C;
                                        if (i24 < i25 + iG3) {
                                            break;
                                            break;
                                        }
                                        int i1012 = i24 + 1;
                                        this.D = i1012;
                                        gu5VarArr[i1012].c = 1073741824;
                                    }
                                    iH = h(iT2, i12, gu5VarArr[i25].a, i95);
                                    i26 = iG3;
                                    while (i26 >= 2) {
                                        i32 = iArr11[i95][i26 - 2] + iH;
                                        int i1013 = iH;
                                        i33 = this.C;
                                        short[][] sArr14 = sArr7;
                                        gu5Var5 = gu5VarArr[i33 + i26];
                                        int i1014 = iT2;
                                        if (i32 < gu5Var5.c) {
                                            gu5Var5.a(i32, i33, i12);
                                        }
                                        i26--;
                                        iH = i1013;
                                        iT2 = i1014;
                                        sArr7 = sArr14;
                                    }
                                    i27 = iH;
                                    sArr4 = sArr7;
                                    i28 = iT2;
                                    if (i12 == 0) {
                                        i11 = iG3 + 1;
                                    }
                                    i29 = (i93 - iG3) - 1;
                                    if (i29 >= 2) {
                                        if (i29 > i50) {
                                            i29 = i50;
                                        }
                                        iG4 = rs9.g(bArr, aq4Var.g + iG3 + 1, gu5VarArr[this.C].b[i12] + 1, 0, i29);
                                        if (iG4 >= 2) {
                                            int i1015 = iArr11[i95][iG3 - 2] + i27;
                                            dm7 dm7Var11 = gu5VarArr[this.C].a;
                                            dm7Var.getClass();
                                            dm7Var.a = dm7Var11.a;
                                            dm7Var.b();
                                            int i1016 = i94 + iG3;
                                            int iB9 = i1015 + this.o.b(aq4Var.c(iG3, 0), aq4Var.b(0), aq4Var.c(iG3, 1), i1016, this.G);
                                            dm7Var.a();
                                            iG5 = g(iG4, dm7Var, (i1016 + 1) & i55) + iB9;
                                            i30 = this.C + iG3 + 1 + iG4;
                                            while (true) {
                                                i31 = this.D;
                                                if (i31 < i30) {
                                                    break;
                                                    break;
                                                }
                                                int i1017 = i31 + 1;
                                                this.D = i1017;
                                                gu5VarArr[i1017].c = 1073741824;
                                            }
                                            gu5Var4 = gu5VarArr[i30];
                                            if (iG5 < gu5Var4.c) {
                                                int i1018 = this.C;
                                                gu5Var4.c = iG5;
                                                gu5Var4.d = iG3 + i1018 + 1;
                                                gu5Var4.e = 0;
                                                gu5Var4.f = true;
                                                gu5Var4.g = true;
                                                gu5Var4.h = i1018;
                                                gu5Var4.i = i12;
                                            }
                                        }
                                    }
                                }
                                i12++;
                                iT2 = i28;
                                sArr7 = sArr4;
                                i10 = 2;
                            }
                            sArr3 = sArr7;
                            nn1Var = this.E;
                            i13 = nn1Var.a;
                            if (i13 <= 0) {
                                if (((int[]) nn1Var.b)[i13 - 1] > i93) {
                                    nn1Var.a = 0;
                                    while (true) {
                                        nn1Var4 = this.E;
                                        iArr3 = (int[]) nn1Var4.b;
                                        i23 = nn1Var4.a;
                                        if (iArr3[i23] < i93) {
                                            break;
                                            break;
                                        }
                                        nn1Var4.a = i23 + 1;
                                    }
                                    nn1Var4.a = i23 + 1;
                                    iArr3[i23] = i93;
                                }
                                nn1Var2 = this.E;
                                if (((int[]) nn1Var2.b)[nn1Var2.a - 1] < i11) {
                                    while (true) {
                                        i14 = this.D;
                                        i15 = this.C;
                                        nn1Var3 = this.E;
                                        if (i14 < ((int[]) nn1Var3.b)[nn1Var3.a - 1] + i15) {
                                            break;
                                            break;
                                        }
                                        int i114 = i14 + 1;
                                        this.D = i114;
                                        gu5VarArr[i114].c = 1073741824;
                                    }
                                    iT3 = bf6.T(sArr6[gu5VarArr[i15].a.a], 0) + i9;
                                    i16 = 0;
                                    while (i11 > ((int[]) this.E.b)[i16]) {
                                        i16++;
                                    }
                                    while (true) {
                                        i17 = ((int[]) this.E.c)[i16];
                                        i18 = i(iT3, i17, i11, i95);
                                        i19 = this.C;
                                        gu5Var2 = gu5VarArr[i19 + i11];
                                        if (i18 < gu5Var2.c) {
                                            gu5Var2.a(i18, i19, i17 + 4);
                                        }
                                        if (i11 != ((int[]) this.E.b)[i16]) {
                                            i20 = (i93 - i11) - 1;
                                            if (i20 >= 2) {
                                                if (i20 > i50) {
                                                    i20 = i50;
                                                }
                                                i93 = i93;
                                                iG = rs9.g(bArr, aq4Var.g + i11 + 1, i17 + 1, 0, i20);
                                                if (iG >= 2) {
                                                    dm7 dm7Var12 = gu5VarArr[this.C].a;
                                                    dm7Var.getClass();
                                                    dm7Var.a = dm7Var12.a;
                                                    dm7Var.c();
                                                    int i115 = i94 + i11;
                                                    int iB10 = i18 + this.o.b(aq4Var.c(i11, 0), aq4Var.b(0), aq4Var.c(i11, 1), i115, this.G);
                                                    dm7Var.a();
                                                    iG2 = g(iG, dm7Var, (i115 + 1) & i55) + iB10;
                                                    i21 = this.C + i11 + 1 + iG;
                                                    while (true) {
                                                        i22 = this.D;
                                                        if (i22 < i21) {
                                                            break;
                                                            break;
                                                        }
                                                        int i116 = i22 + 1;
                                                        this.D = i116;
                                                        gu5VarArr[i116].c = 1073741824;
                                                    }
                                                    gu5Var3 = gu5VarArr[i21];
                                                    if (iG2 < gu5Var3.c) {
                                                        int i117 = this.C;
                                                        gu5Var3.c = iG2;
                                                        gu5Var3.d = i117 + i11 + 1;
                                                        gu5Var3.e = 0;
                                                        gu5Var3.f = true;
                                                        gu5Var3.g = true;
                                                        gu5Var3.h = i117;
                                                        gu5Var3.i = i17 + 4;
                                                    }
                                                    i16++;
                                                    if (i16 == this.E.a) {
                                                        break;
                                                    }
                                                }
                                                i16++;
                                                if (i16 == this.E.a) {
                                                    break;
                                                }
                                            } else {
                                                i93 = i93;
                                            }
                                            i16++;
                                            if (i16 == this.E.a) {
                                                break;
                                            }
                                        } else {
                                            i93 = i93;
                                        }
                                        i11++;
                                        i93 = i93;
                                    }
                                }
                            }
                        } else {
                            i93 = i93;
                            sArr3 = sArr7;
                        }
                        iMin3 = i93;
                        sArr7 = sArr3;
                        i90 = i94;
                    }
                    i6 = 1;
                    gu5 gu5Var17 = gu5VarArr[this.C];
                    iT = bf6.T(sArr2[gu5Var17.a.a][i95], i6) + gu5Var17.c;
                    iT2 = bf6.T(sArr6[gu5VarArr[this.C].a.a], i6) + iT;
                    iB = aq4Var.b(0);
                    iB2 = aq4Var.b(gu5VarArr[this.C].b[0] + i6);
                    iB3 = gu5VarArr[this.C].c + this.o.b(iB, iB2, aq4Var.b(i6), i94, gu5VarArr[this.C].a);
                    i7 = this.C;
                    gu5Var = gu5VarArr[i7 + 1];
                    i8 = iMin3;
                    if (iB3 < gu5Var.c) {
                        gu5Var.a(iB3, i7, -1);
                        z = true;
                    } else {
                        z = false;
                    }
                    if (iB2 == iB) {
                        i36 = this.C;
                        gu5Var7 = gu5VarArr[i36 + 1];
                        z2 = z;
                        if (gu5Var7.d != i36) {
                        }
                        dm7 dm7Var13 = gu5VarArr[i36].a;
                        iT4 = bf6.T(sArr7[dm7Var13.a][i95], 0) + bf6.T(sArr[dm7Var13.a], 0) + iT2;
                        i37 = this.C;
                        gu5Var8 = gu5VarArr[i37 + 1];
                        i9 = iT;
                        if (iT4 <= gu5Var8.c) {
                            gu5Var8.a(iT4, i37, 0);
                            z2 = true;
                        }
                        dm7Var = this.G;
                        if (!z2) {
                            iG6 = rs9.g(bArr, aq4Var.g + 1, gu5VarArr[this.C].b[0] + 1, 0, Math.min(i50, i8 - 2));
                            if (iG6 >= 2) {
                                dm7 dm7Var14 = gu5VarArr[this.C].a;
                                dm7Var.getClass();
                                dm7Var.a = dm7Var14.a;
                                dm7Var.a();
                                iG7 = g(iG6, dm7Var, (i90 + 2) & i55) + iB3;
                                i34 = this.C + 1 + iG6;
                                while (true) {
                                    i35 = this.D;
                                    if (i35 < i34) {
                                        break;
                                        break;
                                    }
                                    int i1019 = i35 + 1;
                                    this.D = i1019;
                                    gu5VarArr[i1019].c = 1073741824;
                                }
                                gu5Var6 = gu5VarArr[i34];
                                if (iG7 < gu5Var6.c) {
                                    int i10110 = this.C;
                                    gu5Var6.c = iG7;
                                    gu5Var6.d = i10110 + 1;
                                    gu5Var6.e = 0;
                                    gu5Var6.f = true;
                                    gu5Var6.g = false;
                                }
                            }
                        }
                        i10 = 2;
                        if (i93 >= 2) {
                            iMin = Math.min(i93, i50);
                            i11 = 2;
                            i12 = 0;
                            while (i12 < 4) {
                                iG3 = rs9.g(bArr, aq4Var.g, gu5VarArr[this.C].b[i12] + 1, 0, iMin);
                                if (iG3 < i10) {
                                    sArr4 = sArr7;
                                    i28 = iT2;
                                } else {
                                    while (true) {
                                        i24 = this.D;
                                        i25 = this.C;
                                        if (i24 < i25 + iG3) {
                                            break;
                                            break;
                                        }
                                        int i10111 = i24 + 1;
                                        this.D = i10111;
                                        gu5VarArr[i10111].c = 1073741824;
                                    }
                                    iH = h(iT2, i12, gu5VarArr[i25].a, i95);
                                    i26 = iG3;
                                    while (i26 >= 2) {
                                        i32 = iArr11[i95][i26 - 2] + iH;
                                        int i10112 = iH;
                                        i33 = this.C;
                                        short[][] sArr15 = sArr7;
                                        gu5Var5 = gu5VarArr[i33 + i26];
                                        int i10113 = iT2;
                                        if (i32 < gu5Var5.c) {
                                            gu5Var5.a(i32, i33, i12);
                                        }
                                        i26--;
                                        iH = i10112;
                                        iT2 = i10113;
                                        sArr7 = sArr15;
                                    }
                                    i27 = iH;
                                    sArr4 = sArr7;
                                    i28 = iT2;
                                    if (i12 == 0) {
                                        i11 = iG3 + 1;
                                    }
                                    i29 = (i93 - iG3) - 1;
                                    if (i29 >= 2) {
                                        if (i29 > i50) {
                                            i29 = i50;
                                        }
                                        iG4 = rs9.g(bArr, aq4Var.g + iG3 + 1, gu5VarArr[this.C].b[i12] + 1, 0, i29);
                                        if (iG4 >= 2) {
                                            int i10114 = iArr11[i95][iG3 - 2] + i27;
                                            dm7 dm7Var15 = gu5VarArr[this.C].a;
                                            dm7Var.getClass();
                                            dm7Var.a = dm7Var15.a;
                                            dm7Var.b();
                                            int i10115 = i94 + iG3;
                                            int iB11 = i10114 + this.o.b(aq4Var.c(iG3, 0), aq4Var.b(0), aq4Var.c(iG3, 1), i10115, this.G);
                                            dm7Var.a();
                                            iG5 = g(iG4, dm7Var, (i10115 + 1) & i55) + iB11;
                                            i30 = this.C + iG3 + 1 + iG4;
                                            while (true) {
                                                i31 = this.D;
                                                if (i31 < i30) {
                                                    break;
                                                    break;
                                                }
                                                int i10116 = i31 + 1;
                                                this.D = i10116;
                                                gu5VarArr[i10116].c = 1073741824;
                                            }
                                            gu5Var4 = gu5VarArr[i30];
                                            if (iG5 < gu5Var4.c) {
                                                int i10117 = this.C;
                                                gu5Var4.c = iG5;
                                                gu5Var4.d = iG3 + i10117 + 1;
                                                gu5Var4.e = 0;
                                                gu5Var4.f = true;
                                                gu5Var4.g = true;
                                                gu5Var4.h = i10117;
                                                gu5Var4.i = i12;
                                            }
                                        }
                                    }
                                }
                                i12++;
                                iT2 = i28;
                                sArr7 = sArr4;
                                i10 = 2;
                            }
                            sArr3 = sArr7;
                            nn1Var = this.E;
                            i13 = nn1Var.a;
                            if (i13 <= 0) {
                                if (((int[]) nn1Var.b)[i13 - 1] > i93) {
                                    nn1Var.a = 0;
                                    while (true) {
                                        nn1Var4 = this.E;
                                        iArr3 = (int[]) nn1Var4.b;
                                        i23 = nn1Var4.a;
                                        if (iArr3[i23] < i93) {
                                            break;
                                            break;
                                        }
                                        nn1Var4.a = i23 + 1;
                                    }
                                    nn1Var4.a = i23 + 1;
                                    iArr3[i23] = i93;
                                }
                                nn1Var2 = this.E;
                                if (((int[]) nn1Var2.b)[nn1Var2.a - 1] < i11) {
                                    while (true) {
                                        i14 = this.D;
                                        i15 = this.C;
                                        nn1Var3 = this.E;
                                        if (i14 < ((int[]) nn1Var3.b)[nn1Var3.a - 1] + i15) {
                                            break;
                                            break;
                                        }
                                        int i118 = i14 + 1;
                                        this.D = i118;
                                        gu5VarArr[i118].c = 1073741824;
                                    }
                                    iT3 = bf6.T(sArr6[gu5VarArr[i15].a.a], 0) + i9;
                                    i16 = 0;
                                    while (i11 > ((int[]) this.E.b)[i16]) {
                                        i16++;
                                    }
                                    while (true) {
                                        i17 = ((int[]) this.E.c)[i16];
                                        i18 = i(iT3, i17, i11, i95);
                                        i19 = this.C;
                                        gu5Var2 = gu5VarArr[i19 + i11];
                                        if (i18 < gu5Var2.c) {
                                            gu5Var2.a(i18, i19, i17 + 4);
                                        }
                                        if (i11 != ((int[]) this.E.b)[i16]) {
                                            i20 = (i93 - i11) - 1;
                                            if (i20 >= 2) {
                                                if (i20 > i50) {
                                                    i20 = i50;
                                                }
                                                i93 = i93;
                                                iG = rs9.g(bArr, aq4Var.g + i11 + 1, i17 + 1, 0, i20);
                                                if (iG >= 2) {
                                                    dm7 dm7Var16 = gu5VarArr[this.C].a;
                                                    dm7Var.getClass();
                                                    dm7Var.a = dm7Var16.a;
                                                    dm7Var.c();
                                                    int i119 = i94 + i11;
                                                    int iB12 = i18 + this.o.b(aq4Var.c(i11, 0), aq4Var.b(0), aq4Var.c(i11, 1), i119, this.G);
                                                    dm7Var.a();
                                                    iG2 = g(iG, dm7Var, (i119 + 1) & i55) + iB12;
                                                    i21 = this.C + i11 + 1 + iG;
                                                    while (true) {
                                                        i22 = this.D;
                                                        if (i22 < i21) {
                                                            break;
                                                            break;
                                                        }
                                                        int i1110 = i22 + 1;
                                                        this.D = i1110;
                                                        gu5VarArr[i1110].c = 1073741824;
                                                    }
                                                    gu5Var3 = gu5VarArr[i21];
                                                    if (iG2 < gu5Var3.c) {
                                                        int i1111 = this.C;
                                                        gu5Var3.c = iG2;
                                                        gu5Var3.d = i1111 + i11 + 1;
                                                        gu5Var3.e = 0;
                                                        gu5Var3.f = true;
                                                        gu5Var3.g = true;
                                                        gu5Var3.h = i1111;
                                                        gu5Var3.i = i17 + 4;
                                                    }
                                                    i16++;
                                                    if (i16 == this.E.a) {
                                                        break;
                                                    }
                                                }
                                                i16++;
                                                if (i16 == this.E.a) {
                                                    break;
                                                }
                                            } else {
                                                i93 = i93;
                                            }
                                            i16++;
                                            if (i16 == this.E.a) {
                                                break;
                                            }
                                        } else {
                                            i93 = i93;
                                        }
                                        i11++;
                                        i93 = i93;
                                    }
                                }
                            }
                        } else {
                            i93 = i93;
                            sArr3 = sArr7;
                        }
                        iMin3 = i93;
                        sArr7 = sArr3;
                        i90 = i94;
                    } else {
                        z2 = z;
                    }
                    i9 = iT;
                    dm7Var = this.G;
                    if (!z2) {
                        iG6 = rs9.g(bArr, aq4Var.g + 1, gu5VarArr[this.C].b[0] + 1, 0, Math.min(i50, i8 - 2));
                        if (iG6 >= 2) {
                            dm7 dm7Var17 = gu5VarArr[this.C].a;
                            dm7Var.getClass();
                            dm7Var.a = dm7Var17.a;
                            dm7Var.a();
                            iG7 = g(iG6, dm7Var, (i90 + 2) & i55) + iB3;
                            i34 = this.C + 1 + iG6;
                            while (true) {
                                i35 = this.D;
                                if (i35 < i34) {
                                    break;
                                    break;
                                }
                                int i10118 = i35 + 1;
                                this.D = i10118;
                                gu5VarArr[i10118].c = 1073741824;
                            }
                            gu5Var6 = gu5VarArr[i34];
                            if (iG7 < gu5Var6.c) {
                                int i10119 = this.C;
                                gu5Var6.c = iG7;
                                gu5Var6.d = i10119 + 1;
                                gu5Var6.e = 0;
                                gu5Var6.f = true;
                                gu5Var6.g = false;
                            }
                        }
                    }
                    i10 = 2;
                    if (i93 >= 2) {
                        iMin = Math.min(i93, i50);
                        i11 = 2;
                        i12 = 0;
                        while (i12 < 4) {
                            iG3 = rs9.g(bArr, aq4Var.g, gu5VarArr[this.C].b[i12] + 1, 0, iMin);
                            if (iG3 < i10) {
                                sArr4 = sArr7;
                                i28 = iT2;
                            } else {
                                while (true) {
                                    i24 = this.D;
                                    i25 = this.C;
                                    if (i24 < i25 + iG3) {
                                        break;
                                        break;
                                    }
                                    int i101110 = i24 + 1;
                                    this.D = i101110;
                                    gu5VarArr[i101110].c = 1073741824;
                                }
                                iH = h(iT2, i12, gu5VarArr[i25].a, i95);
                                i26 = iG3;
                                while (i26 >= 2) {
                                    i32 = iArr11[i95][i26 - 2] + iH;
                                    int i101111 = iH;
                                    i33 = this.C;
                                    short[][] sArr16 = sArr7;
                                    gu5Var5 = gu5VarArr[i33 + i26];
                                    int i101112 = iT2;
                                    if (i32 < gu5Var5.c) {
                                        gu5Var5.a(i32, i33, i12);
                                    }
                                    i26--;
                                    iH = i101111;
                                    iT2 = i101112;
                                    sArr7 = sArr16;
                                }
                                i27 = iH;
                                sArr4 = sArr7;
                                i28 = iT2;
                                if (i12 == 0) {
                                    i11 = iG3 + 1;
                                }
                                i29 = (i93 - iG3) - 1;
                                if (i29 >= 2) {
                                    if (i29 > i50) {
                                        i29 = i50;
                                    }
                                    iG4 = rs9.g(bArr, aq4Var.g + iG3 + 1, gu5VarArr[this.C].b[i12] + 1, 0, i29);
                                    if (iG4 >= 2) {
                                        int i101113 = iArr11[i95][iG3 - 2] + i27;
                                        dm7 dm7Var18 = gu5VarArr[this.C].a;
                                        dm7Var.getClass();
                                        dm7Var.a = dm7Var18.a;
                                        dm7Var.b();
                                        int i101114 = i94 + iG3;
                                        int iB13 = i101113 + this.o.b(aq4Var.c(iG3, 0), aq4Var.b(0), aq4Var.c(iG3, 1), i101114, this.G);
                                        dm7Var.a();
                                        iG5 = g(iG4, dm7Var, (i101114 + 1) & i55) + iB13;
                                        i30 = this.C + iG3 + 1 + iG4;
                                        while (true) {
                                            i31 = this.D;
                                            if (i31 < i30) {
                                                break;
                                                break;
                                            }
                                            int i101115 = i31 + 1;
                                            this.D = i101115;
                                            gu5VarArr[i101115].c = 1073741824;
                                        }
                                        gu5Var4 = gu5VarArr[i30];
                                        if (iG5 < gu5Var4.c) {
                                            int i101116 = this.C;
                                            gu5Var4.c = iG5;
                                            gu5Var4.d = iG3 + i101116 + 1;
                                            gu5Var4.e = 0;
                                            gu5Var4.f = true;
                                            gu5Var4.g = true;
                                            gu5Var4.h = i101116;
                                            gu5Var4.i = i12;
                                        }
                                    }
                                }
                            }
                            i12++;
                            iT2 = i28;
                            sArr7 = sArr4;
                            i10 = 2;
                        }
                        sArr3 = sArr7;
                        nn1Var = this.E;
                        i13 = nn1Var.a;
                        if (i13 <= 0) {
                            if (((int[]) nn1Var.b)[i13 - 1] > i93) {
                                nn1Var.a = 0;
                                while (true) {
                                    nn1Var4 = this.E;
                                    iArr3 = (int[]) nn1Var4.b;
                                    i23 = nn1Var4.a;
                                    if (iArr3[i23] < i93) {
                                        break;
                                        break;
                                    }
                                    nn1Var4.a = i23 + 1;
                                }
                                nn1Var4.a = i23 + 1;
                                iArr3[i23] = i93;
                            }
                            nn1Var2 = this.E;
                            if (((int[]) nn1Var2.b)[nn1Var2.a - 1] < i11) {
                                while (true) {
                                    i14 = this.D;
                                    i15 = this.C;
                                    nn1Var3 = this.E;
                                    if (i14 < ((int[]) nn1Var3.b)[nn1Var3.a - 1] + i15) {
                                        break;
                                        break;
                                    }
                                    int i1112 = i14 + 1;
                                    this.D = i1112;
                                    gu5VarArr[i1112].c = 1073741824;
                                }
                                iT3 = bf6.T(sArr6[gu5VarArr[i15].a.a], 0) + i9;
                                i16 = 0;
                                while (i11 > ((int[]) this.E.b)[i16]) {
                                    i16++;
                                }
                                while (true) {
                                    i17 = ((int[]) this.E.c)[i16];
                                    i18 = i(iT3, i17, i11, i95);
                                    i19 = this.C;
                                    gu5Var2 = gu5VarArr[i19 + i11];
                                    if (i18 < gu5Var2.c) {
                                        gu5Var2.a(i18, i19, i17 + 4);
                                    }
                                    if (i11 != ((int[]) this.E.b)[i16]) {
                                        i20 = (i93 - i11) - 1;
                                        if (i20 >= 2) {
                                            if (i20 > i50) {
                                                i20 = i50;
                                            }
                                            i93 = i93;
                                            iG = rs9.g(bArr, aq4Var.g + i11 + 1, i17 + 1, 0, i20);
                                            if (iG >= 2) {
                                                dm7 dm7Var19 = gu5VarArr[this.C].a;
                                                dm7Var.getClass();
                                                dm7Var.a = dm7Var19.a;
                                                dm7Var.c();
                                                int i1113 = i94 + i11;
                                                int iB14 = i18 + this.o.b(aq4Var.c(i11, 0), aq4Var.b(0), aq4Var.c(i11, 1), i1113, this.G);
                                                dm7Var.a();
                                                iG2 = g(iG, dm7Var, (i1113 + 1) & i55) + iB14;
                                                i21 = this.C + i11 + 1 + iG;
                                                while (true) {
                                                    i22 = this.D;
                                                    if (i22 < i21) {
                                                        break;
                                                        break;
                                                    }
                                                    int i1114 = i22 + 1;
                                                    this.D = i1114;
                                                    gu5VarArr[i1114].c = 1073741824;
                                                }
                                                gu5Var3 = gu5VarArr[i21];
                                                if (iG2 < gu5Var3.c) {
                                                    int i1115 = this.C;
                                                    gu5Var3.c = iG2;
                                                    gu5Var3.d = i1115 + i11 + 1;
                                                    gu5Var3.e = 0;
                                                    gu5Var3.f = true;
                                                    gu5Var3.g = true;
                                                    gu5Var3.h = i1115;
                                                    gu5Var3.i = i17 + 4;
                                                }
                                                i16++;
                                                if (i16 == this.E.a) {
                                                    break;
                                                }
                                            }
                                            i16++;
                                            if (i16 == this.E.a) {
                                                break;
                                            }
                                        } else {
                                            i93 = i93;
                                        }
                                        i16++;
                                        if (i16 == this.E.a) {
                                            break;
                                        }
                                    } else {
                                        i93 = i93;
                                    }
                                    i11++;
                                    i93 = i93;
                                }
                            }
                        }
                    } else {
                        i93 = i93;
                        sArr3 = sArr7;
                    }
                    iMin3 = i93;
                    sArr7 = sArr3;
                    i90 = i94;
                }
                int i120 = this.C;
                this.D = i120;
                int i121 = gu5VarArr[i120].d;
                while (true) {
                    int i122 = this.C;
                    gu5 gu5Var18 = gu5VarArr[i122];
                    if (gu5Var18.f) {
                        gu5 gu5Var19 = gu5VarArr[i121];
                        gu5Var19.d = i122;
                        gu5Var19.e = -1;
                        int i123 = i121 - 1;
                        this.C = i121;
                        if (gu5Var18.g) {
                            gu5 gu5Var20 = gu5VarArr[i123];
                            gu5Var20.d = i121;
                            gu5Var20.e = gu5Var18.i;
                            this.C = i123;
                            i121 = gu5Var18.h;
                        } else {
                            i121 = i123;
                        }
                    }
                    gu5 gu5Var21 = gu5VarArr[i121];
                    int i124 = gu5Var21.d;
                    gu5Var21.d = this.C;
                    this.C = i121;
                    if (i121 <= 0) {
                        int i125 = gu5VarArr[0].d;
                        this.C = i125;
                        this.y = gu5VarArr[i125].e;
                        return i125;
                    }
                    i121 = i124;
                }
            }
        }
        return 1;
    }
}
