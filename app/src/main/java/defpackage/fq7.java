package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fq7 extends at4 {
    public final String c;

    public fq7(String str, qn5 qn5Var) {
        super(qn5Var);
        this.c = str;
    }

    @Override // defpackage.at4
    public final int c(at4 at4Var) {
        return this.c.compareTo(((fq7) at4Var).c);
    }

    @Override // defpackage.at4
    public final int d() {
        return 4;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof fq7)) {
            return false;
        }
        fq7 fq7Var = (fq7) obj;
        return this.c.equals(fq7Var.c) && this.a.equals(fq7Var.a);
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
        return new fq7(this.c, qn5Var);
    }

    @Override // defpackage.qn5
    public final String v(int i) {
        int iA = dj7.A(i);
        String str = this.c;
        if (iA == 0) {
            return e(i) + "string:" + str;
        }
        if (iA != 1) {
            c6.f("Invalid hash version for string node: ".concat(eq3.v(i)));
            return null;
        }
        return e(i) + "string:" + zm5.E(str);
    }
}
