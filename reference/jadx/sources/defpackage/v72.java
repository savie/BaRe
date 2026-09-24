package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v72 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ eo6 b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ mt3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v72(jv1 jv1Var, mt3 mt3Var, eo6 eo6Var, boolean z, boolean z2) {
        super(2, jv1Var);
        this.b = eo6Var;
        this.c = z;
        this.d = z2;
        this.e = mt3Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new v72(jv1Var, this.e, this.b, this.c, this.d);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((v72) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
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
        eo6 eo6Var = this.b;
        boolean z = !(eo6Var.h() && eo6Var.i()) && this.c;
        mt3 mt3Var = this.e;
        eo6 eo6Var2 = this.b;
        boolean z2 = this.d;
        u72 u72Var = new u72(null, mt3Var, eo6Var2, z, z2);
        this.a = 1;
        Object objK = eo6Var2.k(z2, u72Var, this);
        yx1 yx1Var = yx1.a;
        return objK == yx1Var ? yx1Var : objK;
    }
}
