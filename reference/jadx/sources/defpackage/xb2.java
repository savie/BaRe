package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xb2 extends ws7 implements mt3 {
    public Throwable a;
    public int b;
    public final /* synthetic */ ic2 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xb2(ic2 ic2Var, jv1 jv1Var) {
        super(1, jv1Var);
        this.c = ic2Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(jv1 jv1Var) {
        return new xb2(this.c, jv1Var);
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        return ((xb2) create((jv1) obj)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        Throwable th;
        em7 jf6Var;
        int i = this.b;
        ic2 ic2Var = this.c;
        yx1 yx1Var = yx1.a;
        try {
            if (i == 0) {
                lg7.H(obj);
                this.b = 1;
                obj = ic2.f(ic2Var, true, this);
                if (obj == yx1Var) {
                    return yx1Var;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    th = this.a;
                    lg7.H(obj);
                    jf6Var = new jf6(((Number) obj).intValue(), th);
                    return new pw5(jf6Var, Boolean.TRUE);
                }
                lg7.H(obj);
            }
            jf6Var = (em7) obj;
        } catch (Throwable th2) {
            sd4 sd4VarG = ic2Var.g();
            this.a = th2;
            this.b = 2;
            Object objB = sd4VarG.b(this);
            if (objB != yx1Var) {
                obj = objB;
                th = th2;
            }
            return yx1Var;
        }
        return new pw5(jf6Var, Boolean.TRUE);
    }
}
