package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class x35 extends uu3 {
    public int e;
    public int f;
    public int g;
    public int h;
    public int[] i;
    public int j;

    public x35() {
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
        return (i & i3) | (i2 & (~i3));
    }

    @Override // defpackage.xb5
    public final void b(xb5 xb5Var) {
        l((x35) xb5Var);
    }

    @Override // defpackage.hl2
    public final int c() {
        return 16;
    }

    @Override // defpackage.xb5
    public final xb5 copy() {
        x35 x35Var = new x35(this);
        x35Var.i = new int[16];
        x35Var.l(this);
        return x35Var;
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
        return "MD5";
    }

    @Override // defpackage.uu3
    public final void g() {
        int i = this.e;
        int i2 = this.f;
        int i3 = this.g;
        int i4 = this.h;
        int iJ = j(i2, i3, i4) + i;
        int[] iArr = this.i;
        int iF = eq3.f(iJ, iArr[0], -680876936, 7, i2);
        int iF2 = eq3.f(j(iF, i2, i3) + i4, iArr[1], -389564586, 12, iF);
        int iF3 = eq3.f(j(iF2, iF, i2) + i3, iArr[2], 606105819, 17, iF2);
        int iF4 = eq3.f(j(iF3, iF2, iF) + i2, iArr[3], -1044525330, 22, iF3);
        int iF5 = eq3.f(j(iF4, iF3, iF2) + iF, iArr[4], -176418897, 7, iF4);
        int iF6 = eq3.f(j(iF5, iF4, iF3) + iF2, iArr[5], 1200080426, 12, iF5);
        int iF7 = eq3.f(j(iF6, iF5, iF4) + iF3, iArr[6], -1473231341, 17, iF6);
        int iF8 = eq3.f(j(iF7, iF6, iF5) + iF4, iArr[7], -45705983, 22, iF7);
        int iF9 = eq3.f(j(iF8, iF7, iF6) + iF5, iArr[8], 1770035416, 7, iF8);
        int iF10 = eq3.f(j(iF9, iF8, iF7) + iF6, iArr[9], -1958414417, 12, iF9);
        int iF11 = eq3.f(j(iF10, iF9, iF8) + iF7, iArr[10], -42063, 17, iF10);
        int iF12 = eq3.f(j(iF11, iF10, iF9) + iF8, iArr[11], -1990404162, 22, iF11);
        int iF13 = eq3.f(j(iF12, iF11, iF10) + iF9, iArr[12], 1804603682, 7, iF12);
        int iF14 = eq3.f(j(iF13, iF12, iF11) + iF10, iArr[13], -40341101, 12, iF13);
        int iF15 = eq3.f(j(iF14, iF13, iF12) + iF11, iArr[14], -1502002290, 17, iF14);
        int iF16 = eq3.f(j(iF15, iF14, iF13) + iF12, iArr[15], 1236535329, 22, iF15);
        int iF17 = eq3.f(k(iF16, iF15, iF14) + iF13, iArr[1], -165796510, 5, iF16);
        int iF18 = eq3.f(k(iF17, iF16, iF15) + iF14, iArr[6], -1069501632, 9, iF17);
        int iF19 = eq3.f(k(iF18, iF17, iF16) + iF15, iArr[11], 643717713, 14, iF18);
        int iF20 = eq3.f(k(iF19, iF18, iF17) + iF16, iArr[0], -373897302, 20, iF19);
        int iF21 = eq3.f(k(iF20, iF19, iF18) + iF17, iArr[5], -701558691, 5, iF20);
        int iF22 = eq3.f(k(iF21, iF20, iF19) + iF18, iArr[10], 38016083, 9, iF21);
        int iF23 = eq3.f(k(iF22, iF21, iF20) + iF19, iArr[15], -660478335, 14, iF22);
        int iF24 = eq3.f(k(iF23, iF22, iF21) + iF20, iArr[4], -405537848, 20, iF23);
        int iF25 = eq3.f(k(iF24, iF23, iF22) + iF21, iArr[9], 568446438, 5, iF24);
        int iF26 = eq3.f(k(iF25, iF24, iF23) + iF22, iArr[14], -1019803690, 9, iF25);
        int iF27 = eq3.f(k(iF26, iF25, iF24) + iF23, iArr[3], -187363961, 14, iF26);
        int iF28 = eq3.f(k(iF27, iF26, iF25) + iF24, iArr[8], 1163531501, 20, iF27);
        int iF29 = eq3.f(k(iF28, iF27, iF26) + iF25, iArr[13], -1444681467, 5, iF28);
        int iF30 = eq3.f(k(iF29, iF28, iF27) + iF26, iArr[2], -51403784, 9, iF29);
        int iF31 = eq3.f(k(iF30, iF29, iF28) + iF27, iArr[7], 1735328473, 14, iF30);
        int iF32 = eq3.f(k(iF31, iF30, iF29) + iF28, iArr[12], -1926607734, 20, iF31);
        int iF33 = eq3.f(iF29 + ((iF32 ^ iF31) ^ iF30), iArr[5], -378558, 4, iF32);
        int iF34 = eq3.f(iF30 + ((iF33 ^ iF32) ^ iF31), iArr[8], -2022574463, 11, iF33);
        int iF35 = eq3.f(iF31 + ((iF34 ^ iF33) ^ iF32), iArr[11], 1839030562, 16, iF34);
        int iF36 = eq3.f(iF32 + ((iF35 ^ iF34) ^ iF33), iArr[14], -35309556, 23, iF35);
        int iF37 = eq3.f(iF33 + ((iF36 ^ iF35) ^ iF34), iArr[1], -1530992060, 4, iF36);
        int iF38 = eq3.f(iF34 + ((iF37 ^ iF36) ^ iF35), iArr[4], 1272893353, 11, iF37);
        int iF39 = eq3.f(iF35 + ((iF38 ^ iF37) ^ iF36), iArr[7], -155497632, 16, iF38);
        int iF40 = eq3.f(iF36 + ((iF39 ^ iF38) ^ iF37), iArr[10], -1094730640, 23, iF39);
        int iF41 = eq3.f(iF37 + ((iF40 ^ iF39) ^ iF38), iArr[13], 681279174, 4, iF40);
        int iF42 = eq3.f(iF38 + ((iF41 ^ iF40) ^ iF39), iArr[0], -358537222, 11, iF41);
        int iF43 = eq3.f(iF39 + ((iF42 ^ iF41) ^ iF40), iArr[3], -722521979, 16, iF42);
        int iF44 = eq3.f(iF40 + ((iF43 ^ iF42) ^ iF41), iArr[6], 76029189, 23, iF43);
        int iF45 = eq3.f(iF41 + ((iF44 ^ iF43) ^ iF42), iArr[9], -640364487, 4, iF44);
        int iF46 = eq3.f(iF42 + ((iF45 ^ iF44) ^ iF43), iArr[12], -421815835, 11, iF45);
        int iF47 = eq3.f(iF43 + ((iF46 ^ iF45) ^ iF44), iArr[15], 530742520, 16, iF46);
        int iF48 = eq3.f(iF44 + ((iF47 ^ iF46) ^ iF45), iArr[2], -995338651, 23, iF47);
        int iF49 = eq3.f(iF45 + (((~iF46) | iF48) ^ iF47), iArr[0], -198630844, 6, iF48);
        int iF50 = eq3.f(iF46 + (((~iF47) | iF49) ^ iF48), iArr[7], 1126891415, 10, iF49);
        int iF51 = eq3.f(iF47 + (((~iF48) | iF50) ^ iF49), iArr[14], -1416354905, 15, iF50);
        int iF52 = eq3.f(iF48 + (((~iF49) | iF51) ^ iF50), iArr[5], -57434055, 21, iF51);
        int iF53 = eq3.f(iF49 + (((~iF50) | iF52) ^ iF51), iArr[12], 1700485571, 6, iF52);
        int iF54 = eq3.f(iF50 + (((~iF51) | iF53) ^ iF52), iArr[3], -1894986606, 10, iF53);
        int iF55 = eq3.f(iF51 + (((~iF52) | iF54) ^ iF53), iArr[10], -1051523, 15, iF54);
        int iF56 = eq3.f(iF52 + (((~iF53) | iF55) ^ iF54), iArr[1], -2054922799, 21, iF55);
        int iF57 = eq3.f(iF53 + (((~iF54) | iF56) ^ iF55), iArr[8], 1873313359, 6, iF56);
        int iF58 = eq3.f(iF54 + (((~iF55) | iF57) ^ iF56), iArr[15], -30611744, 10, iF57);
        int iF59 = eq3.f(iF55 + (((~iF56) | iF58) ^ iF57), iArr[6], -1560198380, 15, iF58);
        int iF60 = eq3.f(iF56 + (((~iF57) | iF59) ^ iF58), iArr[13], 1309151649, 21, iF59);
        int iF61 = eq3.f(iF57 + (((~iF58) | iF60) ^ iF59), iArr[4], -145523070, 6, iF60);
        int iF62 = eq3.f(iF58 + (((~iF59) | iF61) ^ iF60), iArr[11], -1120210379, 10, iF61);
        int iF63 = eq3.f(iF59 + (((~iF60) | iF62) ^ iF61), iArr[2], 718787259, 15, iF62);
        int iF64 = eq3.f(iF60 + (((~iF61) | iF63) ^ iF62), iArr[9], -343485551, 21, iF63);
        this.e += iF61;
        this.f += iF64;
        this.g += iF63;
        this.h += iF62;
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

    public final void l(x35 x35Var) {
        d(x35Var);
        this.e = x35Var.e;
        this.f = x35Var.f;
        this.g = x35Var.g;
        this.h = x35Var.h;
        int[] iArr = x35Var.i;
        System.arraycopy(iArr, 0, this.i, 0, iArr.length);
        this.j = x35Var.j;
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
