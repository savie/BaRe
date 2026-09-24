package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fj5 {
    public final nh a;
    public final gy5 b;

    public fj5(qn5 qn5Var) {
        nh nhVar = new nh(qn5Var, 16);
        gy5 gy5Var = new gy5("");
        this.a = nhVar;
        this.b = gy5Var;
        new rd2(gy5Var).e(((qn5) nhVar.b).U(gy5Var).getValue());
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof fj5)) {
            return false;
        }
        fj5 fj5Var = (fj5) obj;
        return this.a.equals(fj5Var.a) && this.b.equals(fj5Var.b);
    }

    public final String toString() {
        m61 m61VarK = this.b.k();
        StringBuilder sb = new StringBuilder("MutableData { key = ");
        sb.append(m61VarK != null ? m61VarK.a : "<none>");
        sb.append(", value = ");
        sb.append(((qn5) this.a.b).g0(true));
        sb.append(" }");
        return sb.toString();
    }
}
