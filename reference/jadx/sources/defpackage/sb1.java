package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class sb1 extends ws7 implements qt3 {
    public final /* synthetic */ tb1 a;
    public final /* synthetic */ boolean b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sb1(tb1 tb1Var, boolean z, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = tb1Var;
        this.b = z;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new sb1(this.a, this.b, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        sb1 sb1Var = (sb1) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        sb1Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        this.a.a(this.b);
        return be8.a;
    }
}
