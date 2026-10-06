package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qc6 {
    public final gy5 a;
    public final oc6 b;

    public qc6(gy5 gy5Var, oc6 oc6Var) {
        this.a = gy5Var;
        this.b = oc6Var;
    }

    public static qc6 a(gy5 gy5Var) {
        return new qc6(gy5Var, oc6.f);
    }

    public final boolean b() {
        oc6 oc6Var = this.b;
        return oc6Var.d() && oc6Var.e.equals(g66.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || qc6.class != obj.getClass()) {
            return false;
        }
        qc6 qc6Var = (qc6) obj;
        return this.a.equals(qc6Var.a) && this.b.equals(qc6Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return this.a + ":" + this.b;
    }
}
