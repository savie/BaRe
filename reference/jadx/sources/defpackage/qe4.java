package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qe4 extends zm6 {
    public int a;
    public final /* synthetic */ qt3 b;
    public final /* synthetic */ jv1 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qe4(jv1 jv1Var, jv1 jv1Var2, qt3 qt3Var) {
        super(jv1Var);
        this.b = qt3Var;
        this.c = jv1Var2;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        if (i != 0) {
            if (i != 1) {
                l0.e("This coroutine had already completed");
                return null;
            }
            this.a = 2;
            lg7.H(obj);
            return obj;
        }
        this.a = 1;
        lg7.H(obj);
        qt3 qt3Var = this.b;
        qt3Var.getClass();
        nc8.g(2, qt3Var);
        return qt3Var.invoke(this.c, this);
    }
}
