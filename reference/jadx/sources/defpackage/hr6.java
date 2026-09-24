package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class hr6 extends uu3 implements jx6 {
    public static final int[] o = {1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998};
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int[] m;
    public int n;

    public hr6() {
        super(b42.a);
        this.m = new int[64];
        zh8.r(this);
        e42.a();
        reset();
    }

    public static int j(int i, int i2, int i3) {
        return ((~i) & i3) ^ (i2 & i);
    }

    public static int k(int i, int i2, int i3) {
        return ((i ^ i2) & i3) | (i & i2);
    }

    public static int l(int i) {
        return ((i << 10) | (i >>> 22)) ^ (((i >>> 2) | (i << 30)) ^ ((i >>> 13) | (i << 19)));
    }

    public static int m(int i) {
        return ((i << 7) | (i >>> 25)) ^ (((i >>> 6) | (i << 26)) ^ ((i >>> 11) | (i << 21)));
    }

    @Override // defpackage.xb5
    public final void b(xb5 xb5Var) {
        n((hr6) xb5Var);
    }

    @Override // defpackage.hl2
    public final int c() {
        return 32;
    }

    @Override // defpackage.xb5
    public final xb5 copy() {
        hr6 hr6Var = new hr6(this);
        hr6Var.m = new int[64];
        hr6Var.n(this);
        return hr6Var;
    }

    @Override // defpackage.hl2
    public final int doFinal(byte[] bArr, int i) {
        e();
        xx3.n(bArr, this.e, i);
        xx3.n(bArr, this.f, i + 4);
        xx3.n(bArr, this.g, i + 8);
        xx3.n(bArr, this.h, i + 12);
        xx3.n(bArr, this.i, i + 16);
        xx3.n(bArr, this.j, i + 20);
        xx3.n(bArr, this.k, i + 24);
        xx3.n(bArr, this.l, i + 28);
        reset();
        return 32;
    }

    @Override // defpackage.hl2
    public final String f() {
        return "SHA-256";
    }

    @Override // defpackage.uu3
    public final void g() {
        int[] iArr = this.m;
        for (int i = 16; i <= 63; i++) {
            int i2 = iArr[i - 2];
            int i3 = ((i2 >>> 10) ^ (((i2 >>> 17) | (i2 << 15)) ^ ((i2 >>> 19) | (i2 << 13)))) + iArr[i - 7];
            int i4 = iArr[i - 15];
            iArr[i] = i3 + ((i4 >>> 3) ^ (((i4 >>> 7) | (i4 << 25)) ^ ((i4 >>> 18) | (i4 << 14)))) + iArr[i - 16];
        }
        int iK = this.e;
        int iK2 = this.f;
        int iK3 = this.g;
        int iK4 = this.h;
        int i5 = this.i;
        int i6 = this.j;
        int i7 = this.k;
        int i8 = this.l;
        int i9 = 0;
        for (int i10 = 0; i10 < 8; i10++) {
            int iJ = j(i5, i6, i7) + m(i5);
            int[] iArr2 = o;
            int i11 = iJ + iArr2[i9] + iArr[i9] + i8;
            int i12 = iK4 + i11;
            int iK5 = k(iK, iK2, iK3) + l(iK) + i11;
            int i13 = i9 + 1;
            int iJ2 = j(i12, i5, i6) + m(i12) + iArr2[i13] + iArr[i13] + i7;
            int i14 = iK3 + iJ2;
            int iK6 = k(iK5, iK, iK2) + l(iK5) + iJ2;
            int i15 = i9 + 2;
            int iJ3 = j(i14, i12, i5) + m(i14) + iArr2[i15] + iArr[i15] + i6;
            int i16 = iK2 + iJ3;
            int iK7 = k(iK6, iK5, iK) + l(iK6) + iJ3;
            int i17 = i9 + 3;
            int iJ4 = j(i16, i14, i12) + m(i16) + iArr2[i17] + iArr[i17] + i5;
            int i18 = iK + iJ4;
            int iK8 = k(iK7, iK6, iK5) + l(iK7) + iJ4;
            int i19 = i9 + 4;
            int iJ5 = j(i18, i16, i14) + m(i18) + iArr2[i19] + iArr[i19] + i12;
            i8 = iK5 + iJ5;
            iK4 = k(iK8, iK7, iK6) + l(iK8) + iJ5;
            int i20 = i9 + 5;
            int iJ6 = j(i8, i18, i16) + m(i8) + iArr2[i20] + iArr[i20] + i14;
            i7 = iK6 + iJ6;
            iK3 = k(iK4, iK8, iK7) + l(iK4) + iJ6;
            int i21 = i9 + 6;
            int iJ7 = j(i7, i8, i18) + m(i7) + iArr2[i21] + iArr[i21] + i16;
            i6 = iK7 + iJ7;
            iK2 = k(iK3, iK4, iK8) + l(iK3) + iJ7;
            int i22 = i9 + 7;
            int iJ8 = j(i6, i7, i8) + m(i6) + iArr2[i22] + iArr[i22] + i18;
            i5 = iK8 + iJ8;
            iK = k(iK2, iK3, iK4) + l(iK2) + iJ8;
            i9 += 8;
        }
        this.e += iK;
        this.f += iK2;
        this.g += iK3;
        this.h += iK4;
        this.i += i5;
        this.j += i6;
        this.k += i7;
        this.l += i8;
        this.n = 0;
        for (int i23 = 0; i23 < 16; i23++) {
            iArr[i23] = 0;
        }
    }

    @Override // defpackage.uu3
    public final void h(long j) {
        if (this.n > 14) {
            g();
        }
        int[] iArr = this.m;
        iArr[14] = (int) (j >>> 32);
        iArr[15] = (int) j;
    }

    @Override // defpackage.uu3
    public final void i(byte[] bArr, int i) {
        this.m[this.n] = xx3.a(bArr, i);
        int i2 = this.n + 1;
        this.n = i2;
        if (i2 == 16) {
            g();
        }
    }

    public final void n(hr6 hr6Var) {
        d(hr6Var);
        this.e = hr6Var.e;
        this.f = hr6Var.f;
        this.g = hr6Var.g;
        this.h = hr6Var.h;
        this.i = hr6Var.i;
        this.j = hr6Var.j;
        this.k = hr6Var.k;
        this.l = hr6Var.l;
        int[] iArr = hr6Var.m;
        System.arraycopy(iArr, 0, this.m, 0, iArr.length);
        this.n = hr6Var.n;
    }

    @Override // defpackage.uu3, defpackage.hl2
    public final void reset() {
        super.reset();
        this.e = 1779033703;
        this.f = -1150833019;
        this.g = 1013904242;
        this.h = -1521486534;
        this.i = 1359893119;
        this.j = -1694144372;
        this.k = 528734635;
        this.l = 1541459225;
        this.n = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.m;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }
}
