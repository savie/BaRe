package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b28 extends h3 {
    @Override // defpackage.h3
    public final gt0 a(un2 un2Var, ke keVar) {
        if (un2Var.g >= 4) {
            return null;
        }
        CharSequence charSequence = un2Var.a;
        int length = charSequence.length();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        for (int i4 = un2Var.e; i4 < length; i4++) {
            char cCharAt = charSequence.charAt(i4);
            if (cCharAt != '\t' && cCharAt != ' ') {
                if (cCharAt == '*') {
                    i3++;
                } else if (cCharAt == '-') {
                    i++;
                } else {
                    if (cCharAt != '_') {
                        return null;
                    }
                    i2++;
                }
            }
        }
        if ((i < 3 || i2 != 0 || i3 != 0) && ((i2 < 3 || i != 0 || i3 != 0) && (i3 < 3 || i != 0 || i2 != 0))) {
            return null;
        }
        gt0 gt0Var = new gt0(new c28());
        gt0Var.b = charSequence.length();
        return gt0Var;
    }
}
