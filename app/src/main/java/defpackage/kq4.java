package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kq4 extends gq4 {
    public final zp4 m;
    public final ye6 n;
    public final jq4 o;
    public final hq4 p;
    public final hq4 q;

    public kq4(zp4 zp4Var, ye6 ye6Var, int i, int i2, int i3) {
        super(i3);
        this.p = new hq4(this);
        this.q = new hq4(this);
        this.m = zp4Var;
        this.n = ye6Var;
        this.o = new jq4(this, i, i2);
        a();
    }

    @Override // defpackage.gq4
    public final void a() {
        super.a();
        int i = 0;
        while (true) {
            iq4[] iq4VarArr = this.o.c;
            if (i >= iq4VarArr.length) {
                this.p.d();
                this.q.d();
                return;
            } else {
                y13.o((short[]) iq4VarArr[i].b);
                i++;
            }
        }
    }

    public final void b() throws cy1 {
        int i;
        int iF;
        zp4 zp4Var = this.m;
        int i2 = zp4Var.g;
        if (i2 > 0) {
            zp4Var.a(zp4Var.h, i2);
        }
        while (true) {
            int i3 = zp4Var.d;
            int i4 = zp4Var.f;
            ye6 ye6Var = this.n;
            if (i3 >= i4) {
                ye6Var.T();
                return;
            }
            int i5 = i3 & this.a;
            short[][] sArr = this.d;
            dm7 dm7Var = this.c;
            int iR = 1;
            if (ye6Var.R(i5, sArr[dm7Var.a]) == 0) {
                jq4 jq4Var = this.o;
                zp4 zp4Var2 = jq4Var.d.m;
                int i6 = zp4Var2.d;
                int i7 = i6 - 1;
                if (i6 <= 0) {
                    i7 += zp4Var2.b;
                }
                iq4 iq4Var = jq4Var.c[jq4Var.a(zp4Var2.a[i7] & 255, i6)];
                short[] sArr2 = (short[]) iq4Var.b;
                kq4 kq4Var = iq4Var.e.d;
                ye6 ye6Var2 = kq4Var.n;
                zp4 zp4Var3 = kq4Var.m;
                dm7 dm7Var2 = kq4Var.c;
                if (dm7Var2.a < 7) {
                    do {
                        iR = (iR << 1) | ye6Var2.R(iR, sArr2);
                    } while (iR < 256);
                } else {
                    int i8 = kq4Var.b[0];
                    int i9 = zp4Var3.d;
                    int i10 = (i9 - i8) - 1;
                    if (i8 >= i9) {
                        i10 += zp4Var3.b;
                    }
                    int i11 = zp4Var3.a[i10] & 255;
                    int i12 = 1;
                    int i13 = 256;
                    do {
                        i11 <<= 1;
                        int i14 = i11 & i13;
                        int iR2 = ye6Var2.R(i13 + i14 + i12, sArr2);
                        i12 = (i12 << 1) | iR2;
                        i13 &= (~i14) ^ (0 - iR2);
                    } while (i12 < 256);
                    iR = i12;
                }
                byte[] bArr = zp4Var3.a;
                int i15 = zp4Var3.d;
                int i16 = i15 + 1;
                zp4Var3.d = i16;
                bArr[i15] = (byte) iR;
                if (zp4Var3.e < i16) {
                    zp4Var3.e = i16;
                }
                dm7Var2.a();
            } else {
                int iR3 = ye6Var.R(dm7Var.a, this.e);
                int[] iArr = this.b;
                if (iR3 == 0) {
                    dm7Var.c();
                    iArr[3] = iArr[2];
                    iArr[2] = iArr[1];
                    iArr[1] = iArr[0];
                    iF = this.p.f(i5);
                    int iS = ye6Var.S(this.j[iF < 6 ? iF - 2 : 3]);
                    if (iS < 4) {
                        iArr[0] = iS;
                    } else {
                        int i17 = iS >> 1;
                        int i18 = (2 | (iS & 1)) << (i17 - 1);
                        iArr[0] = i18;
                        if (iS < 14) {
                            short[] sArr3 = this.k[iS - 4];
                            int i19 = 1;
                            int i20 = 0;
                            int i21 = 0;
                            while (true) {
                                int iR4 = ye6Var.R(i19, sArr3);
                                i19 = (i19 << 1) | iR4;
                                int i22 = i21 + 1;
                                i20 |= iR4 << i21;
                                if (i19 >= sArr3.length) {
                                    break;
                                } else {
                                    i21 = i22;
                                }
                            }
                            iArr[0] = i18 | i20;
                        } else {
                            int i23 = i17 - 5;
                            int i24 = 0;
                            do {
                                ye6Var.T();
                                int i25 = ye6Var.h >>> 1;
                                ye6Var.h = i25;
                                int i26 = ye6Var.i;
                                int i27 = (i26 - i25) >>> 31;
                                ye6Var.i = i26 - (i25 & (i27 - 1));
                                i24 = (i24 << 1) | (1 - i27);
                                i23--;
                            } while (i23 != 0);
                            int i28 = i18 | (i24 << 4);
                            iArr[0] = i28;
                            int i29 = 1;
                            int i30 = 0;
                            int i31 = 0;
                            while (true) {
                                short[] sArr4 = this.l;
                                int iR5 = ye6Var.R(i29, sArr4);
                                i29 = (i29 << 1) | iR5;
                                int i32 = i31 + 1;
                                i30 |= iR5 << i31;
                                if (i29 >= sArr4.length) {
                                    break;
                                } else {
                                    i31 = i32;
                                }
                            }
                            iArr[0] = i28 | i30;
                        }
                    }
                } else {
                    if (ye6Var.R(dm7Var.a, this.f) == 0) {
                        if (ye6Var.R(i5, this.i[dm7Var.a]) == 0) {
                            dm7Var.a = dm7Var.a < 7 ? 9 : 11;
                        }
                        iF = iR;
                    } else {
                        if (ye6Var.R(dm7Var.a, this.g) == 0) {
                            i = iArr[1];
                        } else {
                            if (ye6Var.R(dm7Var.a, this.h) == 0) {
                                i = iArr[2];
                            } else {
                                i = iArr[3];
                                iArr[3] = iArr[2];
                            }
                            iArr[2] = iArr[1];
                        }
                        iArr[1] = iArr[0];
                        iArr[0] = i;
                    }
                    dm7Var.b();
                    iR = this.q.f(i5);
                    iF = iR;
                }
                zp4Var.a(iArr[0], iF);
            }
        }
    }
}
