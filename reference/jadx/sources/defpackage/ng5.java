package defpackage;

import java.util.concurrent.CompletionException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ng5 extends pg5.b {
    public py4 n;
    public final /* synthetic */ og5 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ng5(og5 og5Var) {
        super((pg5) og5Var.c, 0);
        this.p = og5Var;
        this.n = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // pg5.b
    public final void b() throws rg5 {
        og5 og5Var = this.p;
        pg5 pg5Var = (pg5) og5Var.c;
        px4 px4Var = (px4) og5Var.b;
        this.f = null;
        this.b = null;
        this.d = null;
        try {
            px4.a aVarN = ((px4.a) ((px4.a) px4.n().e(px4Var.b())).g(px4Var.c())).p(px4Var.f()).s(px4Var.g()).D(px4Var.o()).E(px4Var.p()).M(Integer.valueOf(px4Var.r())).N(px4Var.s());
            py4 py4Var = this.n;
            px4.a aVarF = aVarN.F(py4Var == null ? px4Var.q() : py4Var.k());
            py4 py4Var2 = this.n;
            py4 py4Var3 = ((qx4) pg5Var.v((px4) aVarF.O(py4Var2 == null ? px4Var.t() : py4Var2.l()).d()).join()).a;
            this.n = py4Var3;
            this.f = py4Var3;
        } catch (CompletionException e) {
            pg5Var.getClass();
            pg5.W(e);
            throw null;
        }
    }
}
