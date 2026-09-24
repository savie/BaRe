package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q26 extends ws7 implements qt3 {
    public lh6 a;
    public int b;
    public final /* synthetic */ lh6 c;
    public final /* synthetic */ r26 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q26(lh6 lh6Var, r26 r26Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.c = lh6Var;
        this.d = r26Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new q26(this.c, this.d, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((q26) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lh6 lh6Var;
        int i = this.b;
        if (i == 0) {
            lg7.H(obj);
            lh6 lh6Var2 = this.c;
            this.a = lh6Var2;
            this.b = 1;
            Object objA = this.d.a(this);
            yx1 yx1Var = yx1.a;
            if (objA == yx1Var) {
                return yx1Var;
            }
            obj = objA;
            lh6Var = lh6Var2;
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lh6Var = this.a;
            lg7.H(obj);
        }
        lh6Var.a = obj;
        return be8.a;
    }
}
