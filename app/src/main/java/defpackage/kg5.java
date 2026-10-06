package defpackage;

import java.util.concurrent.CompletionException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kg5 extends pg5.b {
    public nw4 n;
    public final /* synthetic */ db2 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kg5(db2 db2Var) {
        super((pg5) db2Var.c, 0);
        this.p = db2Var;
        this.n = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // pg5.b
    public final void b() throws rg5 {
        db2 db2Var = this.p;
        pg5 pg5Var = (pg5) db2Var.c;
        yx4 yx4Var = (yx4) db2Var.b;
        this.f = null;
        this.b = null;
        this.d = null;
        nw4 nw4Var = this.n;
        String strP = nw4Var == null ? yx4Var.p() : nw4Var.k();
        if (strP == null) {
            strP = this.k;
        }
        try {
            nw4 nw4Var2 = ((zx4) pg5Var.z((yx4) ((yx4.a) ((yx4.a) yx4.m().e(yx4Var.b())).g(yx4Var.c())).p(yx4Var.f()).s(yx4Var.g()).C(yx4Var.n()).D(yx4Var.o()).K(Integer.valueOf(yx4Var.q())).L(yx4Var.r()).J(strP).d()).join()).a;
            this.n = nw4Var2;
            this.f = nw4Var2;
        } catch (CompletionException e) {
            pg5Var.getClass();
            pg5.W(e);
            throw null;
        }
    }
}
