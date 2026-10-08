package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class h74 extends od2 {
    public boolean i;
    public final int j;
    public final g74 k;
    public final g74 l;
    public int m;
    public byte[] n = wx3.a;
    public int o;
    public final /* synthetic */ k74 p;

    public h74(k74 k74Var, int i, int[] iArr, int[] iArr2) {
        this.p = k74Var;
        this.j = i;
        this.k = k74.a(iArr);
        this.l = k74.a(iArr2);
    }

    @Override // defpackage.od2
    public final int b() {
        return this.o - this.m;
    }

    @Override // defpackage.od2
    public final boolean n() {
        return !this.i;
    }

    @Override // defpackage.od2
    public final int v(byte[] bArr, int i, int i2) {
        int iMin;
        int i3;
        int iMin2;
        int i4;
        int i5 = 0;
        if (i2 == 0) {
            return 0;
        }
        if (this.i) {
            return -1;
        }
        int i6 = this.o - this.m;
        if (i6 > 0) {
            iMin = Math.min(i2, i6);
            System.arraycopy(this.n, this.m, bArr, i, iMin);
            this.m += iMin;
        } else {
            iMin = 0;
        }
        while (iMin < i2) {
            k74 k74Var = this.p;
            gr0 gr0Var = k74Var.c;
            b3 b3Var = k74Var.e;
            byte[] bArr2 = (byte[]) b3Var.c;
            int iG = k74.g(gr0Var, this.k);
            int i7 = 65535;
            if (iG >= 256) {
                if (iG <= 256) {
                    this.i = true;
                    break;
                }
                short s = k74.f[iG - 257];
                int iF = bb9.f(s >>> 5, k74.h(k74Var.c, s & 31));
                int i8 = k74.k[k74.g(k74Var.c, this.l)];
                int iF2 = bb9.f(i8 >>> 4, k74.h(k74Var.c, i8 & 15));
                if (this.n.length < iF) {
                    this.n = new byte[iF];
                }
                this.o = iF;
                this.m = i5;
                byte[] bArr3 = this.n;
                if (iF2 > bArr2.length) {
                    int i9 = i5;
                    l0.e(fz5.j(iF2, "Illegal distance parameter: "));
                    return i9;
                }
                int i10 = b3Var.a;
                int i11 = (i10 - iF2) & 65535;
                if (!b3Var.b && i11 >= i10) {
                    l0.e(fz5.j(iF2, "Attempt to read beyond memory: dist="));
                    return i5;
                }
                int i12 = i5;
                while (i12 < iF) {
                    byte b = bArr2[i11];
                    int i13 = b3Var.a;
                    bArr2[i13] = b;
                    int i14 = i5;
                    int i15 = (i13 + 1) & i7;
                    int i16 = i7;
                    if (!b3Var.b && i15 < i13) {
                        b3Var.b = true;
                    }
                    b3Var.a = i15;
                    bArr3[i12] = b;
                    i12++;
                    int i17 = (i11 + 1) & i16;
                    if (!b3Var.b && i17 < i11) {
                        b3Var.b = true;
                    }
                    i11 = i17;
                    i7 = i16;
                    i5 = i14;
                }
                i3 = i5;
                int i18 = i + iMin;
                int i19 = i2 - iMin;
                int i20 = this.o - this.m;
                if (i20 > 0) {
                    iMin2 = Math.min(i19, i20);
                    System.arraycopy(this.n, this.m, bArr, i18, iMin2);
                    this.m += iMin2;
                } else {
                    iMin2 = i3;
                }
                i4 = iMin2 + iMin;
            } else {
                i4 = iMin + 1;
                int i21 = iMin + i;
                byte b2 = (byte) iG;
                int i22 = b3Var.a;
                bArr2[i22] = b2;
                int i23 = (i22 + 1) & 65535;
                if (!b3Var.b && i23 < i22) {
                    b3Var.b = true;
                }
                b3Var.a = i23;
                bArr[i21] = b2;
                i3 = i5;
            }
            iMin = i4;
            i5 = i3;
        }
        return iMin;
    }

    @Override // defpackage.od2
    public final int y() {
        if (this.i) {
            return 1;
        }
        return this.j;
    }
}
