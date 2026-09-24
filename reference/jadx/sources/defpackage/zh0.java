package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zh0 extends x1 {
    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) throws IOException {
        m1Var.l(z, 49, this.a);
    }

    @Override // defpackage.q1
    public final int p(boolean z) {
        int iP = z ? 4 : 3;
        for (b0 b0Var : this.a) {
            iP += b0Var.d().p(true);
        }
        return iP;
    }
}
