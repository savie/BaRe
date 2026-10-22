package defpackage;

import java.util.Collection;
import java.util.Collections;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lt0 extends ix7 {
    @Override // defpackage.ix7
    public final void a(bs2 bs2Var, yc9 yc9Var, q64 q64Var) {
        if (q64Var.c()) {
            ix7.c(bs2Var, yc9Var, q64Var.b());
        }
        j75 j75Var = (j75) bs2Var.b;
        sj7 sj7VarA = ((ky3) j75Var.k).a(at0.class);
        if (sj7VarA != null) {
            wj7.c((wj7) bs2Var.d, sj7VarA.a(j75Var, (di4) bs2Var.c), q64Var.b, q64Var.d);
        }
    }

    @Override // defpackage.ix7
    public final Collection b() {
        return Collections.singleton("blockquote");
    }
}
