package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s7 extends gu2 {
    public final boolean d;
    public final ua4 e;

    public s7(gy5 gy5Var, ua4 ua4Var, boolean z) {
        super(3, gy5Var, eu5.d);
        this.e = ua4Var;
        this.d = z;
    }

    public final String toString() {
        return "AckUserWrite { path=" + ((gy5) this.c) + ", revert=" + this.d + ", affectedTree=" + this.e + " }";
    }

    @Override // defpackage.gu2
    public final gu2 x(m61 m61Var) {
        gy5 gy5Var = (gy5) this.c;
        boolean zIsEmpty = gy5Var.isEmpty();
        boolean z = this.d;
        ua4 ua4Var = this.e;
        if (!zIsEmpty) {
            zm5.r("operationForChild called for unrelated child.", gy5Var.k().equals(m61Var));
            return new s7(gy5Var.p(), ua4Var, z);
        }
        if (ua4Var.a != null) {
            zm5.r("affectedTree should not have overlapping affected paths.", ua4Var.b.isEmpty());
            return this;
        }
        return new s7(gy5.d, ua4Var.l(new gy5(m61Var)), z);
    }
}
