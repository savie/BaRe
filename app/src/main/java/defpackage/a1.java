package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class a1 extends q1 {
    public final l82 a;

    public a1(l82 l82Var) {
        this.a = l82Var;
    }

    @Override // defpackage.q1, defpackage.y0
    public final int hashCode() {
        return ~ms8.x(this.a.a);
    }

    @Override // defpackage.q1
    public final boolean k(q1 q1Var) {
        if (q1Var instanceof a1) {
            return this.a.k(((a1) q1Var).a);
        }
        return false;
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) throws IOException {
        m1Var.n(7, z);
        m1Var.k(25, false, this.a.a);
    }

    @Override // defpackage.q1
    public final boolean o() {
        return false;
    }

    @Override // defpackage.q1
    public final int p(boolean z) {
        return this.a.p(z);
    }

    @Override // defpackage.q1
    public final q1 u() {
        return this;
    }

    @Override // defpackage.q1
    public final q1 w() {
        return this;
    }
}
