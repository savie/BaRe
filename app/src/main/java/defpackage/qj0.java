package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qj0 extends aq4 {
    public final x24 l;
    public final int[] m;
    public final nn1 n;
    public final int o;
    public final int p;
    public int q;
    public int r;

    public qj0(int i, int i2, int i3, int i4, int i5, v40 v40Var) {
        super(i, i2, i3, i4, v40Var);
        this.q = -1;
        int i6 = i + 1;
        this.p = i6;
        this.r = i6;
        this.l = new x24(i, v40Var);
        this.m = v40Var.b(i6 * 2, false);
        this.n = new nn1(i4 - 1);
        this.o = i5 <= 0 ? (i4 / 2) + 16 : i5;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x005e  */
    @Override // defpackage.aq4
    public final nn1 d() {
        int iG;
        int i;
        int i2;
        int[] iArr;
        nn1 nn1Var = this.n;
        nn1Var.a = 0;
        int[] iArr2 = (int[]) nn1Var.c;
        int[] iArr3 = (int[]) nn1Var.b;
        int iJ = j();
        int i3 = this.c;
        int i4 = this.d;
        if (iJ >= i3) {
            iJ = i3;
        } else {
            if (iJ == 0) {
                return nn1Var;
            }
            if (i4 > iJ) {
                i4 = iJ;
            }
        }
        int i5 = this.g;
        x24 x24Var = this.l;
        byte[] bArr = this.e;
        x24Var.a(bArr, i5);
        int i6 = this.r;
        int i7 = i6 - x24Var.b[x24Var.f];
        int i8 = i6 - x24Var.c[x24Var.g];
        int i9 = x24Var.d[x24Var.h];
        x24Var.b(i6);
        int i10 = this.p;
        if (i7 < i10) {
            int i11 = this.g;
            if (bArr[i11 - i7] == bArr[i11]) {
                iG = 2;
                iArr3[0] = 2;
                iArr2[0] = i7 - 1;
                nn1Var.a = 1;
            } else {
                iG = 0;
            }
        } else {
            iG = 0;
        }
        if (i7 == i8 || i8 >= i10) {
            i = 0;
        } else {
            int i12 = this.g;
            i = 0;
            if (bArr[i12 - i8] == bArr[i12]) {
                int i13 = nn1Var.a;
                nn1Var.a = i13 + 1;
                iArr2[i13] = i8 - 1;
                i7 = i8;
                iG = 3;
            }
        }
        if (nn1Var.a > 0) {
            iG = rs9.g(bArr, this.g, i7, iG, iJ);
            iArr3[nn1Var.a - 1] = iG;
            if (iG >= i4) {
                k(i4, i9);
                return nn1Var;
            }
        }
        int i14 = iG >= 3 ? iG : 3;
        int i15 = this.q << 1;
        int i16 = i15 + 1;
        int i17 = this.o;
        int i18 = i;
        int i19 = i18;
        while (true) {
            int i20 = this.r - i9;
            int i21 = i17 - 1;
            i2 = i15;
            iArr = this.m;
            if (i17 == 0 || i20 >= i10) {
                break;
            }
            int i22 = this.q;
            int i23 = ((i22 - i20) + (i20 > i22 ? i10 : i)) << 1;
            int iMin = Math.min(i18, i19);
            int i24 = this.g;
            int i25 = i24 + iMin;
            int[] iArr4 = iArr2;
            int[] iArr5 = iArr3;
            if (bArr[i25 - i20] == bArr[i25]) {
                int iG2 = rs9.g(bArr, i24, i20, iMin + 1, iJ);
                if (iG2 > i14) {
                    int i26 = nn1Var.a;
                    iArr5[i26] = iG2;
                    iArr4[i26] = i20 - 1;
                    nn1Var.a = i26 + 1;
                    if (iG2 >= i4) {
                        iArr[i2] = iArr[i23];
                        iArr[i16] = iArr[i23 + 1];
                        return nn1Var;
                    }
                    i14 = iG2;
                    iMin = i14;
                } else {
                    iMin = iG2;
                }
            }
            int i27 = this.g + iMin;
            if ((bArr[i27 - i20] & 255) < (bArr[i27] & 255)) {
                iArr[i2] = i9;
                int i28 = i23 + 1;
                i9 = iArr[i28];
                i15 = i28;
                i19 = iMin;
            } else {
                iArr[i16] = i9;
                i9 = iArr[i23];
                i16 = i23;
                i15 = i2;
                i18 = iMin;
            }
            i17 = i21;
            iArr3 = iArr5;
            iArr2 = iArr4;
        }
        iArr[i16] = i;
        iArr[i2] = i;
        return nn1Var;
    }

    @Override // defpackage.aq4
    public final void h(v40 v40Var) {
        v40Var.d(this.m);
        x24 x24Var = this.l;
        v40Var.d(x24Var.d);
        v40Var.d(x24Var.c);
        v40Var.d(x24Var.b);
        v40Var.c(this.e);
    }

    @Override // defpackage.aq4
    public final void i(int i) {
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                return;
            }
            int iJ = j();
            int i3 = this.d;
            if (iJ < i3) {
                if (iJ == 0) {
                }
                i = i2;
            } else {
                iJ = i3;
            }
            byte[] bArr = this.e;
            int i4 = this.g;
            x24 x24Var = this.l;
            x24Var.a(bArr, i4);
            int i5 = x24Var.d[x24Var.h];
            x24Var.b(this.r);
            k(iJ, i5);
            i = i2;
        }
    }

    public final int j() {
        int iE = e(this.d);
        if (iE != 0) {
            int i = this.r + 1;
            this.r = i;
            int i2 = this.p;
            if (i == Integer.MAX_VALUE) {
                int i3 = Integer.MAX_VALUE - i2;
                x24 x24Var = this.l;
                aq4.f(1024, i3, x24Var.b);
                aq4.f(65536, i3, x24Var.c);
                aq4.f(x24Var.e, i3, x24Var.d);
                aq4.f(i2 * 2, i3, this.m);
                this.r -= i3;
            }
            int i4 = this.q + 1;
            this.q = i4;
            if (i4 == i2) {
                this.q = 0;
            }
        }
        return iE;
    }

    public final void k(int i, int i2) {
        int[] iArr;
        int i3;
        int i4 = this.q;
        int i5 = this.o;
        int i6 = 0;
        int i7 = 0;
        int i8 = (i4 << 1) + 1;
        int i9 = i4 << 1;
        int i10 = i2;
        while (true) {
            int i11 = this.r - i10;
            int i12 = i5 - 1;
            iArr = this.m;
            if (i5 == 0 || i11 >= (i3 = this.p)) {
                break;
            }
            int i13 = this.q;
            int i14 = i13 - i11;
            if (i11 <= i13) {
                i3 = 0;
            }
            int i15 = (i14 + i3) << 1;
            int iMin = Math.min(i6, i7);
            int i16 = this.g;
            byte[] bArr = this.e;
            if (bArr[(i16 + iMin) - i11] == bArr[i16 + iMin] && (iMin = rs9.g(bArr, i16, i11, iMin + 1, i)) == i) {
                iArr[i9] = iArr[i15];
                iArr[i8] = iArr[i15 + 1];
                return;
            }
            int i17 = this.g;
            if ((bArr[(i17 + iMin) - i11] & 255) < (bArr[i17 + iMin] & 255)) {
                iArr[i9] = i10;
                int i18 = i15 + 1;
                i10 = iArr[i18];
                i9 = i18;
                i7 = iMin;
            } else {
                iArr[i8] = i10;
                i10 = iArr[i15];
                i8 = i15;
                i6 = iMin;
            }
            i5 = i12;
        }
        iArr[i8] = 0;
        iArr[i9] = 0;
    }
}
