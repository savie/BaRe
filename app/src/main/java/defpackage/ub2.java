package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ub2 implements li3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ub2(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.li3
    public final Object c(Object obj, jv1 jv1Var) {
        Object objE;
        int i = this.a;
        be8 be8Var = be8.a;
        yx1 yx1Var = yx1.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ic2 ic2Var = (ic2) obj2;
                return ((ic2Var.h.c() instanceof ne3) || (objE = ic2.e(ic2Var, true, jv1Var)) != yx1Var) ? be8Var : objE;
            default:
                q87 q87Var = (q87) obj;
                kd7 kd7Var = (kd7) obj2;
                q87Var.getClass();
                kd7Var.h = q87Var;
                if (kd7Var.j) {
                    kd7Var.j = false;
                    kd7Var.c();
                }
                Object objA = kd7.a(kd7Var, q87Var.a.a, id7.a, jv1Var);
                return objA == yx1Var ? objA : be8Var;
        }
    }
}
