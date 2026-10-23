package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rn7 extends tn7 {
    public transient od2 c;

    public rn7() {
        super(0, String.class);
        this.c = f96.i;
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) {
        Class<?> cls = obj.getClass();
        od2 od2Var = this.c;
        em4 em4VarX = od2Var.x(cls);
        if (em4VarX == null) {
            if (cls == Object.class) {
                em4VarX = new qn7(8, cls);
                this.c = od2Var.s(cls, em4VarX);
            } else {
                em4VarX = c87Var.k(c87Var.a.c(cls), null);
                od2 od2VarS = od2Var.s(cls, em4VarX);
                if (od2Var != od2VarS) {
                    this.c = od2VarS;
                }
            }
        }
        em4VarX.e(obj, fk4Var, c87Var);
    }
}
