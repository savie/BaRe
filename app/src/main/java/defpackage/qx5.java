package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qx5 implements cs1 {
    public final gw6 a;
    public final String b;
    public final qt3 c;
    public final gv7 d = new gv7(new kn3(this, 13));

    public qx5(gw6 gw6Var, String str, qt3 qt3Var) {
        this.a = gw6Var;
        this.b = str;
        this.c = qt3Var;
    }

    @Override // java.lang.AutoCloseable
    public final void close() throws Exception {
        gv7 gv7Var = this.d;
        if (gv7Var.a()) {
            ((fw6) gv7Var.getValue()).close();
        }
    }

    @Override // defpackage.cs1
    public final Object w(boolean z, qt3 qt3Var, kv1 kv1Var) {
        ox5 ox5Var = (ox5) kv1Var.getContext().get(ox5.b);
        nx5 nx5Var = ox5Var != null ? ox5Var.a : null;
        if (nx5Var != null) {
            return qt3Var.invoke(nx5Var, kv1Var);
        }
        nx5 nx5Var2 = new nx5(this.c, (fw6) this.d.getValue());
        return l73.G(new ox5(nx5Var2), new px5(qt3Var, nx5Var2, null), kv1Var);
    }
}
