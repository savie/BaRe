package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class h92 extends v1 {
    public int c;

    @Override // defpackage.v1
    public final u F() {
        return new d92(sh0.E(x()));
    }

    @Override // defpackage.v1
    public final j1 H() {
        return new p82(vh0.y(y()));
    }

    @Override // defpackage.v1
    public final x1 I() {
        return new i92(this.a);
    }

    public final int K() {
        if (this.c < 0) {
            int length = this.a.length;
            int iP = 0;
            for (int i = 0; i < length; i++) {
                iP += this.a[i].d().w().p(true);
            }
            this.c = iP;
        }
        return this.c;
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) throws IOException {
        m1Var.n(48, z);
        g92 g92VarB = m1Var.b();
        int length = this.a.length;
        int i = 0;
        if (this.c >= 0 || length > 16) {
            m1Var.i(K());
            while (i < length) {
                g92VarB.o(this.a[i].d());
                i++;
            }
            return;
        }
        q1[] q1VarArr = new q1[length];
        int iP = 0;
        for (int i2 = 0; i2 < length; i2++) {
            q1 q1VarW = this.a[i2].d().w();
            q1VarArr[i2] = q1VarW;
            iP += q1VarW.p(true);
        }
        this.c = iP;
        m1Var.i(iP);
        while (i < length) {
            g92VarB.o(q1VarArr[i]);
            i++;
        }
    }

    @Override // defpackage.q1
    public final int p(boolean z) {
        return m1.d(K(), z);
    }

    @Override // defpackage.v1, defpackage.q1
    public final q1 w() {
        return this;
    }
}
