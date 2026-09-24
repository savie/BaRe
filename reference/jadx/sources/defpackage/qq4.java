package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qq4 extends pq4 {
    public nn1 B;

    @Override // defpackage.pq4
    public final int k() {
        int i;
        int i2;
        int i3;
        if (this.z == -1) {
            this.B = j();
        }
        this.y = -1;
        aq4 aq4Var = this.n;
        int i4 = aq4Var.j;
        byte[] bArr = aq4Var.e;
        int iMin = Math.min(i4 - aq4Var.g, 273);
        int i5 = 1;
        if (iMin < 2) {
            return 1;
        }
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = this.r;
            int[] iArr = this.b;
            if (i6 >= 4) {
                nn1 nn1Var = this.B;
                int i10 = nn1Var.a;
                if (i10 > 0) {
                    int i11 = i10 - 1;
                    i3 = ((int[]) nn1Var.b)[i11];
                    i2 = ((int[]) nn1Var.c)[i11];
                    if (i3 >= i9) {
                        this.y = i2 + 4;
                        l(i3 - 1);
                        return i3;
                    }
                    while (true) {
                        nn1 nn1Var2 = this.B;
                        int i12 = nn1Var2.a;
                        if (i12 <= i5) {
                            i = i5;
                            break;
                        }
                        int[] iArr2 = (int[]) nn1Var2.b;
                        int i13 = i12 - 2;
                        i = i5;
                        if (i3 != iArr2[i13] + 1) {
                            break;
                        }
                        int[] iArr3 = (int[]) nn1Var2.c;
                        if (iArr3[i13] >= (i2 >>> 7)) {
                            break;
                        }
                        nn1Var2.a = i12 - 1;
                        int i14 = i12 - 2;
                        i3 = iArr2[i14];
                        i2 = iArr3[i14];
                        i5 = i;
                    }
                    if (i3 == 2 && i2 >= 128) {
                        i3 = i;
                    }
                } else {
                    i = 1;
                    i2 = 0;
                    i3 = 0;
                }
                if (i7 >= 2 && (i7 + 1 >= i3 || ((i7 + 2 >= i3 && i2 >= 512) || (i7 + 3 >= i3 && i2 >= 32768)))) {
                    this.y = i8;
                    l(i7 - 1);
                    return i7;
                }
                if (i3 < 2 || iMin <= 2) {
                    return i;
                }
                nn1 nn1VarJ = j();
                this.B = nn1VarJ;
                int i15 = nn1VarJ.a;
                if (i15 > 0) {
                    int i16 = i15 - 1;
                    int i17 = ((int[]) nn1VarJ.b)[i16];
                    int i18 = ((int[]) nn1VarJ.c)[i16];
                    if (i17 >= i3 && i18 < i2) {
                        return i;
                    }
                    int i19 = i3 + 1;
                    if ((i17 == i19 && i2 >= (i18 >>> 7)) || i17 > i19) {
                        return i;
                    }
                    if (i17 + 1 >= i3 && i3 >= 3 && i18 < (i2 >>> 7)) {
                        return i;
                    }
                }
                int iMax = Math.max(i3 - 1, 2);
                for (int i20 = 0; i20 < 4; i20++) {
                    if (rs9.g(bArr, aq4Var.g, iArr[i20] + 1, 0, iMax) == iMax) {
                        return i;
                    }
                }
                this.y = i2 + 4;
                l(i3 - 2);
                return i3;
            }
            int iG = rs9.g(bArr, aq4Var.g, iArr[i6] + 1, 0, iMin);
            if (iG >= 2) {
                if (iG >= i9) {
                    this.y = i6;
                    l(iG - 1);
                    return iG;
                }
                if (iG > i7) {
                    i8 = i6;
                    i7 = iG;
                }
            }
            i6++;
        }
    }
}
