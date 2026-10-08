package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z72 extends ws7 implements qt3 {
    public final /* synthetic */ int a = 1;
    public /* synthetic */ Object b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z72(az7 az7Var, pp8 pp8Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = az7Var;
        this.c = pp8Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                z72 z72Var = new z72((mt3) obj2, jv1Var);
                z72Var.b = obj;
                return z72Var;
            default:
                return new z72((az7) this.b, (pp8) obj2, jv1Var);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                return ((z72) create((e98) obj, (jv1) obj2)).invokeSuspend(be8Var);
            default:
                ((z72) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
                return be8Var;
        }
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                lg7.H(obj);
                e98 e98Var = (e98) this.b;
                e98Var.getClass();
                return ((mt3) obj2).invoke(((gf6) e98Var).d());
            default:
                lg7.H(obj);
                up8.a((az7) this.b, (pp8) obj2, 4);
                return be8.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z72(mt3 mt3Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.c = mt3Var;
    }
}
