package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i77 implements f77 {
    public final /* synthetic */ qt3 a;

    public i77(qt3 qt3Var) {
        this.a = qt3Var;
    }

    @Override // defpackage.f77
    public final Iterator iterator() {
        g77 g77Var = new g77();
        g77Var.d = nc8.o(g77Var, g77Var, this.a);
        return g77Var;
    }
}
