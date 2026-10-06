package defpackage;

import java.util.concurrent.CompletionException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lg5 extends pg5.b {
    public ow4 n;
    public final /* synthetic */ mg5 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lg5(mg5 mg5Var) {
        super(mg5Var.b, 0);
        this.p = mg5Var;
        this.n = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // pg5.b
    public final void b() throws rg5 {
        mg5 mg5Var = this.p;
        pg5 pg5Var = mg5Var.b;
        ay4 ay4Var = mg5Var.a;
        this.f = null;
        this.b = null;
        this.d = null;
        try {
            ay4.a aVarU = ((ay4.a) ((ay4.a) ay4.p().e(ay4Var.b())).g(ay4Var.c())).p(ay4Var.f()).s(ay4Var.g()).G(ay4Var.r()).H(ay4Var.s()).S(Integer.valueOf(ay4Var.v())).T(ay4Var.w()).U(ay4Var.x());
            ow4 ow4Var = this.n;
            ow4 ow4Var2 = ((by4) pg5Var.A((ay4) aVarU.F(ow4Var == null ? ay4Var.q() : ow4Var.l()).I(ay4Var.t()).J(ay4Var.u()).d()).join()).a;
            this.n = ow4Var2;
            this.f = ow4Var2;
        } catch (CompletionException e) {
            pg5Var.getClass();
            pg5.W(e);
            throw null;
        }
    }
}
