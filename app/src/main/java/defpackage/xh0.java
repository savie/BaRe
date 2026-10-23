package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class xh0 extends v1 {
    @Override // defpackage.v1
    public final u F() {
        return new sh0(x());
    }

    @Override // defpackage.v1
    public final j1 H() {
        j1[] j1VarArrY = y();
        return new vh0(vh0.y(j1VarArrY), j1VarArrY);
    }

    @Override // defpackage.v1
    public final x1 I() {
        return new zh0(false, this.a);
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) throws IOException {
        m1Var.l(z, 48, this.a);
    }

    @Override // defpackage.q1
    public final int p(boolean z) {
        int iP = z ? 4 : 3;
        int length = this.a.length;
        for (int i = 0; i < length; i++) {
            iP += this.a[i].d().p(true);
        }
        return iP;
    }
}
