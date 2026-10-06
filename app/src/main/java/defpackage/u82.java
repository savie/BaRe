package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class u82 extends x1 {
    public int d;

    public final int B() {
        if (this.d < 0) {
            int iP = 0;
            for (b0 b0Var : this.a) {
                iP += b0Var.d().u().p(true);
            }
            this.d = iP;
        }
        return this.d;
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) throws IOException {
        m1Var.n(49, z);
        r82 r82VarA = m1Var.a();
        b0[] b0VarArr = this.a;
        int length = b0VarArr.length;
        int i = 0;
        if (this.d >= 0 || length > 16) {
            m1Var.i(B());
            while (i < length) {
                b0VarArr[i].d().u().l(r82VarA, true);
                i++;
            }
            return;
        }
        q1[] q1VarArr = new q1[length];
        int iP = 0;
        for (int i2 = 0; i2 < length; i2++) {
            q1 q1VarU = b0VarArr[i2].d().u();
            q1VarArr[i2] = q1VarU;
            iP += q1VarU.p(true);
        }
        this.d = iP;
        m1Var.i(iP);
        while (i < length) {
            q1VarArr[i].l(r82VarA, true);
            i++;
        }
    }

    @Override // defpackage.q1
    public final int p(boolean z) {
        return m1.d(B(), z);
    }

    @Override // defpackage.x1, defpackage.q1
    public final q1 u() {
        return this.b != null ? this : super.u();
    }

    @Override // defpackage.x1, defpackage.q1
    public final q1 w() {
        return this;
    }
}
