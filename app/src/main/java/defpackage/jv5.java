package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class jv5 extends gu2 {
    public final qn5 d;

    public jv5(eu5 eu5Var, gy5 gy5Var, qn5 qn5Var) {
        super(1, gy5Var, eu5Var);
        this.d = qn5Var;
    }

    public final String toString() {
        return String.format("Overwrite { path=%s, source=%s, snapshot=%s }", (gy5) this.c, (eu5) this.b, this.d);
    }

    @Override // defpackage.gu2
    public final gu2 x(m61 m61Var) {
        gy5 gy5Var = (gy5) this.c;
        boolean zIsEmpty = gy5Var.isEmpty();
        eu5 eu5Var = (eu5) this.b;
        qn5 qn5Var = this.d;
        return zIsEmpty ? new jv5(eu5Var, gy5.d, qn5Var.m(m61Var)) : new jv5(eu5Var, gy5Var.p(), qn5Var);
    }
}
