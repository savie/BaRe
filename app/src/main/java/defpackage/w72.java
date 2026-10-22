package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class w72 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ ox1 b;
    public final /* synthetic */ eo6 c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ mt3 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w72(ox1 ox1Var, eo6 eo6Var, boolean z, boolean z2, mt3 mt3Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = ox1Var;
        this.c = eo6Var;
        this.d = z;
        this.e = z2;
        this.f = mt3Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new w72(this.b, this.c, this.d, this.e, this.f, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((w72) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
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
        v72 v72Var = new v72(null, this.f, this.c, this.d, this.e);
        this.a = 1;
        Object objG = l73.G(this.b, v72Var, this);
        yx1 yx1Var = yx1.a;
        return objG == yx1Var ? yx1Var : objG;
    }
}
