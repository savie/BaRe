package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class do2 implements do4 {
    public static final do2 a = new do2();
    public static final a66 b = new a66("kotlin.Double", u56.g);

    @Override // defpackage.do4
    public final Object a(np7 np7Var) {
        np7Var.getClass();
        vr1 vr1Var = np7Var.c;
        String strI = vr1Var.i();
        try {
            double d = Double.parseDouble(strI);
            np7Var.a.a.getClass();
            if (!Double.isInfinite(d) && !Double.isNaN(d)) {
                return Double.valueOf(d);
            }
            bb9.N(vr1Var, Double.valueOf(d));
            throw null;
        } catch (IllegalArgumentException unused) {
            vr1.k(vr1Var, u48.j('\'', "Failed to parse type 'double' for input '", strI), 0, 6);
            throw null;
        }
    }

    @Override // defpackage.do4
    public final void b(op7 op7Var, Object obj) {
        double dDoubleValue = ((Number) obj).doubleValue();
        wo1 wo1Var = op7Var.a;
        if (op7Var.f) {
            op7Var.j(String.valueOf(dDoubleValue));
        } else {
            ((lm4) wo1Var.b).c(String.valueOf(dDoubleValue));
        }
        op7Var.e.getClass();
        if (Double.isInfinite(dDoubleValue) || Double.isNaN(dDoubleValue)) {
            throw bb9.b(((lm4) wo1Var.b).toString(), Double.valueOf(dDoubleValue));
        }
    }

    @Override // defpackage.do4
    public final p77 d() {
        return b;
    }
}
