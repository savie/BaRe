package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hb8 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ mb8 b;
    public final /* synthetic */ bt3 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hb8(mb8 mb8Var, bt3 bt3Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = mb8Var;
        this.c = bt3Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new hb8(this.b, this.c, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((hb8) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        bt3 bt3Var = this.c;
        try {
            if (i == 0) {
                lg7.H(obj);
                mb8 mb8Var = this.b;
                this.a = 1;
                obj = mb8.b(mb8Var, this);
                yx1 yx1Var = yx1.a;
                if (obj == yx1Var) {
                    return yx1Var;
                }
            } else {
                if (i != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
            }
            bt3Var.invoke();
            return be8.a;
        } catch (Throwable th) {
            bt3Var.invoke();
            throw th;
        }
    }
}
