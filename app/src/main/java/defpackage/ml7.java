package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ml7 extends qi4 {
    @Override // defpackage.qi4
    public final Object a(bn4 bn4Var) {
        float fZ = (float) bn4Var.z();
        if (!Float.isInfinite(fZ)) {
            return Float.valueOf(fZ);
        }
        throw new lj4("JSON forbids NaN and infinities: " + fZ + " at path " + bn4Var.r());
    }

    @Override // defpackage.qi4
    public final void e(dn4 dn4Var, Object obj) {
        Float f = (Float) obj;
        f.getClass();
        dn4Var.getClass();
        String string = f.toString();
        if (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN")) {
            g84.k(f, "Numeric values must be finite, but was ");
            return;
        }
        if (dn4Var.e) {
            dn4Var.e = false;
            dn4Var.m(string);
            return;
        }
        dn4Var.A();
        dn4Var.a();
        dn4Var.k.Z(string);
        int[] iArr = dn4Var.d;
        int i = dn4Var.a - 1;
        iArr[i] = iArr[i] + 1;
    }

    public final String toString() {
        return "JsonAdapter(Float)";
    }
}
