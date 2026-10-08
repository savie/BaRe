package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class co2 extends at4 {
    public final Double c;

    public co2(Double d, qn5 qn5Var) {
        super(qn5Var);
        this.c = d;
    }

    @Override // defpackage.at4
    public final int c(at4 at4Var) {
        return this.c.compareTo(((co2) at4Var).c);
    }

    @Override // defpackage.at4
    public final int d() {
        return 3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof co2)) {
            return false;
        }
        co2 co2Var = (co2) obj;
        return this.c.equals(co2Var.c) && this.a.equals(co2Var.a);
    }

    @Override // defpackage.qn5
    public final Object getValue() {
        return this.c;
    }

    public final int hashCode() {
        return this.a.hashCode() + this.c.hashCode();
    }

    @Override // defpackage.qn5
    public final qn5 q(qn5 qn5Var) {
        zm5.s(xh8.v(qn5Var));
        return new co2(this.c, qn5Var);
    }

    @Override // defpackage.qn5
    public final String v(int i) {
        return e(i).concat("number:").concat(zm5.j(this.c.doubleValue()));
    }
}
