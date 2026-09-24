package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pt0 implements do4 {
    public static final pt0 a = new pt0();
    public static final a66 b = new a66("kotlin.Boolean", t56.g);

    @Override // defpackage.do4
    public final Object a(np7 np7Var) {
        boolean z;
        boolean z2;
        np7Var.getClass();
        vr1 vr1Var = np7Var.c;
        int iU = vr1Var.u();
        String str = (String) vr1Var.f;
        if (iU == str.length()) {
            vr1.k(vr1Var, "EOF", 0, 6);
            throw null;
        }
        if (str.charAt(iU) == '\"') {
            iU++;
            z = true;
        } else {
            z = false;
        }
        int iT = vr1Var.t(iU);
        if (iT >= str.length() || iT == -1) {
            vr1.k(vr1Var, "EOF", 0, 6);
            throw null;
        }
        int i = iT + 1;
        int iCharAt = str.charAt(iT) | ' ';
        if (iCharAt == 102) {
            vr1Var.d(i, "alse");
            z2 = false;
        } else {
            if (iCharAt != 116) {
                vr1.k(vr1Var, "Expected valid boolean literal prefix, but had '" + vr1Var.i() + '\'', 0, 6);
                throw null;
            }
            vr1Var.d(i, "rue");
            z2 = true;
        }
        if (z) {
            if (vr1Var.b == str.length()) {
                vr1.k(vr1Var, "EOF", 0, 6);
                throw null;
            }
            if (str.charAt(vr1Var.b) != '\"') {
                vr1.k(vr1Var, "Expected closing quotation mark", 0, 6);
                throw null;
            }
            vr1Var.b++;
        }
        return Boolean.valueOf(z2);
    }

    @Override // defpackage.do4
    public final void b(op7 op7Var, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        if (op7Var.f) {
            op7Var.j(String.valueOf(zBooleanValue));
        } else {
            ((lm4) op7Var.a.b).c(String.valueOf(zBooleanValue));
        }
    }

    @Override // defpackage.do4
    public final p77 d() {
        return b;
    }
}
