package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class w35 extends uu3 {
    public int e;
    public int f;
    public int g;
    public int h;
    public int[] i;
    public int j;

    public w35() {
        super(b42.a);
        this.i = new int[16];
        zh8.r(this);
        e42.a();
        reset();
    }

    public static int j(int i, int i2, int i3) {
        return ((~i) & i3) | (i2 & i);
    }

    public static int k(int i, int i2, int i3) {
        return (i & (i2 | i3)) | (i2 & i3);
    }

    public static int m(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    @Override // defpackage.xb5
    public final void b(xb5 xb5Var) {
        l((w35) xb5Var);
    }

    @Override // defpackage.hl2
    public final int c() {
        return 16;
    }

    @Override // defpackage.xb5
    public final xb5 copy() {
        w35 w35Var = new w35(this.a);
        w35Var.i = new int[16];
        zh8.r(w35Var);
        e42.a();
        w35Var.l(this);
        return w35Var;
    }

    @Override // defpackage.hl2
    public final int doFinal(byte[] bArr, int i) {
        e();
        xx3.o(bArr, this.e, i);
        xx3.o(bArr, this.f, i + 4);
        xx3.o(bArr, this.g, i + 8);
        xx3.o(bArr, this.h, i + 12);
        reset();
        return 16;
    }

    @Override // defpackage.hl2
    public final String f() {
        return "MD4";
    }

    @Override // defpackage.uu3
    public final void g() {
        int i = this.e;
        int i2 = this.f;
        int i3 = this.g;
        int i4 = this.h;
        int iJ = j(i2, i3, i4) + i;
        int[] iArr = this.i;
        int iM = m(iJ + iArr[0], 3);
        int iM2 = m(j(iM, i2, i3) + i4 + iArr[1], 7);
        int iM3 = m(j(iM2, iM, i2) + i3 + iArr[2], 11);
        int iM4 = m(j(iM3, iM2, iM) + i2 + iArr[3], 19);
        int iM5 = m(j(iM4, iM3, iM2) + iM + iArr[4], 3);
        int iM6 = m(j(iM5, iM4, iM3) + iM2 + iArr[5], 7);
        int iM7 = m(j(iM6, iM5, iM4) + iM3 + iArr[6], 11);
        int iM8 = m(j(iM7, iM6, iM5) + iM4 + iArr[7], 19);
        int iM9 = m(j(iM8, iM7, iM6) + iM5 + iArr[8], 3);
        int iM10 = m(j(iM9, iM8, iM7) + iM6 + iArr[9], 7);
        int iM11 = m(j(iM10, iM9, iM8) + iM7 + iArr[10], 11);
        int iM12 = m(j(iM11, iM10, iM9) + iM8 + iArr[11], 19);
        int iM13 = m(j(iM12, iM11, iM10) + iM9 + iArr[12], 3);
        int iM14 = m(j(iM13, iM12, iM11) + iM10 + iArr[13], 7);
        int iM15 = m(j(iM14, iM13, iM12) + iM11 + iArr[14], 11);
        int iM16 = m(j(iM15, iM14, iM13) + iM12 + iArr[15], 19);
        int iE = eq3.e(k(iM16, iM15, iM14) + iM13, iArr[0], 1518500249, 3);
        int iE2 = eq3.e(k(iE, iM16, iM15) + iM14, iArr[4], 1518500249, 5);
        int iE3 = eq3.e(k(iE2, iE, iM16) + iM15, iArr[8], 1518500249, 9);
        int iE4 = eq3.e(k(iE3, iE2, iE) + iM16, iArr[12], 1518500249, 13);
        int iE5 = eq3.e(k(iE4, iE3, iE2) + iE, iArr[1], 1518500249, 3);
        int iE6 = eq3.e(k(iE5, iE4, iE3) + iE2, iArr[5], 1518500249, 5);
        int iE7 = eq3.e(k(iE6, iE5, iE4) + iE3, iArr[9], 1518500249, 9);
        int iE8 = eq3.e(k(iE7, iE6, iE5) + iE4, iArr[13], 1518500249, 13);
        int iE9 = eq3.e(k(iE8, iE7, iE6) + iE5, iArr[2], 1518500249, 3);
        int iE10 = eq3.e(k(iE9, iE8, iE7) + iE6, iArr[6], 1518500249, 5);
        int iE11 = eq3.e(k(iE10, iE9, iE8) + iE7, iArr[10], 1518500249, 9);
        int iE12 = eq3.e(k(iE11, iE10, iE9) + iE8, iArr[14], 1518500249, 13);
        int iE13 = eq3.e(k(iE12, iE11, iE10) + iE9, iArr[3], 1518500249, 3);
        int iE14 = eq3.e(k(iE13, iE12, iE11) + iE10, iArr[7], 1518500249, 5);
        int iE15 = eq3.e(k(iE14, iE13, iE12) + iE11, iArr[11], 1518500249, 9);
        int iE16 = eq3.e(k(iE15, iE14, iE13) + iE12, iArr[15], 1518500249, 13);
        int iE17 = eq3.e(iE13 + ((iE16 ^ iE15) ^ iE14), iArr[0], 1859775393, 3);
        int iE18 = eq3.e(iE14 + ((iE17 ^ iE16) ^ iE15), iArr[8], 1859775393, 9);
        int iE19 = eq3.e(iE15 + ((iE18 ^ iE17) ^ iE16), iArr[4], 1859775393, 11);
        int iE20 = eq3.e(iE16 + ((iE19 ^ iE18) ^ iE17), iArr[12], 1859775393, 15);
        int iE21 = eq3.e(iE17 + ((iE20 ^ iE19) ^ iE18), iArr[2], 1859775393, 3);
        int iE22 = eq3.e(iE18 + ((iE21 ^ iE20) ^ iE19), iArr[10], 1859775393, 9);
        int iE23 = eq3.e(iE19 + ((iE22 ^ iE21) ^ iE20), iArr[6], 1859775393, 11);
        int iE24 = eq3.e(iE20 + ((iE23 ^ iE22) ^ iE21), iArr[14], 1859775393, 15);
        int iE25 = eq3.e(iE21 + ((iE24 ^ iE23) ^ iE22), iArr[1], 1859775393, 3);
        int iE26 = eq3.e(iE22 + ((iE25 ^ iE24) ^ iE23), iArr[9], 1859775393, 9);
        int iE27 = eq3.e(iE23 + ((iE26 ^ iE25) ^ iE24), iArr[5], 1859775393, 11);
        int iE28 = eq3.e(iE24 + ((iE27 ^ iE26) ^ iE25), iArr[13], 1859775393, 15);
        int iE29 = eq3.e(iE25 + ((iE28 ^ iE27) ^ iE26), iArr[3], 1859775393, 3);
        int iE30 = eq3.e(iE26 + ((iE29 ^ iE28) ^ iE27), iArr[11], 1859775393, 9);
        int iE31 = eq3.e(iE27 + ((iE30 ^ iE29) ^ iE28), iArr[7], 1859775393, 11);
        int iE32 = eq3.e(iE28 + ((iE31 ^ iE30) ^ iE29), iArr[15], 1859775393, 15);
        this.e += iE29;
        this.f += iE32;
        this.g += iE31;
        this.h += iE30;
        this.j = 0;
        for (int i5 = 0; i5 != iArr.length; i5++) {
            iArr[i5] = 0;
        }
    }

    @Override // defpackage.uu3
    public final void h(long j) {
        if (this.j > 14) {
            g();
        }
        int[] iArr = this.i;
        iArr[14] = (int) j;
        iArr[15] = (int) (j >>> 32);
    }

    @Override // defpackage.uu3
    public final void i(byte[] bArr, int i) {
        int[] iArr = this.i;
        int i2 = this.j;
        this.j = i2 + 1;
        iArr[i2] = xx3.r(bArr, i);
        if (this.j == 16) {
            g();
        }
    }

    public final void l(w35 w35Var) {
        d(w35Var);
        this.e = w35Var.e;
        this.f = w35Var.f;
        this.g = w35Var.g;
        this.h = w35Var.h;
        int[] iArr = w35Var.i;
        System.arraycopy(iArr, 0, this.i, 0, iArr.length);
        this.j = w35Var.j;
    }

    @Override // defpackage.uu3, defpackage.hl2
    public final void reset() {
        super.reset();
        this.e = 1732584193;
        this.f = -271733879;
        this.g = -1732584194;
        this.h = 271733878;
        this.j = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.i;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }
}
