package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mb2 extends ws7 implements rt3 {
    public int a;
    public final /* synthetic */ ic2 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mb2(ic2 ic2Var, jv1 jv1Var) {
        super(3, jv1Var);
        this.b = ic2Var;
    }

    @Override // defpackage.rt3
    public final Object a(Object obj, Object obj2, Object obj3) {
        return new mb2(this.b, (jv1) obj3).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            this.a = 1;
            Object objB = ic2.b(this.b, this);
            yx1 yx1Var = yx1.a;
            if (objB == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
        }
        return be8.a;
    }
}
