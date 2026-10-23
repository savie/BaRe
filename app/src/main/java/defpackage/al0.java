package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class al0 extends d44 {
    public int s0;
    public boolean t0;
    public int u0;
    public boolean v0;

    @Override // defpackage.ot1
    public final boolean A() {
        return this.v0;
    }

    @Override // defpackage.ot1
    public final boolean B() {
        return this.v0;
    }

    public final boolean T() {
        int i;
        int i2;
        int i3;
        boolean z = true;
        int i4 = 0;
        while (true) {
            i = this.r0;
            if (i4 >= i) {
                break;
            }
            ot1 ot1Var = this.q0[i4];
            if ((this.t0 || ot1Var.c()) && ((((i2 = this.s0) == 0 || i2 == 1) && !ot1Var.A()) || (((i3 = this.s0) == 2 || i3 == 3) && !ot1Var.B()))) {
                z = false;
            }
            i4++;
        }
        if (!z || i <= 0) {
            return false;
        }
        int iMax = 0;
        boolean z2 = false;
        for (int i5 = 0; i5 < this.r0; i5++) {
            ot1 ot1Var2 = this.q0[i5];
            if (this.t0 || ot1Var2.c()) {
                if (!z2) {
                    int i6 = this.s0;
                    if (i6 == 0) {
                        iMax = ot1Var2.i(2).d();
                    } else if (i6 == 1) {
                        iMax = ot1Var2.i(4).d();
                    } else if (i6 == 2) {
                        iMax = ot1Var2.i(3).d();
                    } else if (i6 == 3) {
                        iMax = ot1Var2.i(5).d();
                    }
                    z2 = true;
                }
                int i7 = this.s0;
                if (i7 == 0) {
                    iMax = Math.min(iMax, ot1Var2.i(2).d());
                } else if (i7 == 1) {
                    iMax = Math.max(iMax, ot1Var2.i(4).d());
                } else if (i7 == 2) {
                    iMax = Math.min(iMax, ot1Var2.i(3).d());
                } else if (i7 == 3) {
                    iMax = Math.max(iMax, ot1Var2.i(5).d());
                }
            }
        }
        int i8 = iMax + this.u0;
        int i9 = this.s0;
        if (i9 == 0 || i9 == 1) {
            J(i8, i8);
        } else {
            K(i8, i8);
        }
        this.v0 = true;
        return true;
    }

    public final int U() {
        int i = this.s0;
        if (i == 0 || i == 1) {
            return 0;
        }
        return (i == 2 || i == 3) ? 1 : -1;
    }

    @Override // defpackage.ot1
    public final void b(bv4 bv4Var, boolean z) {
        boolean z2;
        int i;
        int i2;
        ys1[] ys1VarArr = this.Q;
        ys1 ys1Var = this.I;
        ys1VarArr[0] = ys1Var;
        int i3 = 2;
        ys1 ys1Var2 = this.J;
        ys1VarArr[2] = ys1Var2;
        ys1 ys1Var3 = this.K;
        ys1VarArr[1] = ys1Var3;
        ys1 ys1Var4 = this.L;
        ys1VarArr[3] = ys1Var4;
        for (ys1 ys1Var5 : ys1VarArr) {
            ys1Var5.i = bv4Var.k(ys1Var5);
        }
        int i4 = this.s0;
        if (i4 < 0 || i4 >= 4) {
            return;
        }
        ys1 ys1Var6 = ys1VarArr[i4];
        if (!this.v0) {
            T();
        }
        if (this.v0) {
            this.v0 = false;
            int i5 = this.s0;
            if (i5 == 0 || i5 == 1) {
                bv4Var.d(ys1Var.i, this.Y);
                bv4Var.d(ys1Var3.i, this.Y);
                return;
            } else {
                if (i5 == 2 || i5 == 3) {
                    bv4Var.d(ys1Var2.i, this.Z);
                    bv4Var.d(ys1Var4.i, this.Z);
                    return;
                }
                return;
            }
        }
        int i6 = 0;
        while (true) {
            if (i6 >= this.r0) {
                z2 = false;
                break;
            }
            ot1 ot1Var = this.q0[i6];
            if ((this.t0 || ot1Var.c()) && ((((i2 = this.s0) == 0 || i2 == 1) && ot1Var.p0[0] == 3 && ot1Var.I.f != null && ot1Var.K.f != null) || ((i2 == 2 || i2 == 3) && ot1Var.p0[1] == 3 && ot1Var.J.f != null && ot1Var.L.f != null))) {
                z2 = true;
                break;
            }
            i6++;
        }
        boolean z3 = ys1Var.g() || ys1Var3.g();
        boolean z4 = ys1Var2.g() || ys1Var4.g();
        int i7 = !(!z2 && (((i = this.s0) == 0 && z3) || ((i == 2 && z4) || ((i == 1 && z3) || (i == 3 && z4))))) ? 4 : 5;
        int i8 = 0;
        while (i8 < this.r0) {
            ot1 ot1Var2 = this.q0[i8];
            if (this.t0 || ot1Var2.c()) {
                ej7 ej7VarK = bv4Var.k(ot1Var2.Q[this.s0]);
                ys1[] ys1VarArr2 = ot1Var2.Q;
                int i9 = this.s0;
                ys1 ys1Var7 = ys1VarArr2[i9];
                ys1Var7.i = ej7VarK;
                ys1 ys1Var8 = ys1Var7.f;
                int i10 = (ys1Var8 == null || ys1Var8.d != this) ? 0 : ys1Var7.g;
                if (i9 == 0 || i9 == i3) {
                    ej7 ej7Var = ys1Var6.i;
                    int i11 = this.u0 - i10;
                    m50 m50VarL = bv4Var.l();
                    ej7 ej7VarM = bv4Var.m();
                    ej7VarM.d = 0;
                    m50VarL.c(ej7Var, ej7VarK, ej7VarM, i11);
                    bv4Var.c(m50VarL);
                } else {
                    ej7 ej7Var2 = ys1Var6.i;
                    int i12 = this.u0 + i10;
                    m50 m50VarL2 = bv4Var.l();
                    ej7 ej7VarM2 = bv4Var.m();
                    ej7VarM2.d = 0;
                    m50VarL2.b(ej7Var2, ej7VarK, ej7VarM2, i12);
                    bv4Var.c(m50VarL2);
                }
                bv4Var.e(ys1Var6.i, ej7VarK, this.u0 + i10, i7);
            }
            i8++;
            i3 = 2;
        }
        int i13 = this.s0;
        if (i13 == 0) {
            bv4Var.e(ys1Var3.i, ys1Var.i, 0, 8);
            bv4Var.e(ys1Var.i, this.T.K.i, 0, 4);
            bv4Var.e(ys1Var.i, this.T.I.i, 0, 0);
            return;
        }
        if (i13 == 1) {
            bv4Var.e(ys1Var.i, ys1Var3.i, 0, 8);
            bv4Var.e(ys1Var.i, this.T.I.i, 0, 4);
            bv4Var.e(ys1Var.i, this.T.K.i, 0, 0);
        } else if (i13 == 2) {
            bv4Var.e(ys1Var4.i, ys1Var2.i, 0, 8);
            bv4Var.e(ys1Var2.i, this.T.L.i, 0, 4);
            bv4Var.e(ys1Var2.i, this.T.J.i, 0, 0);
        } else if (i13 == 3) {
            bv4Var.e(ys1Var2.i, ys1Var4.i, 0, 8);
            bv4Var.e(ys1Var2.i, this.T.J.i, 0, 4);
            bv4Var.e(ys1Var2.i, this.T.L.i, 0, 0);
        }
    }

    @Override // defpackage.ot1
    public final boolean c() {
        return true;
    }

    @Override // defpackage.ot1
    public final String toString() {
        String strN = dj7.n(new StringBuilder("[Barrier] "), this.h0, " {");
        for (int i = 0; i < this.r0; i++) {
            ot1 ot1Var = this.q0[i];
            if (i > 0) {
                strN = strN.concat(", ");
            }
            StringBuilder sbS = dj7.s(strN);
            sbS.append(ot1Var.h0);
            strN = sbS.toString();
        }
        return strN.concat("}");
    }
}
