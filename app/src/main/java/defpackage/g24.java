package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class g24 extends aq4 {
    public final x24 l;
    public final int[] m;
    public final nn1 n;
    public final int o;
    public final int p;
    public int q;
    public int r;

    public g24(int i, int i2, int i3, int i4, int i5, v40 v40Var) {
        super(i, i2, i3, i4, v40Var);
        this.q = -1;
        this.l = new x24(i, v40Var);
        int i6 = i + 1;
        this.p = i6;
        this.m = v40Var.b(i6, false);
        this.r = i6;
        this.n = new nn1(i4 - 1);
        this.o = i5 <= 0 ? (i4 / 4) + 4 : i5;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0065  */
    /* JADX WARN: Code duplicated, block: B:27:0x0099 A[DONT_INVERT, PHI: r14
      0x0099: PHI (r14v3 int) = (r14v2 int), (r14v9 int) binds: [B:23:0x0088, B:25:0x0096] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:29:0x009c  */
    @Override // defpackage.aq4
    public final nn1 d() {
        int iG;
        int i;
        int i2;
        int i3;
        nn1 nn1Var = this.n;
        nn1Var.a = 0;
        int[] iArr = (int[]) nn1Var.c;
        int[] iArr2 = (int[]) nn1Var.b;
        int iJ = j();
        int i4 = this.c;
        int i5 = this.d;
        if (iJ < i4) {
            if (iJ != 0) {
                if (i5 > iJ) {
                    i5 = iJ;
                }
            }
            return nn1Var;
        }
        iJ = i4;
        int i6 = this.g;
        x24 x24Var = this.l;
        byte[] bArr = this.e;
        x24Var.a(bArr, i6);
        int i7 = this.r;
        int i8 = i7 - x24Var.b[x24Var.f];
        int i9 = i7 - x24Var.c[x24Var.g];
        int i10 = x24Var.d[x24Var.h];
        x24Var.b(i7);
        int i11 = this.q;
        int[] iArr3 = this.m;
        iArr3[i11] = i10;
        int i12 = this.p;
        if (i8 < i12) {
            int i13 = this.g;
            if (bArr[i13 - i8] == bArr[i13]) {
                iG = 2;
                iArr2[0] = 2;
                iArr[0] = i8 - 1;
                nn1Var.a = 1;
            } else {
                iG = 0;
            }
        } else {
            iG = 0;
        }
        if (i8 == i9 || i9 >= i12) {
            i = 1;
        } else {
            int i14 = this.g;
            i = 1;
            if (bArr[i14 - i9] == bArr[i14]) {
                int i15 = nn1Var.a;
                nn1Var.a = i15 + 1;
                iArr[i15] = i9 - 1;
                i8 = i9;
                iG = 3;
            }
        }
        if (nn1Var.a > 0) {
            iG = rs9.g(bArr, this.g, i8, iG, iJ);
            iArr2[nn1Var.a - 1] = iG;
            if (iG < i5) {
                int i16 = iG >= 3 ? iG : 3;
                i2 = this.o;
                while (true) {
                    int i17 = this.r - i10;
                    int i18 = i2 - 1;
                    if (i2 == 0 || i17 >= i12) {
                        break;
                    }
                    int i19 = this.q;
                    i10 = iArr3[(i19 - i17) + (i17 > i19 ? i12 : 0)];
                    int i20 = this.g;
                    int i21 = i20 + i16;
                    if (bArr[i21 - i17] == bArr[i21] && bArr[i20 - i17] == bArr[i20]) {
                        i3 = i;
                        int iG2 = rs9.g(bArr, i20, i17, i3, iJ);
                        if (iG2 > i16) {
                            int i22 = nn1Var.a;
                            iArr2[i22] = iG2;
                            iArr[i22] = i17 - 1;
                            nn1Var.a = i22 + i3;
                            if (iG2 >= i5) {
                                break;
                            }
                            i16 = iG2;
                        } else {
                            continue;
                        }
                    } else {
                        i3 = i;
                    }
                    i2 = i18;
                    i = i3;
                }
            }
        } else {
            if (iG >= 3) {
            }
            i2 = this.o;
            while (true) {
                int i110 = this.r - i10;
                int i111 = i2 - 1;
                if (i2 == 0) {
                    break;
                }
                break;
                break;
                i2 = i111;
                i = i3;
            }
        }
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
            if (j() != 0) {
                byte[] bArr = this.e;
                int i3 = this.g;
                x24 x24Var = this.l;
                x24Var.a(bArr, i3);
                this.m[this.q] = x24Var.d[x24Var.h];
                x24Var.b(this.r);
            }
            i = i2;
        }
    }

    public final int j() {
        int iE = e(4);
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
                aq4.f(i2, i3, this.m);
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
}
