package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t extends ol1 {
    @Override // defpackage.ol1
    public final void D(z0 z0Var, n1 n1Var) throws IOException {
        v vVar = (v) z0Var;
        n1Var.write(vVar.c);
        n1Var.write(vVar.b);
    }

    @Override // defpackage.ol1
    public final int E(z0 z0Var) {
        return ((v) z0Var).b.length + 1;
    }
}
