package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rf0 {
    public final sn4 a;

    public rf0(sn4 sn4Var) {
        this.a = sn4Var;
    }

    public final void a(byte[] bArr) {
        sn4 sn4Var = this.a;
        byte[] bArr2 = sn4Var.h;
        int i = sn4Var.b;
        int i2 = sn4Var.g;
        int i3 = i2 + 16;
        if (i3 < 0 || i3 >= sn4Var.e) {
            throw new ua2(xs1.m(new StringBuilder("Current KDFCTR may only be used for "), sn4Var.e, " bytes"));
        }
        if (i2 % i == 0) {
            sn4Var.a();
        }
        int i4 = sn4Var.g % i;
        int iMin = Math.min(i - i4, 16);
        System.arraycopy(bArr2, i4, bArr, 0, iMin);
        sn4Var.g += iMin;
        int i5 = 16 - iMin;
        while (i5 > 0) {
            sn4Var.a();
            int iMin2 = Math.min(i, i5);
            System.arraycopy(bArr2, 0, bArr, iMin, iMin2);
            sn4Var.g += iMin2;
            i5 -= iMin2;
            iMin += iMin2;
        }
    }

    public final void b(ey1 ey1Var) {
        byte[] bArr = ey1Var.a;
        byte[] bArr2 = ey1Var.b;
        int i = ey1Var.c;
        if (bArr == null) {
            c6.f("A KDF requires Ki (a seed) as input");
            return;
        }
        byte[] bArrK = ms8.k(bArr);
        byte[] bArr3 = new byte[0];
        byte[] bArrK2 = bArr2 == null ? new byte[0] : ms8.k(bArr2);
        if (i != 8 && i != 16 && i != 24 && i != 32) {
            c6.f("Length of counter should be 8, 16, 24 or 32");
            return;
        }
        sn4 sn4Var = this.a;
        int i2 = sn4Var.b;
        sn4Var.a.c(new oo4(bArrK, bArrK.length));
        sn4Var.c = ms8.k(bArr3);
        sn4Var.d = ms8.k(bArrK2);
        sn4Var.f = new byte[i / 8];
        sn4Var.e = i >= Integer.numberOfLeadingZeros(i2) ? Integer.MAX_VALUE : i2 << i;
        sn4Var.g = 0;
    }
}
