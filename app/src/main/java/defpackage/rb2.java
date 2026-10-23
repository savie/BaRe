package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rb2 extends ws7 implements mt3 {
    public int a;
    public final /* synthetic */ bc2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rb2(bc2 bc2Var, jv1 jv1Var) {
        super(1, jv1Var);
        this.b = bc2Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(jv1 jv1Var) {
        return new rb2(this.b, jv1Var);
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        return ((rb2) create((jv1) obj)).invokeSuspend(be8.a);
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
        Object objInvoke = this.b.invoke(this);
        yx1 yx1Var = yx1.a;
        return objInvoke == yx1Var ? yx1Var : objInvoke;
    }
}
