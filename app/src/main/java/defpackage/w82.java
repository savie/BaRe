package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class w82 extends q2 {
    @Override // defpackage.q2
    public final v1 B(q1 q1Var) {
        t82 t82Var = new t82(q1Var);
        t82Var.c = -1;
        return t82Var;
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) throws IOException {
        q1 q1VarU = this.d.d().u();
        boolean zY = y();
        if (z) {
            int i = this.b;
            if (zY || q1VarU.o()) {
                i |= 32;
            }
            m1Var.m(i, this.c);
        }
        if (zY) {
            m1Var.i(q1VarU.p(true));
        }
        q1VarU.l(m1Var.a(), zY);
    }

    @Override // defpackage.q1
    public final boolean o() {
        return y() || this.d.d().u().o();
    }

    @Override // defpackage.q1
    public final int p(boolean z) {
        q1 q1VarU = this.d.d().u();
        boolean zY = y();
        int iP = q1VarU.p(zY);
        if (zY) {
            iP += m1.c(iP);
        }
        return iP + (z ? m1.e(this.c) : 0);
    }

    @Override // defpackage.q2, defpackage.q1
    public final q1 u() {
        return this;
    }

    @Override // defpackage.q2, defpackage.q1
    public final q1 w() {
        return this;
    }
}
