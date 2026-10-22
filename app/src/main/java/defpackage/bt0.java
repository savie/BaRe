package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bt0 extends h3 {
    @Override // defpackage.h3
    public final gt0 a(un2 un2Var, ke keVar) {
        char cCharAt;
        int i = un2Var.e;
        CharSequence charSequence = un2Var.a;
        if (un2Var.g >= 4 || i >= charSequence.length() || charSequence.charAt(i) != '>') {
            return null;
        }
        int i2 = un2Var.c + un2Var.g;
        int i3 = i2 + 1;
        CharSequence charSequence2 = un2Var.a;
        int i4 = i + 1;
        if (i4 < charSequence2.length() && ((cCharAt = charSequence2.charAt(i4)) == '\t' || cCharAt == ' ')) {
            i3 = i2 + 2;
        }
        gt0 gt0Var = new gt0(new ct0());
        gt0Var.c = i3;
        return gt0Var;
    }
}
