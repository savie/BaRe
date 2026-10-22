package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o61 extends iz1 {
    public boolean i = false;
    public final /* synthetic */ p61 j;
    public final /* synthetic */ q61 k;

    public o61(q61 q61Var, p61 p61Var) {
        this.k = q61Var;
        this.j = p61Var;
    }

    @Override // defpackage.iz1
    public final void B(Object obj, Object obj2) {
        m61 m61Var = (m61) obj;
        qn5 qn5Var = (qn5) obj2;
        boolean z = this.i;
        p61 p61Var = this.j;
        if (!z) {
            m61 m61Var2 = m61.d;
            if (m61Var.compareTo(m61Var2) > 0) {
                this.i = true;
                p61Var.G(m61Var2, this.k.n());
            }
        }
        p61Var.G(m61Var, qn5Var);
    }
}
