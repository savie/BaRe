package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class b24 extends ot1 {
    public float q0 = -1.0f;
    public int r0 = -1;
    public int s0 = -1;
    public ys1 t0 = this.J;
    public int u0 = 0;
    public boolean v0;

    public b24() {
        this.R.clear();
        this.R.add(this.t0);
        int length = this.Q.length;
        for (int i = 0; i < length; i++) {
            this.Q[i] = this.t0;
        }
    }

    @Override // defpackage.ot1
    public final boolean A() {
        return this.v0;
    }

    @Override // defpackage.ot1
    public final boolean B() {
        return this.v0;
    }

    @Override // defpackage.ot1
    public final void Q(bv4 bv4Var, boolean z) {
        if (this.T == null) {
            return;
        }
        ys1 ys1Var = this.t0;
        bv4Var.getClass();
        int iN = bv4.n(ys1Var);
        if (this.u0 == 1) {
            this.Y = iN;
            this.Z = 0;
            L(this.T.k());
            O(0);
            return;
        }
        this.Y = 0;
        this.Z = iN;
        O(this.T.q());
        L(0);
    }

    public final void R(int i) {
        this.t0.l(i);
        this.v0 = true;
    }

    public final void S(int i) {
        if (this.u0 == i) {
            return;
        }
        this.u0 = i;
        ArrayList arrayList = this.R;
        arrayList.clear();
        if (this.u0 == 1) {
            this.t0 = this.I;
        } else {
            this.t0 = this.J;
        }
        arrayList.add(this.t0);
        ys1[] ys1VarArr = this.Q;
        int length = ys1VarArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            ys1VarArr[i2] = this.t0;
        }
    }

    @Override // defpackage.ot1
    public final void b(bv4 bv4Var, boolean z) {
        pt1 pt1Var = (pt1) this.T;
        if (pt1Var == null) {
            return;
        }
        Object objI = pt1Var.i(2);
        Object objI2 = pt1Var.i(4);
        ot1 ot1Var = this.T;
        boolean z2 = ot1Var != null && ot1Var.p0[0] == 2;
        if (this.u0 == 0) {
            objI = pt1Var.i(3);
            objI2 = pt1Var.i(5);
            ot1 ot1Var2 = this.T;
            z2 = ot1Var2 != null && ot1Var2.p0[1] == 2;
        }
        if (this.v0) {
            ys1 ys1Var = this.t0;
            if (ys1Var.c) {
                ej7 ej7VarK = bv4Var.k(ys1Var);
                bv4Var.d(ej7VarK, this.t0.d());
                if (this.r0 != -1) {
                    if (z2) {
                        bv4Var.f(bv4Var.k(objI2), ej7VarK, 0, 5);
                    }
                } else if (this.s0 != -1 && z2) {
                    ej7 ej7VarK2 = bv4Var.k(objI2);
                    bv4Var.f(ej7VarK, bv4Var.k(objI), 0, 5);
                    bv4Var.f(ej7VarK2, ej7VarK, 0, 5);
                }
                this.v0 = false;
                return;
            }
        }
        if (this.r0 != -1) {
            ej7 ej7VarK3 = bv4Var.k(this.t0);
            bv4Var.e(ej7VarK3, bv4Var.k(objI), this.r0, 8);
            if (z2) {
                bv4Var.f(bv4Var.k(objI2), ej7VarK3, 0, 5);
                return;
            }
            return;
        }
        if (this.s0 != -1) {
            ej7 ej7VarK4 = bv4Var.k(this.t0);
            ej7 ej7VarK5 = bv4Var.k(objI2);
            bv4Var.e(ej7VarK4, ej7VarK5, -this.s0, 8);
            if (z2) {
                bv4Var.f(ej7VarK4, bv4Var.k(objI), 0, 5);
                bv4Var.f(ej7VarK5, ej7VarK4, 0, 5);
                return;
            }
            return;
        }
        if (this.q0 != -1.0f) {
            ej7 ej7VarK6 = bv4Var.k(this.t0);
            ej7 ej7VarK7 = bv4Var.k(objI2);
            float f = this.q0;
            m50 m50VarL = bv4Var.l();
            m50VarL.d.g(ej7VarK6, -1.0f);
            m50VarL.d.g(ej7VarK7, f);
            bv4Var.c(m50VarL);
        }
    }

    @Override // defpackage.ot1
    public final boolean c() {
        return true;
    }

    @Override // defpackage.ot1
    public final ys1 i(int i) {
        int iA = dj7.A(i);
        if (iA != 1) {
            if (iA != 2) {
                if (iA != 3) {
                    if (iA != 4) {
                        return null;
                    }
                }
            }
            if (this.u0 == 0) {
                return this.t0;
            }
            return null;
        }
        if (this.u0 == 1) {
            return this.t0;
        }
        return null;
    }
}
