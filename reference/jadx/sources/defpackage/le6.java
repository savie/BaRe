package defpackage;

/* JADX INFO: loaded from: classes.dex */
public final class le6 extends uu3 {
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int[] j;
    public int k;

    public static int j(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    public static int l(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    public static int m(int i, int i2, int i3) {
        return ((~i) & i3) | (i2 & i);
    }

    public static int n(int i, int i2, int i3) {
        return (i | (~i2)) ^ i3;
    }

    public static int o(int i, int i2, int i3) {
        return (i & i3) | (i2 & (~i3));
    }

    public static int p(int i, int i2, int i3) {
        return i ^ (i2 | (~i3));
    }

    @Override // defpackage.xb5
    public final void b(xb5 xb5Var) {
        k((le6) xb5Var);
    }

    @Override // defpackage.hl2
    public final int c() {
        return 20;
    }

    @Override // defpackage.xb5
    public final xb5 copy() {
        le6 le6Var = new le6(this);
        le6Var.j = new int[16];
        zh8.r(le6Var);
        e42.a();
        le6Var.k(this);
        return le6Var;
    }

    @Override // defpackage.hl2
    public final int doFinal(byte[] bArr, int i) {
        e();
        xx3.o(bArr, this.e, i);
        xx3.o(bArr, this.f, i + 4);
        xx3.o(bArr, this.g, i + 8);
        xx3.o(bArr, this.h, i + 12);
        xx3.o(bArr, this.i, i + 16);
        reset();
        return 20;
    }

    @Override // defpackage.hl2
    public final String f() {
        return "RIPEMD160";
    }

    @Override // defpackage.uu3
    public final void g() {
        int i = this.e;
        int i2 = this.f;
        int i3 = this.g;
        int i4 = this.h;
        int i5 = this.i;
        int[] iArr = this.j;
        int iE = fz5.e(((i2 ^ i3) ^ i4) + i, iArr[0], 11, i5);
        int iJ = j(i3, 10);
        int iE2 = fz5.e(((iE ^ i2) ^ iJ) + i5, iArr[1], 14, i4);
        int iJ2 = j(i2, 10);
        int iE3 = fz5.e(((iE2 ^ iE) ^ iJ2) + i4, iArr[2], 15, iJ);
        int iJ3 = j(iE, 10);
        int iE4 = fz5.e(((iE3 ^ iE2) ^ iJ3) + iJ, iArr[3], 12, iJ2);
        int iJ4 = j(iE2, 10);
        int iE5 = fz5.e(((iE4 ^ iE3) ^ iJ4) + iJ2, iArr[4], 5, iJ3);
        int iJ5 = j(iE3, 10);
        int iE6 = fz5.e(((iE5 ^ iE4) ^ iJ5) + iJ3, iArr[5], 8, iJ4);
        int iJ6 = j(iE4, 10);
        int iE7 = fz5.e(((iE6 ^ iE5) ^ iJ6) + iJ4, iArr[6], 7, iJ5);
        int iJ7 = j(iE5, 10);
        int iE8 = fz5.e(((iE7 ^ iE6) ^ iJ7) + iJ5, iArr[7], 9, iJ6);
        int iJ8 = j(iE6, 10);
        int iE9 = fz5.e(((iE8 ^ iE7) ^ iJ8) + iJ6, iArr[8], 11, iJ7);
        int iJ9 = j(iE7, 10);
        int iE10 = fz5.e(((iE9 ^ iE8) ^ iJ9) + iJ7, iArr[9], 13, iJ8);
        int iJ10 = j(iE8, 10);
        int iE11 = fz5.e(((iE10 ^ iE9) ^ iJ10) + iJ8, iArr[10], 14, iJ9);
        int iJ11 = j(iE9, 10);
        int iE12 = fz5.e(((iE11 ^ iE10) ^ iJ11) + iJ9, iArr[11], 15, iJ10);
        int iJ12 = j(iE10, 10);
        int iE13 = fz5.e(((iE12 ^ iE11) ^ iJ12) + iJ10, iArr[12], 6, iJ11);
        int iJ13 = j(iE11, 10);
        int iE14 = fz5.e(((iE13 ^ iE12) ^ iJ13) + iJ11, iArr[13], 7, iJ12);
        int iJ14 = j(iE12, 10);
        int iE15 = fz5.e(((iE14 ^ iE13) ^ iJ14) + iJ12, iArr[14], 9, iJ13);
        int iJ15 = j(iE13, 10);
        int iE16 = fz5.e(((iE15 ^ iE14) ^ iJ15) + iJ13, iArr[15], 8, iJ14);
        int iJ16 = j(iE14, 10);
        int iF = fz5.f((((~i4) | i3) ^ i2) + i, iArr[5], 1352829926, 8, i5);
        int iJ17 = j(i3, 10);
        int iF2 = fz5.f((((~iJ17) | i2) ^ iF) + i5, iArr[14], 1352829926, 9, i4);
        int iJ18 = j(i2, 10);
        int iF3 = fz5.f((((~iJ18) | iF) ^ iF2) + i4, iArr[7], 1352829926, 9, iJ17);
        int iJ19 = j(iF, 10);
        int iF4 = fz5.f((((~iJ19) | iF2) ^ iF3) + iJ17, iArr[0], 1352829926, 11, iJ18);
        int iJ20 = j(iF2, 10);
        int iF5 = fz5.f((((~iJ20) | iF3) ^ iF4) + iJ18, iArr[9], 1352829926, 13, iJ19);
        int iJ21 = j(iF3, 10);
        int iF6 = fz5.f((((~iJ21) | iF4) ^ iF5) + iJ19, iArr[2], 1352829926, 15, iJ20);
        int iJ22 = j(iF4, 10);
        int iF7 = fz5.f((((~iJ22) | iF5) ^ iF6) + iJ20, iArr[11], 1352829926, 15, iJ21);
        int iJ23 = j(iF5, 10);
        int iF8 = fz5.f((((~iJ23) | iF6) ^ iF7) + iJ21, iArr[4], 1352829926, 5, iJ22);
        int iJ24 = j(iF6, 10);
        int iF9 = fz5.f((((~iJ24) | iF7) ^ iF8) + iJ22, iArr[13], 1352829926, 7, iJ23);
        int iJ25 = j(iF7, 10);
        int iF10 = fz5.f((((~iJ25) | iF8) ^ iF9) + iJ23, iArr[6], 1352829926, 7, iJ24);
        int iJ26 = j(iF8, 10);
        int iF11 = fz5.f((((~iJ26) | iF9) ^ iF10) + iJ24, iArr[15], 1352829926, 8, iJ25);
        int iJ27 = j(iF9, 10);
        int iF12 = fz5.f((((~iJ27) | iF10) ^ iF11) + iJ25, iArr[8], 1352829926, 11, iJ26);
        int iJ28 = j(iF10, 10);
        int iF13 = fz5.f((((~iJ28) | iF11) ^ iF12) + iJ26, iArr[1], 1352829926, 14, iJ27);
        int iJ29 = j(iF11, 10);
        int iF14 = fz5.f((((~iJ29) | iF12) ^ iF13) + iJ27, iArr[10], 1352829926, 14, iJ28);
        int iJ30 = j(iF12, 10);
        int iF15 = fz5.f((((~iJ30) | iF13) ^ iF14) + iJ28, iArr[3], 1352829926, 12, iJ29);
        int iJ31 = j(iF13, 10);
        int iF16 = fz5.f((((~iJ31) | iF14) ^ iF15) + iJ29, iArr[12], 1352829926, 6, iJ30);
        int iJ32 = j(iF14, 10);
        int iF17 = fz5.f(m(iE16, iE15, iJ16) + iJ14, iArr[7], 1518500249, 7, iJ15);
        int iJ33 = j(iE15, 10);
        int iF18 = fz5.f(m(iF17, iE16, iJ33) + iJ15, iArr[4], 1518500249, 6, iJ16);
        int iJ34 = j(iE16, 10);
        int iF19 = fz5.f(m(iF18, iF17, iJ34) + iJ16, iArr[13], 1518500249, 8, iJ33);
        int iJ35 = j(iF17, 10);
        int iF20 = fz5.f(m(iF19, iF18, iJ35) + iJ33, iArr[1], 1518500249, 13, iJ34);
        int iJ36 = j(iF18, 10);
        int iF21 = fz5.f(m(iF20, iF19, iJ36) + iJ34, iArr[10], 1518500249, 11, iJ35);
        int iJ37 = j(iF19, 10);
        int iF22 = fz5.f(m(iF21, iF20, iJ37) + iJ35, iArr[6], 1518500249, 9, iJ36);
        int iJ38 = j(iF20, 10);
        int iF23 = fz5.f(m(iF22, iF21, iJ38) + iJ36, iArr[15], 1518500249, 7, iJ37);
        int iJ39 = j(iF21, 10);
        int iF24 = fz5.f(m(iF23, iF22, iJ39) + iJ37, iArr[3], 1518500249, 15, iJ38);
        int iJ40 = j(iF22, 10);
        int iF25 = fz5.f(m(iF24, iF23, iJ40) + iJ38, iArr[12], 1518500249, 7, iJ39);
        int iJ41 = j(iF23, 10);
        int iF26 = fz5.f(m(iF25, iF24, iJ41) + iJ39, iArr[0], 1518500249, 12, iJ40);
        int iJ42 = j(iF24, 10);
        int iF27 = fz5.f(m(iF26, iF25, iJ42) + iJ40, iArr[9], 1518500249, 15, iJ41);
        int iJ43 = j(iF25, 10);
        int iF28 = fz5.f(m(iF27, iF26, iJ43) + iJ41, iArr[5], 1518500249, 9, iJ42);
        int iJ44 = j(iF26, 10);
        int iF29 = fz5.f(m(iF28, iF27, iJ44) + iJ42, iArr[2], 1518500249, 11, iJ43);
        int iJ45 = j(iF27, 10);
        int iF30 = fz5.f(m(iF29, iF28, iJ45) + iJ43, iArr[14], 1518500249, 7, iJ44);
        int iJ46 = j(iF28, 10);
        int iF31 = fz5.f(m(iF30, iF29, iJ46) + iJ44, iArr[11], 1518500249, 13, iJ45);
        int iJ47 = j(iF29, 10);
        int iF32 = fz5.f(m(iF31, iF30, iJ47) + iJ45, iArr[8], 1518500249, 12, iJ46);
        int iJ48 = j(iF30, 10);
        int iF33 = fz5.f(o(iF16, iF15, iJ32) + iJ30, iArr[6], 1548603684, 9, iJ31);
        int iJ49 = j(iF15, 10);
        int iF34 = fz5.f(o(iF33, iF16, iJ49) + iJ31, iArr[11], 1548603684, 13, iJ32);
        int iJ50 = j(iF16, 10);
        int iF35 = fz5.f(o(iF34, iF33, iJ50) + iJ32, iArr[3], 1548603684, 15, iJ49);
        int iJ51 = j(iF33, 10);
        int iF36 = fz5.f(o(iF35, iF34, iJ51) + iJ49, iArr[7], 1548603684, 7, iJ50);
        int iJ52 = j(iF34, 10);
        int iF37 = fz5.f(o(iF36, iF35, iJ52) + iJ50, iArr[0], 1548603684, 12, iJ51);
        int iJ53 = j(iF35, 10);
        int iF38 = fz5.f(o(iF37, iF36, iJ53) + iJ51, iArr[13], 1548603684, 8, iJ52);
        int iJ54 = j(iF36, 10);
        int iF39 = fz5.f(o(iF38, iF37, iJ54) + iJ52, iArr[5], 1548603684, 9, iJ53);
        int iJ55 = j(iF37, 10);
        int iF40 = fz5.f(o(iF39, iF38, iJ55) + iJ53, iArr[10], 1548603684, 11, iJ54);
        int iJ56 = j(iF38, 10);
        int iF41 = fz5.f(o(iF40, iF39, iJ56) + iJ54, iArr[14], 1548603684, 7, iJ55);
        int iJ57 = j(iF39, 10);
        int iF42 = fz5.f(o(iF41, iF40, iJ57) + iJ55, iArr[15], 1548603684, 7, iJ56);
        int iJ58 = j(iF40, 10);
        int iF43 = fz5.f(o(iF42, iF41, iJ58) + iJ56, iArr[8], 1548603684, 12, iJ57);
        int iJ59 = j(iF41, 10);
        int iF44 = fz5.f(o(iF43, iF42, iJ59) + iJ57, iArr[12], 1548603684, 7, iJ58);
        int iJ60 = j(iF42, 10);
        int iF45 = fz5.f(o(iF44, iF43, iJ60) + iJ58, iArr[4], 1548603684, 6, iJ59);
        int iJ61 = j(iF43, 10);
        int iF46 = fz5.f(o(iF45, iF44, iJ61) + iJ59, iArr[9], 1548603684, 15, iJ60);
        int iJ62 = j(iF44, 10);
        int iF47 = fz5.f(o(iF46, iF45, iJ62) + iJ60, iArr[1], 1548603684, 13, iJ61);
        int iJ63 = j(iF45, 10);
        int iF48 = fz5.f(o(iF47, iF46, iJ63) + iJ61, iArr[2], 1548603684, 11, iJ62);
        int iJ64 = j(iF46, 10);
        int iF49 = fz5.f((((~iF31) | iF32) ^ iJ48) + iJ46, iArr[3], 1859775393, 11, iJ47);
        int iJ65 = j(iF31, 10);
        int iF50 = fz5.f((((~iF32) | iF49) ^ iJ65) + iJ47, iArr[10], 1859775393, 13, iJ48);
        int iJ66 = j(iF32, 10);
        int iF51 = fz5.f((((~iF49) | iF50) ^ iJ66) + iJ48, iArr[14], 1859775393, 6, iJ65);
        int iJ67 = j(iF49, 10);
        int iF52 = fz5.f((((~iF50) | iF51) ^ iJ67) + iJ65, iArr[4], 1859775393, 7, iJ66);
        int iJ68 = j(iF50, 10);
        int iF53 = fz5.f((((~iF51) | iF52) ^ iJ68) + iJ66, iArr[9], 1859775393, 14, iJ67);
        int iJ69 = j(iF51, 10);
        int iF54 = fz5.f((((~iF52) | iF53) ^ iJ69) + iJ67, iArr[15], 1859775393, 9, iJ68);
        int iJ70 = j(iF52, 10);
        int iF55 = fz5.f((((~iF53) | iF54) ^ iJ70) + iJ68, iArr[8], 1859775393, 13, iJ69);
        int iJ71 = j(iF53, 10);
        int iF56 = fz5.f((((~iF54) | iF55) ^ iJ71) + iJ69, iArr[1], 1859775393, 15, iJ70);
        int iJ72 = j(iF54, 10);
        int iF57 = fz5.f((((~iF55) | iF56) ^ iJ72) + iJ70, iArr[2], 1859775393, 14, iJ71);
        int iJ73 = j(iF55, 10);
        int iF58 = fz5.f((((~iF56) | iF57) ^ iJ73) + iJ71, iArr[7], 1859775393, 8, iJ72);
        int iJ74 = j(iF56, 10);
        int iF59 = fz5.f((((~iF57) | iF58) ^ iJ74) + iJ72, iArr[0], 1859775393, 13, iJ73);
        int iJ75 = j(iF57, 10);
        int iF60 = fz5.f((((~iF58) | iF59) ^ iJ75) + iJ73, iArr[6], 1859775393, 6, iJ74);
        int iJ76 = j(iF58, 10);
        int iF61 = fz5.f((((~iF59) | iF60) ^ iJ76) + iJ74, iArr[13], 1859775393, 5, iJ75);
        int iJ77 = j(iF59, 10);
        int iF62 = fz5.f((((~iF60) | iF61) ^ iJ77) + iJ75, iArr[11], 1859775393, 12, iJ76);
        int iJ78 = j(iF60, 10);
        int iF63 = fz5.f((((~iF61) | iF62) ^ iJ78) + iJ76, iArr[5], 1859775393, 7, iJ77);
        int iJ79 = j(iF61, 10);
        int iF64 = fz5.f((((~iF62) | iF63) ^ iJ79) + iJ77, iArr[12], 1859775393, 5, iJ78);
        int iJ80 = j(iF62, 10);
        int iF65 = fz5.f((((~iF47) | iF48) ^ iJ64) + iJ62, iArr[15], 1836072691, 9, iJ63);
        int iJ81 = j(iF47, 10);
        int iF66 = fz5.f((((~iF48) | iF65) ^ iJ81) + iJ63, iArr[5], 1836072691, 7, iJ64);
        int iJ82 = j(iF48, 10);
        int iF67 = fz5.f((((~iF65) | iF66) ^ iJ82) + iJ64, iArr[1], 1836072691, 15, iJ81);
        int iJ83 = j(iF65, 10);
        int iF68 = fz5.f((((~iF66) | iF67) ^ iJ83) + iJ81, iArr[3], 1836072691, 11, iJ82);
        int iJ84 = j(iF66, 10);
        int iF69 = fz5.f((((~iF67) | iF68) ^ iJ84) + iJ82, iArr[7], 1836072691, 8, iJ83);
        int iJ85 = j(iF67, 10);
        int iF70 = fz5.f((((~iF68) | iF69) ^ iJ85) + iJ83, iArr[14], 1836072691, 6, iJ84);
        int iJ86 = j(iF68, 10);
        int iF71 = fz5.f((((~iF69) | iF70) ^ iJ86) + iJ84, iArr[6], 1836072691, 6, iJ85);
        int iJ87 = j(iF69, 10);
        int iF72 = fz5.f((((~iF70) | iF71) ^ iJ87) + iJ85, iArr[9], 1836072691, 14, iJ86);
        int iJ88 = j(iF70, 10);
        int iF73 = fz5.f((((~iF71) | iF72) ^ iJ88) + iJ86, iArr[11], 1836072691, 12, iJ87);
        int iJ89 = j(iF71, 10);
        int iF74 = fz5.f((((~iF72) | iF73) ^ iJ89) + iJ87, iArr[8], 1836072691, 13, iJ88);
        int iJ90 = j(iF72, 10);
        int iF75 = fz5.f((((~iF73) | iF74) ^ iJ90) + iJ88, iArr[12], 1836072691, 5, iJ89);
        int iJ91 = j(iF73, 10);
        int iF76 = fz5.f((((~iF74) | iF75) ^ iJ91) + iJ89, iArr[2], 1836072691, 14, iJ90);
        int iJ92 = j(iF74, 10);
        int iF77 = fz5.f((((~iF75) | iF76) ^ iJ92) + iJ90, iArr[10], 1836072691, 13, iJ91);
        int iJ93 = j(iF75, 10);
        int iF78 = fz5.f(n(iF77, iF76, iJ93) + iJ91, iArr[0], 1836072691, 13, iJ92);
        int iJ94 = j(iF76, 10);
        int iF79 = fz5.f(n(iF78, iF77, iJ94) + iJ92, iArr[4], 1836072691, 7, iJ93);
        int iJ95 = j(iF77, 10);
        int iF80 = fz5.f(n(iF79, iF78, iJ95) + iJ93, iArr[13], 1836072691, 5, iJ94);
        int iJ96 = j(iF78, 10);
        int iF81 = fz5.f(o(iF64, iF63, iJ80) + iJ78, iArr[1], -1894007588, 11, iJ79);
        int iJ97 = j(iF63, 10);
        int iF82 = fz5.f(o(iF81, iF64, iJ97) + iJ79, iArr[9], -1894007588, 12, iJ80);
        int iJ98 = j(iF64, 10);
        int iF83 = fz5.f(o(iF82, iF81, iJ98) + iJ80, iArr[11], -1894007588, 14, iJ97);
        int iJ99 = j(iF81, 10);
        int iF84 = fz5.f(o(iF83, iF82, iJ99) + iJ97, iArr[10], -1894007588, 15, iJ98);
        int iJ100 = j(iF82, 10);
        int iF85 = fz5.f(o(iF84, iF83, iJ100) + iJ98, iArr[0], -1894007588, 14, iJ99);
        int iJ101 = j(iF83, 10);
        int iF86 = fz5.f(o(iF85, iF84, iJ101) + iJ99, iArr[8], -1894007588, 15, iJ100);
        int iJ102 = j(iF84, 10);
        int iF87 = fz5.f(o(iF86, iF85, iJ102) + iJ100, iArr[12], -1894007588, 9, iJ101);
        int iJ103 = j(iF85, 10);
        int iF88 = fz5.f(o(iF87, iF86, iJ103) + iJ101, iArr[4], -1894007588, 8, iJ102);
        int iJ104 = j(iF86, 10);
        int iF89 = fz5.f(o(iF88, iF87, iJ104) + iJ102, iArr[13], -1894007588, 9, iJ103);
        int iJ105 = j(iF87, 10);
        int iF90 = fz5.f(o(iF89, iF88, iJ105) + iJ103, iArr[3], -1894007588, 14, iJ104);
        int iJ106 = j(iF88, 10);
        int iF91 = fz5.f(o(iF90, iF89, iJ106) + iJ104, iArr[7], -1894007588, 5, iJ105);
        int iJ107 = j(iF89, 10);
        int iF92 = fz5.f(o(iF91, iF90, iJ107) + iJ105, iArr[15], -1894007588, 6, iJ106);
        int iJ108 = j(iF90, 10);
        int iF93 = fz5.f(o(iF92, iF91, iJ108) + iJ106, iArr[14], -1894007588, 8, iJ107);
        int iJ109 = j(iF91, 10);
        int iF94 = fz5.f(o(iF93, iF92, iJ109) + iJ107, iArr[5], -1894007588, 6, iJ108);
        int iJ110 = j(iF92, 10);
        int iF95 = fz5.f(o(iF94, iF93, iJ110) + iJ108, iArr[6], -1894007588, 5, iJ109);
        int iJ111 = j(iF93, 10);
        int iF96 = fz5.f(o(iF95, iF94, iJ111) + iJ109, iArr[2], -1894007588, 12, iJ110);
        int iJ112 = j(iF94, 10);
        int iF97 = fz5.f(m(iF80, iF79, iJ96) + iJ94, iArr[8], 2053994217, 15, iJ95);
        int iJ113 = j(iF79, 10);
        int iF98 = fz5.f(m(iF97, iF80, iJ113) + iJ95, iArr[6], 2053994217, 5, iJ96);
        int iJ114 = j(iF80, 10);
        int iF99 = fz5.f(m(iF98, iF97, iJ114) + iJ96, iArr[4], 2053994217, 8, iJ113);
        int iJ115 = j(iF97, 10);
        int iF100 = fz5.f(m(iF99, iF98, iJ115) + iJ113, iArr[1], 2053994217, 11, iJ114);
        int iJ116 = j(iF98, 10);
        int iF101 = fz5.f(m(iF100, iF99, iJ116) + iJ114, iArr[3], 2053994217, 14, iJ115);
        int iJ117 = j(iF99, 10);
        int iF102 = fz5.f(m(iF101, iF100, iJ117) + iJ115, iArr[11], 2053994217, 14, iJ116);
        int iJ118 = j(iF100, 10);
        int iF103 = fz5.f(m(iF102, iF101, iJ118) + iJ116, iArr[15], 2053994217, 6, iJ117);
        int iJ119 = j(iF101, 10);
        int iF104 = fz5.f(m(iF103, iF102, iJ119) + iJ117, iArr[0], 2053994217, 14, iJ118);
        int iJ120 = j(iF102, 10);
        int iF105 = fz5.f(m(iF104, iF103, iJ120) + iJ118, iArr[5], 2053994217, 6, iJ119);
        int iJ121 = j(iF103, 10);
        int iF106 = fz5.f(m(iF105, iF104, iJ121) + iJ119, iArr[12], 2053994217, 9, iJ120);
        int iJ122 = j(iF104, 10);
        int iF107 = fz5.f(m(iF106, iF105, iJ122) + iJ120, iArr[2], 2053994217, 12, iJ121);
        int iJ123 = j(iF105, 10);
        int iF108 = fz5.f(m(iF107, iF106, iJ123) + iJ121, iArr[13], 2053994217, 9, iJ122);
        int iJ124 = j(iF106, 10);
        int iF109 = fz5.f(m(iF108, iF107, iJ124) + iJ122, iArr[9], 2053994217, 12, iJ123);
        int iJ125 = j(iF107, 10);
        int iF110 = fz5.f(m(iF109, iF108, iJ125) + iJ123, iArr[7], 2053994217, 5, iJ124);
        int iJ126 = j(iF108, 10);
        int iF111 = fz5.f(m(iF110, iF109, iJ126) + iJ124, iArr[10], 2053994217, 15, iJ125);
        int iJ127 = j(iF109, 10);
        int iF112 = fz5.f(m(iF111, iF110, iJ127) + iJ125, iArr[14], 2053994217, 8, iJ126);
        int iJ128 = j(iF110, 10);
        int iF113 = fz5.f(p(iF96, iF95, iJ112) + iJ110, iArr[4], -1454113458, 9, iJ111);
        int iJ129 = j(iF95, 10);
        int iF114 = fz5.f(p(iF113, iF96, iJ129) + iJ111, iArr[0], -1454113458, 15, iJ112);
        int iJ130 = j(iF96, 10);
        int iF115 = fz5.f(p(iF114, iF113, iJ130) + iJ112, iArr[5], -1454113458, 5, iJ129);
        int iJ131 = j(iF113, 10);
        int iF116 = fz5.f(p(iF115, iF114, iJ131) + iJ129, iArr[9], -1454113458, 11, iJ130);
        int iJ132 = j(iF114, 10);
        int iF117 = fz5.f(p(iF116, iF115, iJ132) + iJ130, iArr[7], -1454113458, 6, iJ131);
        int iJ133 = j(iF115, 10);
        int iF118 = fz5.f(p(iF117, iF116, iJ133) + iJ131, iArr[12], -1454113458, 8, iJ132);
        int iJ134 = j(iF116, 10);
        int iF119 = fz5.f(p(iF118, iF117, iJ134) + iJ132, iArr[2], -1454113458, 13, iJ133);
        int iJ135 = j(iF117, 10);
        int iF120 = fz5.f(p(iF119, iF118, iJ135) + iJ133, iArr[10], -1454113458, 12, iJ134);
        int iJ136 = j(iF118, 10);
        int iF121 = fz5.f(p(iF120, iF119, iJ136) + iJ134, iArr[14], -1454113458, 5, iJ135);
        int iJ137 = j(iF119, 10);
        int iF122 = fz5.f(p(iF121, iF120, iJ137) + iJ135, iArr[1], -1454113458, 12, iJ136);
        int iJ138 = j(iF120, 10);
        int iF123 = fz5.f(p(iF122, iF121, iJ138) + iJ136, iArr[3], -1454113458, 13, iJ137);
        int iJ139 = j(iF121, 10);
        int iF124 = fz5.f(p(iF123, iF122, iJ139) + iJ137, iArr[8], -1454113458, 14, iJ138);
        int iJ140 = j(iF122, 10);
        int iF125 = fz5.f(p(iF124, iF123, iJ140) + iJ138, iArr[11], -1454113458, 11, iJ139);
        int iJ141 = j(iF123, 10);
        int iF126 = fz5.f(p(iF125, iF124, iJ141) + iJ139, iArr[6], -1454113458, 8, iJ140);
        int iJ142 = j(iF124, 10);
        int iF127 = fz5.f(p(iF126, iF125, iJ142) + iJ140, iArr[15], -1454113458, 5, iJ141);
        int iJ143 = j(iF125, 10);
        int iF128 = fz5.f(p(iF127, iF126, iJ143) + iJ141, iArr[13], -1454113458, 6, iJ142);
        int iJ144 = j(iF126, 10);
        int iE17 = fz5.e(l(iF112, iF111, iJ128) + iJ126, iArr[12], 8, iJ127);
        int iJ145 = j(iF111, 10);
        int iE18 = fz5.e(l(iE17, iF112, iJ145) + iJ127, iArr[15], 5, iJ128);
        int iJ146 = j(iF112, 10);
        int iE19 = fz5.e(l(iE18, iE17, iJ146) + iJ128, iArr[10], 12, iJ145);
        int iJ147 = j(iE17, 10);
        int iE20 = fz5.e(l(iE19, iE18, iJ147) + iJ145, iArr[4], 9, iJ146);
        int iJ148 = j(iE18, 10);
        int iE21 = fz5.e(l(iE20, iE19, iJ148) + iJ146, iArr[1], 12, iJ147);
        int iJ149 = j(iE19, 10);
        int iE22 = fz5.e(l(iE21, iE20, iJ149) + iJ147, iArr[5], 5, iJ148);
        int iJ150 = j(iE20, 10);
        int iE23 = fz5.e(l(iE22, iE21, iJ150) + iJ148, iArr[8], 14, iJ149);
        int iJ151 = j(iE21, 10);
        int iE24 = fz5.e(l(iE23, iE22, iJ151) + iJ149, iArr[7], 6, iJ150);
        int iJ152 = j(iE22, 10);
        int iE25 = fz5.e(l(iE24, iE23, iJ152) + iJ150, iArr[6], 8, iJ151);
        int iJ153 = j(iE23, 10);
        int iE26 = fz5.e(l(iE25, iE24, iJ153) + iJ151, iArr[2], 13, iJ152);
        int iJ154 = j(iE24, 10);
        int iE27 = fz5.e(l(iE26, iE25, iJ154) + iJ152, iArr[13], 6, iJ153);
        int iJ155 = j(iE25, 10);
        int iE28 = fz5.e(l(iE27, iE26, iJ155) + iJ153, iArr[14], 5, iJ154);
        int iJ156 = j(iE26, 10);
        int iE29 = fz5.e(l(iE28, iE27, iJ156) + iJ154, iArr[0], 15, iJ155);
        int iJ157 = j(iE27, 10);
        int iE30 = fz5.e(l(iE29, iE28, iJ157) + iJ155, iArr[3], 13, iJ156);
        int iJ158 = j(iE28, 10);
        int iE31 = fz5.e(l(iE30, iE29, iJ158) + iJ156, iArr[9], 11, iJ157);
        int iJ159 = j(iE29, 10);
        int iE32 = fz5.e(l(iE31, iE30, iJ159) + iJ157, iArr[11], 11, iJ158);
        int iJ160 = iF127 + this.f + j(iE30, 10);
        this.f = this.g + iJ144 + iJ159;
        this.g = this.h + iJ143 + iJ158;
        this.h = this.i + iJ142 + iE32;
        this.i = this.e + iF128 + iE31;
        this.e = iJ160;
        this.k = 0;
        for (int i6 = 0; i6 != iArr.length; i6++) {
            iArr[i6] = 0;
        }
    }

    @Override // defpackage.uu3
    public final void h(long j) {
        if (this.k > 14) {
            g();
        }
        int[] iArr = this.j;
        iArr[14] = (int) j;
        iArr[15] = (int) (j >>> 32);
    }

    @Override // defpackage.uu3
    public final void i(byte[] bArr, int i) {
        int[] iArr = this.j;
        int i2 = this.k;
        this.k = i2 + 1;
        iArr[i2] = xx3.r(bArr, i);
        if (this.k == 16) {
            g();
        }
    }

    public final void k(le6 le6Var) {
        d(le6Var);
        this.e = le6Var.e;
        this.f = le6Var.f;
        this.g = le6Var.g;
        this.h = le6Var.h;
        this.i = le6Var.i;
        int[] iArr = le6Var.j;
        System.arraycopy(iArr, 0, this.j, 0, iArr.length);
        this.k = le6Var.k;
    }

    @Override // defpackage.uu3, defpackage.hl2
    public final void reset() {
        super.reset();
        this.e = 1732584193;
        this.f = -271733879;
        this.g = -1732584194;
        this.h = 271733878;
        this.i = -1009589776;
        this.k = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.j;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }
}
