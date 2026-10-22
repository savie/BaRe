package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ll7 extends qi4 {
    @Override // defpackage.qi4
    public final Object a(bn4 bn4Var) {
        return Double.valueOf(bn4Var.z());
    }

    @Override // defpackage.qi4
    public final void e(dn4 dn4Var, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        dn4Var.getClass();
        if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
            d6.g("Numeric values must be finite, but was ", dDoubleValue);
            return;
        }
        if (dn4Var.e) {
            dn4Var.e = false;
            dn4Var.m(Double.toString(dDoubleValue));
            return;
        }
        dn4Var.A();
        dn4Var.a();
        dn4Var.k.Z(Double.toString(dDoubleValue));
        int[] iArr = dn4Var.d;
        int i = dn4Var.a - 1;
        iArr[i] = iArr[i] + 1;
    }

    public final String toString() {
        return "JsonAdapter(Double)";
    }
}
