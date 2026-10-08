package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bo7 extends ws7 implements rt3 {
    public int a;
    public /* synthetic */ i93 b;

    @Override // defpackage.rt3
    public final Object a(Object obj, Object obj2, Object obj3) {
        ((Boolean) obj2).getClass();
        bo7 bo7Var = new bo7(3, (jv1) obj3);
        bo7Var.b = (i93) obj;
        return bo7Var.invokeSuspend(be8.a);
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
        i93 i93Var = this.b;
        this.a = 1;
        i93Var.getClass();
        Object objA = i93.a(i93Var, this);
        yx1 yx1Var = yx1.a;
        return objA == yx1Var ? yx1Var : objA;
    }
}
