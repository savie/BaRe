package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class m34 extends h3 {
    /* JADX WARN: Code duplicated, block: B:43:0x0093  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:59:0x00e7  */
    @Override // defpackage.h3
    public final gt0 a(un2 un2Var, ke keVar) {
        n34 n34Var;
        int i;
        StringBuilder sbA;
        if (un2Var.g < 4) {
            CharSequence charSequence = un2Var.a;
            int i2 = un2Var.e;
            int iA = zm5.A('#', i2, charSequence.length(), charSequence) - i2;
            if (iA == 0 || iA > 6) {
                n34Var = null;
            } else {
                int i3 = i2 + iA;
                if (i3 >= charSequence.length()) {
                    n34Var = new n34(iA, "");
                } else {
                    char cCharAt = charSequence.charAt(i3);
                    if (cCharAt == ' ' || cCharAt == '\t') {
                        int length = charSequence.length() - 1;
                        while (true) {
                            if (length >= i3) {
                                char cCharAt2 = charSequence.charAt(length);
                                if (cCharAt2 != '\t' && cCharAt2 != ' ') {
                                    break;
                                }
                                length--;
                            } else {
                                length = i3 - 1;
                                break;
                            }
                        }
                        int i4 = length;
                        while (true) {
                            if (i4 < i3) {
                                i4 = i3 - 1;
                                break;
                            }
                            if (charSequence.charAt(i4) != '#') {
                                break;
                            }
                            i4--;
                        }
                        int i5 = i4;
                        while (true) {
                            if (i5 >= i3) {
                                char cCharAt3 = charSequence.charAt(i5);
                                if (cCharAt3 != '\t' && cCharAt3 != ' ') {
                                    break;
                                }
                                i5--;
                            } else {
                                i5 = i3 - 1;
                                break;
                            }
                        }
                        n34Var = i5 != i4 ? new n34(iA, charSequence.subSequence(i3, i5 + 1).toString()) : new n34(iA, charSequence.subSequence(i3, length + 1).toString());
                    } else {
                        n34Var = null;
                    }
                }
            }
            if (n34Var != null) {
                gt0 gt0Var = new gt0(n34Var);
                gt0Var.b = charSequence.length();
                return gt0Var;
            }
            char cCharAt4 = charSequence.charAt(i2);
            if (cCharAt4 == '-') {
                if (zm5.B(charSequence, zm5.A('-', i2 + 1, charSequence.length(), charSequence), charSequence.length()) >= charSequence.length()) {
                    i = 2;
                } else {
                    i = 0;
                }
            } else if (cCharAt4 != '=') {
                i = 0;
            } else if (zm5.B(charSequence, zm5.A('=', i2 + 1, charSequence.length(), charSequence), charSequence.length()) >= charSequence.length()) {
                i = 1;
            } else if (zm5.B(charSequence, zm5.A('-', i2 + 1, charSequence.length(), charSequence), charSequence.length()) >= charSequence.length()) {
                i = 2;
            } else {
                i = 0;
            }
            if (i > 0 && (sbA = keVar.a()) != null) {
                gt0 gt0Var2 = new gt0(new n34(i, sbA.toString()));
                gt0Var2.b = charSequence.length();
                gt0Var2.d = true;
                return gt0Var2;
            }
        }
        return null;
    }
}
