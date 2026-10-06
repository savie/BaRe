package defpackage;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class h82 extends q1 {
    public f1 a;
    public t0 b;
    public q1 c;
    public int d;
    public q1 e;
    public final /* synthetic */ int f = 0;

    public h82(v1 v1Var) {
        int i;
        q1 q1VarD;
        q1 q1VarY = y(v1Var, 0);
        if (q1VarY instanceof f1) {
            this.a = (f1) q1VarY;
            q1VarY = y(v1Var, 1);
            i = 1;
        } else {
            i = 0;
        }
        if (q1VarY instanceof t0) {
            this.b = (t0) q1VarY;
            i++;
            q1VarY = y(v1Var, i);
        }
        if (!(q1VarY instanceof q2)) {
            this.c = q1VarY;
            i++;
            q1VarY = y(v1Var, i);
        }
        if (v1Var.size() != i + 1) {
            c6.f("input sequence too large");
            throw null;
        }
        if (!(q1VarY instanceof q2)) {
            c6.f("No tagged object found in sequence. Structure doesn't seem to be of type External");
            throw null;
        }
        q2 q2Var = (q2) q1VarY;
        int i2 = q2Var.c;
        if (i2 < 0 || i2 > 2) {
            c6.f(fz5.j(i2, "invalid encoding value: "));
            throw null;
        }
        this.d = i2;
        vm4.e(q2Var);
        if (i2 != 0) {
            if (i2 == 1) {
                q1VarD = (j1) j1.b.r(q2Var, false);
            } else {
                if (i2 != 2) {
                    c6.f("invalid tag: ".concat(vm4.q(q2Var.b, i2)));
                    throw null;
                }
                q1VarD = (u) u.b.r(q2Var, false);
            }
        } else {
            if (!q2Var.y()) {
                l0.e("object implicit - explicit expected.");
                throw null;
            }
            b0 b0Var = q2Var.d;
            q1VarD = (b0Var instanceof y0 ? (y0) b0Var : b0Var.d()).d();
        }
        this.e = q1VarD;
    }

    public static q1 y(v1 v1Var, int i) {
        if (v1Var.size() > i) {
            return v1Var.C(i).d();
        }
        c6.f("too few objects in input sequence");
        return null;
    }

    @Override // defpackage.q1, defpackage.y0
    public final int hashCode() {
        f1 f1Var = this.a;
        int iHashCode = f1Var == null ? 0 : f1Var.hashCode();
        t0 t0Var = this.b;
        int iHashCode2 = iHashCode ^ (t0Var == null ? 0 : t0Var.hashCode());
        q1 q1Var = this.c;
        return this.e.hashCode() ^ ((iHashCode2 ^ (q1Var != null ? q1Var.hashCode() : 0)) ^ this.d);
    }

    @Override // defpackage.q1
    public final boolean k(q1 q1Var) {
        h82 h82Var;
        f1 f1Var;
        f1 f1Var2;
        if (this == q1Var) {
            return true;
        }
        if (!(q1Var instanceof h82) || ((f1Var = this.a) != (f1Var2 = (h82Var = (h82) q1Var).a) && (f1Var == null || f1Var2 == null || !f1Var.equals(f1Var2)))) {
            return false;
        }
        t0 t0Var = this.b;
        t0 t0Var2 = h82Var.b;
        if (t0Var != t0Var2 && (t0Var == null || t0Var2 == null || !t0Var.equals(t0Var2))) {
            return false;
        }
        q1 q1Var2 = this.c;
        q1 q1Var3 = h82Var.c;
        return (q1Var2 == q1Var3 || !(q1Var2 == null || q1Var3 == null || !q1Var2.equals(q1Var3))) && this.d == h82Var.d && this.e.s(h82Var.e);
    }

    @Override // defpackage.q1
    public final void l(m1 m1Var, boolean z) throws IOException {
        m1Var.n(40, z);
        x().l(m1Var, false);
    }

    @Override // defpackage.q1
    public final boolean o() {
        return true;
    }

    @Override // defpackage.q1
    public final int p(boolean z) {
        return x().p(z);
    }

    @Override // defpackage.q1
    public q1 u() {
        switch (this.f) {
            case 0:
                return this;
            default:
                f1 f1Var = this.a;
                t0 t0Var = this.b;
                q1 q1Var = this.c;
                int i = this.d;
                q1 q1Var2 = this.e;
                h82 h82Var = new h82();
                h82Var.a = f1Var;
                h82Var.b = t0Var;
                h82Var.c = q1Var;
                if (i < 0 || i > 2) {
                    c6.f(fz5.j(i, "invalid encoding value: "));
                } else {
                    h82Var.d = i;
                    if (i == 1 ? j1.class.isInstance(q1Var2) : !(i == 2 && !u.class.isInstance(q1Var2))) {
                        h82Var.e = q1Var2;
                        return h82Var;
                    }
                    l0.e("unexpected object: ".concat(q1Var2.getClass().getName()));
                }
                return null;
        }
    }

    @Override // defpackage.q1
    public final q1 w() {
        int i = this.f;
        return this;
    }

    public final v1 x() {
        switch (this.f) {
            case 0:
                c0 c0Var = new c0(4);
                f1 f1Var = this.a;
                if (f1Var != null) {
                    c0Var.a(f1Var);
                }
                t0 t0Var = this.b;
                if (t0Var != null) {
                    c0Var.a(t0Var);
                }
                q1 q1Var = this.c;
                if (q1Var != null) {
                    c0Var.a(q1Var.u());
                }
                int i = this.d;
                c0Var.a(new w82(i == 0, i, this.e));
                t82 t82Var = new t82(c0Var);
                t82Var.c = -1;
                return t82Var;
            default:
                c0 c0Var2 = new c0(4);
                f1 f1Var2 = this.a;
                if (f1Var2 != null) {
                    c0Var2.a(f1Var2);
                }
                t0 t0Var2 = this.b;
                if (t0Var2 != null) {
                    c0Var2.a(t0Var2);
                }
                q1 q1Var2 = this.c;
                if (q1Var2 != null) {
                    c0Var2.a(q1Var2.w());
                }
                int i2 = this.d;
                c0Var2.a(new bi0(i2 == 0, i2, this.e));
                h92 h92Var = new h92(c0Var2);
                h92Var.c = -1;
                return h92Var;
        }
    }

    public /* synthetic */ h82() {
    }
}
