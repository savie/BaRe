package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class bi0 extends q2 {
    public final /* synthetic */ int e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ bi0(boolean z, int i, b0 b0Var) {
        super(z, i, b0Var);
        this.e = 1;
    }

    @Override // defpackage.q2
    public final v1 B(q1 q1Var) {
        switch (this.e) {
            case 0:
                return new xh0(q1Var);
            default:
                h92 h92Var = new h92(q1Var);
                h92Var.c = -1;
                return h92Var;
        }
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) throws IOException {
        int i = this.e;
        int i2 = this.c;
        int i3 = this.b;
        b0 b0Var = this.d;
        switch (i) {
            case 0:
                q1 q1VarD = b0Var.d();
                boolean zY = y();
                if (z) {
                    if (zY || q1VarD.o()) {
                        i3 |= 32;
                    }
                    m1Var.m(i3, i2);
                }
                if (!zY) {
                    q1VarD.l(m1Var, false);
                } else {
                    m1Var.f(128);
                    q1VarD.l(m1Var, true);
                    m1Var.f(0);
                    m1Var.f(0);
                }
                break;
            default:
                q1 q1VarW = b0Var.d().w();
                boolean zY2 = y();
                if (z) {
                    if (zY2 || q1VarW.o()) {
                        i3 |= 32;
                    }
                    m1Var.m(i3, i2);
                }
                if (zY2) {
                    m1Var.i(q1VarW.p(true));
                }
                q1VarW.l(m1Var.b(), zY2);
                break;
        }
    }

    @Override // defpackage.q1
    public final boolean o() {
        int i = this.e;
        b0 b0Var = this.d;
        switch (i) {
            case 0:
                return y() || b0Var.d().o();
            default:
                return y() || b0Var.d().w().o();
        }
    }

    @Override // defpackage.q1
    public final int p(boolean z) {
        int i = this.e;
        int i2 = this.c;
        b0 b0Var = this.d;
        switch (i) {
            case 0:
                q1 q1VarD = b0Var.d();
                boolean zY = y();
                int iP = q1VarD.p(zY);
                if (zY) {
                    iP += 3;
                }
                return iP + (z ? m1.e(i2) : 0);
            default:
                q1 q1VarW = b0Var.d().w();
                boolean zY2 = y();
                int iP2 = q1VarW.p(zY2);
                if (zY2) {
                    iP2 += m1.c(iP2);
                }
                return iP2 + (z ? m1.e(i2) : 0);
        }
    }

    @Override // defpackage.q2, defpackage.q1
    public q1 w() {
        switch (this.e) {
            case 1:
                return this;
            default:
                return super.w();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ bi0(int i, int i2, int i3, b0 b0Var, int i4) {
        super(i, i2, i3, b0Var);
        this.e = i4;
    }
}
