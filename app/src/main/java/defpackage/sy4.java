package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sy4 extends gu2 {
    public sy4(eu5 eu5Var, gy5 gy5Var) {
        super(4, gy5Var, eu5Var);
        zm5.r("Can't have a listen complete from a user source", !(eu5Var.a == 1));
    }

    public final String toString() {
        return "ListenComplete { path=" + ((gy5) this.c) + ", source=" + ((eu5) this.b) + " }";
    }

    @Override // defpackage.gu2
    public final gu2 x(m61 m61Var) {
        gy5 gy5Var = (gy5) this.c;
        boolean zIsEmpty = gy5Var.isEmpty();
        eu5 eu5Var = (eu5) this.b;
        return zIsEmpty ? new sy4(eu5Var, gy5.d) : new sy4(eu5Var, gy5Var.p());
    }
}
