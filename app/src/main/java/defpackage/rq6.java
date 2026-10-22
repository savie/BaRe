package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rq6 extends ws7 implements qt3 {
    public int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ bn1 c;
    public final /* synthetic */ qt3 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rq6(bn1 bn1Var, qt3 qt3Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.c = bn1Var;
        this.d = qt3Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        rq6 rq6Var = new rq6(this.c, this.d, jv1Var);
        rq6Var.b = obj;
        return rq6Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((rq6) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        an1 an1Var;
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            xx1 xx1Var = (xx1) this.b;
            bn1 bn1Var = this.c;
            qt3 qt3Var = this.d;
            try {
                this.b = bn1Var;
                this.a = 1;
                obj = qt3Var.invoke(xx1Var, this);
                yx1 yx1Var = yx1.a;
                if (obj == yx1Var) {
                    return yx1Var;
                }
                an1Var = bn1Var;
            } catch (Throwable th) {
                th = th;
                an1Var = bn1Var;
                obj = new bn6(th);
            }
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            an1Var = (an1) this.b;
            try {
                lg7.H(obj);
            } catch (Throwable th2) {
                th = th2;
                obj = new bn6(th);
            }
        }
        Throwable thA = en6.a(obj);
        bn1 bn1Var2 = (bn1) an1Var;
        if (thA == null) {
            bn1Var2.G(obj);
        } else {
            bn1Var2.Y(thA);
        }
        return be8.a;
    }
}
