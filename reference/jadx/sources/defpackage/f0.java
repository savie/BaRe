package defpackage;

import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f0 extends ol1 {
    @Override // defpackage.ol1
    public final void D(z0 z0Var, n1 n1Var) throws IOException {
        h0 h0Var = (h0) z0Var;
        if (h0Var.b == null) {
            h0Var.b = h0Var.c.toByteArray();
        }
        n1Var.write(h0Var.b);
    }

    @Override // defpackage.ol1
    public final int E(z0 z0Var) {
        h0 h0Var = (h0) z0Var;
        if (h0Var.b == null) {
            h0Var.b = h0Var.c.toByteArray();
        }
        return h0Var.b.length;
    }
}
