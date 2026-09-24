package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yb2 extends ws7 implements qt3 {
    public Throwable a;
    public int b;
    public /* synthetic */ boolean c;
    public final /* synthetic */ ic2 d;
    public final /* synthetic */ int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yb2(ic2 ic2Var, int i, jv1 jv1Var) {
        super(2, jv1Var);
        this.d = ic2Var;
        this.e = i;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        yb2 yb2Var = new yb2(this.d, this.e, jv1Var);
        yb2Var.c = ((Boolean) obj).booleanValue();
        return yb2Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        Boolean bool = (Boolean) obj;
        bool.booleanValue();
        return ((yb2) create(bool, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [int] */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int iIntValue;
        Throwable th;
        em7 jf6Var;
        boolean z;
        ?? r0;
        ?? r1;
        boolean z2 = this.b;
        ic2 ic2Var = this.d;
        yx1 yx1Var = yx1.a;
        try {
            if (z2 == 0) {
                lg7.H(obj);
                boolean z3 = this.c;
                this.c = z3;
                this.b = 1;
                obj = ic2.f(ic2Var, z3, this);
                z2 = z3;
                if (obj == yx1Var) {
                    return yx1Var;
                }
            } else {
                if (z2 != 1) {
                    if (z2 != 2) {
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    boolean z4 = this.c;
                    th = this.a;
                    lg7.H(obj);
                    r1 = z4;
                    iIntValue = ((Number) obj).intValue();
                    r0 = r1;
                    jf6Var = new jf6(iIntValue, th);
                    z = r0;
                    return new pw5(jf6Var, Boolean.valueOf(z));
                }
                boolean z5 = this.c;
                lg7.H(obj);
                z2 = z5;
            }
            jf6Var = (em7) obj;
            z = z2;
        } catch (Throwable th2) {
            if (z2 != 0) {
                sd4 sd4VarG = ic2Var.g();
                this.a = th2;
                this.c = z2;
                this.b = 2;
                Object objB = sd4VarG.b(this);
                if (objB != yx1Var) {
                    obj = objB;
                    th = th2;
                    r1 = z2;
                }
                return yx1Var;
            }
            iIntValue = this.e;
            th = th2;
            r0 = z2;
        }
        return new pw5(jf6Var, Boolean.valueOf(z));
    }
}
