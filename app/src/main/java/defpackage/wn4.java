package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wn4 extends ws7 implements qt3 {
    public z67 a;
    public vn4 b;
    public int c;
    public final /* synthetic */ z67 d;
    public final /* synthetic */ vn4 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wn4(z67 z67Var, vn4 vn4Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.d = z67Var;
        this.e = vn4Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new wn4(this.d, this.e, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((wn4) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        vn4 vn4Var;
        z67 z67Var;
        int i = this.c;
        if (i == 0) {
            lg7.H(obj);
            z67 z67Var2 = this.d;
            this.a = z67Var2;
            vn4Var = this.e;
            this.b = vn4Var;
            this.c = 1;
            Object objC = z67Var2.c(this);
            yx1 yx1Var = yx1.a;
            if (objC == yx1Var) {
                return yx1Var;
            }
            z67Var = z67Var2;
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            vn4Var = this.b;
            z67Var = this.a;
            lg7.H(obj);
        }
        try {
            return vn4Var.a.invoke();
        } finally {
            z67Var.e();
        }
    }
}
