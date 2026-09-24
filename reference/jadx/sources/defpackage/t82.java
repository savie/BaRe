package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class t82 extends v1 {
    public int c;

    public t82(b0 b0Var, b0 b0Var2) {
        if (b0Var == null) {
            f6.n("'element1' cannot be null");
            throw null;
        }
        if (b0Var2 == null) {
            f6.n("'element2' cannot be null");
            throw null;
        }
        this.a = new b0[]{b0Var, b0Var2};
        this.c = -1;
    }

    @Override // defpackage.v1
    public final u F() {
        return new f82(sh0.E(x()));
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
                iP += this.a[i].d().u().p(true);
            }
            this.c = iP;
        }
        return this.c;
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) throws IOException {
        m1Var.n(48, z);
        r82 r82VarA = m1Var.a();
        int length = this.a.length;
        int i = 0;
        if (this.c >= 0 || length > 16) {
            m1Var.i(K());
            while (i < length) {
                this.a[i].d().u().l(r82VarA, true);
                i++;
            }
            return;
        }
        q1[] q1VarArr = new q1[length];
        int iP = 0;
        for (int i2 = 0; i2 < length; i2++) {
            q1 q1VarU = this.a[i2].d().u();
            q1VarArr[i2] = q1VarU;
            iP += q1VarU.p(true);
        }
        this.c = iP;
        m1Var.i(iP);
        while (i < length) {
            q1VarArr[i].l(r82VarA, true);
            i++;
        }
    }

    @Override // defpackage.q1
    public final int p(boolean z) {
        return m1.d(K(), z);
    }

    @Override // defpackage.v1, defpackage.q1
    public final q1 u() {
        return this;
    }

    @Override // defpackage.v1, defpackage.q1
    public final q1 w() {
        return this;
    }
}
