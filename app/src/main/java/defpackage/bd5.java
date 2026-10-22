package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bd5 extends gu2 {
    public final np1 d;

    public bd5(eu5 eu5Var, gy5 gy5Var, np1 np1Var) {
        super(2, gy5Var, eu5Var);
        this.d = np1Var;
    }

    public final String toString() {
        return "Merge { path=" + ((gy5) this.c) + ", source=" + ((eu5) this.b) + ", children=" + this.d + " }";
    }

    @Override // defpackage.gu2
    public final gu2 x(m61 m61Var) {
        eu5 eu5Var = (eu5) this.b;
        gy5 gy5Var = (gy5) this.c;
        boolean zIsEmpty = gy5Var.isEmpty();
        np1 np1Var = this.d;
        if (!zIsEmpty) {
            if (gy5Var.k().equals(m61Var)) {
                return new bd5(eu5Var, gy5Var.p(), np1Var);
            }
            return null;
        }
        np1 np1VarG = np1Var.g(new gy5(m61Var));
        ua4 ua4Var = np1VarG.a;
        if (ua4Var.isEmpty()) {
            return null;
        }
        Object obj = ua4Var.a;
        return ((qn5) obj) != null ? new jv5(eu5Var, gy5.d, (qn5) obj) : new bd5(eu5Var, gy5.d, np1VarG);
    }
}
