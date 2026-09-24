package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class a63 extends h3 {
    public final /* synthetic */ int a;

    public /* synthetic */ a63(int i) {
        this.a = i;
    }

    /* JADX WARN: Code duplicated, block: B:126:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:179:0x0290 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:180:0x0292 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:182:0x029a  */
    /* JADX WARN: Code duplicated, block: B:184:0x029d  */
    /* JADX WARN: Switch 'out' block B:99:0x015f for B:85:0x0125 already processed. Defaulting to fallback option. */
    @Override // defpackage.h3
    public final gt0 a(un2 un2Var, ke keVar) {
        b63 b63Var;
        eo2 eo2Var;
        char cCharAt;
        ir0 ir0Var;
        boolean z;
        int i;
        char cCharAt2;
        boolean z2;
        boolean z3;
        kw7 kw7Var;
        switch (this.a) {
            case 0:
                int i2 = un2Var.g;
                if (i2 < 4) {
                    int i3 = un2Var.e;
                    CharSequence charSequence = un2Var.a;
                    int length = charSequence.length();
                    int i4 = 0;
                    int i5 = 0;
                    for (int i6 = i3; i6 < length; i6++) {
                        char cCharAt3 = charSequence.charAt(i6);
                        if (cCharAt3 == '`') {
                            i4++;
                        } else if (cCharAt3 != '~') {
                            if (i4 < 3 && i5 == 0) {
                                int i7 = i3 + i4;
                                int length2 = charSequence.length();
                                while (true) {
                                    if (i7 >= length2) {
                                        i7 = -1;
                                    } else if (charSequence.charAt(i7) != '`') {
                                        i7++;
                                    }
                                }
                                if (i7 != -1) {
                                    b63Var = null;
                                } else {
                                    b63Var = new b63(i4, i2, '`');
                                }
                            } else if (i5 >= 3 || i4 != 0) {
                                b63Var = null;
                            } else {
                                b63Var = new b63(i5, i2, '~');
                            }
                            if (b63Var != null) {
                                gt0 gt0Var = new gt0(b63Var);
                                gt0Var.b = i3 + b63Var.a.g;
                                return gt0Var;
                            }
                        } else {
                            i5++;
                        }
                    }
                    if (i4 < 3) {
                        if (i5 >= 3) {
                            b63Var = null;
                        } else {
                            b63Var = null;
                        }
                    } else if (i5 >= 3) {
                        b63Var = null;
                    } else {
                        b63Var = null;
                    }
                    if (b63Var != null) {
                        gt0 gt0Var2 = new gt0(b63Var);
                        gt0Var2.b = i3 + b63Var.a.g;
                        return gt0Var2;
                    }
                }
                return null;
            case 1:
                g3 g3Var = (g3) keVar.b;
                int i8 = un2Var.g;
                if (i8 < 4) {
                    int i9 = un2Var.e;
                    int i10 = un2Var.c + i8;
                    boolean z4 = keVar.a() != null;
                    CharSequence charSequence2 = un2Var.a;
                    char cCharAt4 = charSequence2.charAt(i9);
                    if (cCharAt4 == '*' || cCharAt4 == '+' || cCharAt4 == '-') {
                        int i11 = i9 + 1;
                        if (i11 >= charSequence2.length() || (cCharAt = charSequence2.charAt(i11)) == '\t' || cCharAt == ' ') {
                            fx0 fx0Var = new fx0();
                            fx0Var.g = cCharAt4;
                            eo2Var = new eo2(fx0Var, i11);
                        } else {
                            eo2Var = null;
                        }
                    } else {
                        int length3 = charSequence2.length();
                        int i12 = 0;
                        int i13 = i9;
                        while (true) {
                            if (i13 < length3) {
                                char cCharAt5 = charSequence2.charAt(i13);
                                if (cCharAt5 != ')' && cCharAt5 != '.') {
                                    switch (cCharAt5) {
                                        case '0':
                                        case '1':
                                        case '2':
                                        case '3':
                                        case '4':
                                        case '5':
                                        case '6':
                                        case '7':
                                        case '8':
                                        case '9':
                                            i12++;
                                            if (i12 <= 9) {
                                                i13++;
                                            }
                                            break;
                                        default:
                                            break;
                                    }
                                } else if (i12 >= 1 && ((i = i13 + 1) >= charSequence2.length() || (cCharAt2 = charSequence2.charAt(i)) == '\t' || cCharAt2 == ' ')) {
                                    String string = charSequence2.subSequence(i9, i13).toString();
                                    qu5 qu5Var = new qu5();
                                    qu5Var.g = Integer.parseInt(string);
                                    qu5Var.h = cCharAt5;
                                    eo2Var = new eo2(qu5Var, i);
                                }
                            }
                            eo2Var = null;
                        }
                    }
                    if (eo2Var == null) {
                        ir0Var = null;
                    } else {
                        lw4 lw4Var = (lw4) eo2Var.b;
                        int i14 = eo2Var.a;
                        int i15 = (i14 - i9) + i10;
                        int length4 = charSequence2.length();
                        int i16 = i15;
                        while (true) {
                            if (i14 >= length4) {
                                z = false;
                            } else {
                                char cCharAt6 = charSequence2.charAt(i14);
                                if (cCharAt6 == '\t') {
                                    i16 = (4 - (i16 % 4)) + i16;
                                } else if (cCharAt6 == ' ') {
                                    i16++;
                                } else {
                                    z = true;
                                }
                                i14++;
                            }
                        }
                        if (!z4 || ((!(lw4Var instanceof qu5) || ((qu5) lw4Var).g == 1) && z)) {
                            if (!z || i16 - i15 > 4) {
                                i16 = i15 + 1;
                            }
                            ir0Var = new ir0(lw4Var, i16);
                        } else {
                            ir0Var = null;
                        }
                    }
                    if (ir0Var != null) {
                        lw4 lw4Var2 = (lw4) ir0Var.c;
                        int i17 = ir0Var.b;
                        hx4 hx4Var = new hx4(i17 - un2Var.c);
                        if (g3Var instanceof mw4) {
                            lw4 lw4Var3 = ((mw4) g3Var).a;
                            if (((lw4Var3 instanceof fx0) && (lw4Var2 instanceof fx0)) ? Character.valueOf(((fx0) lw4Var3).g).equals(Character.valueOf(((fx0) lw4Var2).g)) : ((lw4Var3 instanceof qu5) && (lw4Var2 instanceof qu5)) ? Character.valueOf(((qu5) lw4Var3).h).equals(Character.valueOf(((qu5) lw4Var2).h)) : false) {
                                gt0 gt0Var3 = new gt0(hx4Var);
                                gt0Var3.c = i17;
                                return gt0Var3;
                            }
                        }
                        mw4 mw4Var = new mw4(lw4Var2);
                        lw4Var2.f = true;
                        gt0 gt0Var4 = new gt0(mw4Var, hx4Var);
                        gt0Var4.c = i17;
                        return gt0Var4;
                    }
                }
                return null;
            default:
                CharSequence charSequence3 = un2Var.a;
                StringBuilder sbA = keVar.a();
                if (sbA != null && sbA.toString().contains("|") && !sbA.toString().contains("\n")) {
                    CharSequence charSequenceSubSequence = charSequence3.subSequence(un2Var.b, charSequence3.length());
                    ArrayList arrayList = new ArrayList();
                    int i18 = 0;
                    boolean z5 = false;
                    int i19 = 0;
                    while (true) {
                        if (i18 < charSequenceSubSequence.length()) {
                            char cCharAt7 = charSequenceSubSequence.charAt(i18);
                            if (cCharAt7 == '\t' || cCharAt7 == ' ') {
                                i18++;
                            } else if (cCharAt7 == '-' || cCharAt7 == ':') {
                                if (i19 != 0 || arrayList.isEmpty()) {
                                    if (cCharAt7 == ':') {
                                        i18++;
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    boolean z6 = false;
                                    while (i18 < charSequenceSubSequence.length() && charSequenceSubSequence.charAt(i18) == '-') {
                                        i18++;
                                        z6 = true;
                                    }
                                    if (z6) {
                                        if (i18 >= charSequenceSubSequence.length() || charSequenceSubSequence.charAt(i18) != ':') {
                                            z3 = false;
                                        } else {
                                            i18++;
                                            z3 = true;
                                        }
                                        if (z2 && z3) {
                                            kw7Var = kw7.b;
                                        } else if (z2) {
                                            kw7Var = kw7.a;
                                        } else {
                                            kw7Var = z3 ? kw7.c : null;
                                        }
                                        arrayList.add(kw7Var);
                                        i19 = 0;
                                    }
                                }
                            } else if (cCharAt7 == '|') {
                                i18++;
                                i19++;
                                if (i19 <= 1) {
                                    z5 = true;
                                }
                            }
                        } else if (!z5) {
                        }
                        arrayList = null;
                    }
                    if (arrayList != null && !arrayList.isEmpty()) {
                        ArrayList arrayListI = iw7.i(sbA);
                        if (arrayList.size() >= arrayListI.size()) {
                            gt0 gt0Var5 = new gt0(new iw7(arrayList, arrayListI));
                            gt0Var5.b = un2Var.b;
                            gt0Var5.d = true;
                            return gt0Var5;
                        }
                    }
                }
                return null;
        }
    }
}
