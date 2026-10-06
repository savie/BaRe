package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lx5 extends ws7 implements mt3 {
    public final /* synthetic */ nx5 a;
    public final /* synthetic */ String b;
    public final /* synthetic */ mt3 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lx5(nx5 nx5Var, String str, mt3 mt3Var, jv1 jv1Var) {
        super(1, jv1Var);
        this.a = nx5Var;
        this.b = str;
        this.c = mt3Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(jv1 jv1Var) {
        return new lx5(this.a, this.b, this.c, jv1Var);
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        return ((lx5) create((jv1) obj)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        nw6 nw6VarP0 = this.a.b.p0(this.b);
        try {
            Object objInvoke = this.c.invoke(nw6VarP0);
            k55.d(nw6VarP0, null);
            return objInvoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                k55.d(nw6VarP0, th);
                throw th2;
            }
        }
    }
}
