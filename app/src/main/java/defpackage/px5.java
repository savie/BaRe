package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class px5 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ qt3 b;
    public final /* synthetic */ nx5 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public px5(qt3 qt3Var, nx5 nx5Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = qt3Var;
        this.c = nx5Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new px5(this.b, this.c, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((px5) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        if (i != 0) {
            if (i == 1) {
                lg7.H(obj);
                return obj;
            }
            l0.e("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        lg7.H(obj);
        this.a = 1;
        Object objInvoke = this.b.invoke(this.c, this);
        yx1 yx1Var = yx1.a;
        return objInvoke == yx1Var ? yx1Var : objInvoke;
    }
}
