package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class p47 extends ws7 implements qt3 {
    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new p47(2, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        p47 p47Var = (p47) create((xx1) obj, (jv1) obj2);
        be8 be8Var = be8.a;
        p47Var.invokeSuspend(be8Var);
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        tb1 tb1Var = tb1.a;
        if (qb1.m()) {
            sf1 sf1Var = sf1.g;
            if (!sf1Var.b) {
                sf1Var.e();
            }
        }
        return be8.a;
    }
}
