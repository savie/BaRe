package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ki3 extends d44 {
    public int A0;
    public ap0 B0;
    public et1 C0;
    public int D0;
    public int E0;
    public int F0;
    public int G0;
    public int H0;
    public int I0;
    public float J0;
    public float K0;
    public float L0;
    public float M0;
    public float N0;
    public float O0;
    public int P0;
    public int Q0;
    public int R0;
    public int S0;
    public int T0;
    public int U0;
    public int V0;
    public ArrayList W0;
    public ot1[] X0;
    public ot1[] Y0;
    public int[] Z0;
    public ot1[] a1;
    public int b1;
    public int s0;
    public int t0;
    public int u0;
    public int v0;
    public int w0;
    public int x0;
    public boolean y0;
    public int z0;

    @Override // defpackage.d44
    public final void S() {
        for (int i = 0; i < this.r0; i++) {
            ot1 ot1Var = this.q0[i];
            if (ot1Var != null) {
                ot1Var.F = true;
            }
        }
    }

    public final int T(ot1 ot1Var, int i) {
        ot1 ot1Var2;
        if (ot1Var != null) {
            int[] iArr = ot1Var.p0;
            if (iArr[1] == 3) {
                int i2 = ot1Var.s;
                if (i2 != 0) {
                    if (i2 == 2) {
                        int i3 = (int) (ot1Var.z * i);
                        if (i3 != ot1Var.k()) {
                            ot1Var.g = true;
                            V(iArr[0], ot1Var.q(), 1, i3, ot1Var);
                        }
                        return i3;
                    }
                    ot1Var2 = ot1Var;
                    if (i2 == 1) {
                        return ot1Var2.k();
                    }
                    if (i2 == 3) {
                        return (int) ((ot1Var2.q() * ot1Var2.W) + 0.5f);
                    }
                }
            } else {
                ot1Var2 = ot1Var;
            }
            return ot1Var2.k();
        }
        return 0;
    }

    public final int U(ot1 ot1Var, int i) {
        ot1 ot1Var2;
        if (ot1Var != null) {
            int[] iArr = ot1Var.p0;
            if (iArr[0] == 3) {
                int i2 = ot1Var.r;
                if (i2 != 0) {
                    if (i2 == 2) {
                        int i3 = (int) (ot1Var.w * i);
                        if (i3 != ot1Var.q()) {
                            ot1Var.g = true;
                            V(1, i3, iArr[1], ot1Var.k(), ot1Var);
                        }
                        return i3;
                    }
                    ot1Var2 = ot1Var;
                    if (i2 == 1) {
                        return ot1Var2.q();
                    }
                    if (i2 == 3) {
                        return (int) ((ot1Var2.k() * ot1Var2.W) + 0.5f);
                    }
                }
            } else {
                ot1Var2 = ot1Var;
            }
            return ot1Var2.q();
        }
        return 0;
    }

    public final void V(int i, int i2, int i3, int i4, ot1 ot1Var) {
        et1 et1Var;
        ot1 ot1Var2;
        ap0 ap0Var = this.B0;
        while (true) {
            et1Var = this.C0;
            if (et1Var != null || (ot1Var2 = this.T) == null) {
                break;
            } else {
                this.C0 = ((pt1) ot1Var2).u0;
            }
        }
        ap0Var.a = i;
        ap0Var.b = i3;
        ap0Var.c = i2;
        ap0Var.d = i4;
        et1Var.b(ot1Var, ap0Var);
        ot1Var.O(ap0Var.e);
        ot1Var.L(ap0Var.f);
        ot1Var.E = ap0Var.h;
        ot1Var.I(ap0Var.g);
    }

    @Override // defpackage.ot1
    public final void b(bv4 bv4Var, boolean z) {
        ot1 ot1Var;
        float f;
        int i;
        ArrayList arrayList = this.W0;
        super.b(bv4Var, z);
        ot1 ot1Var2 = this.T;
        boolean z2 = ot1Var2 != null && ((pt1) ot1Var2).v0;
        int i2 = this.T0;
        if (i2 != 0) {
            if (i2 == 1) {
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    ((ii3) arrayList.get(i3)).b(i3, z2, i3 == size + (-1));
                    i3++;
                }
            } else if (i2 != 2) {
                if (i2 == 3) {
                    int size2 = arrayList.size();
                    int i4 = 0;
                    while (i4 < size2) {
                        ((ii3) arrayList.get(i4)).b(i4, z2, i4 == size2 + (-1));
                        i4++;
                    }
                }
            } else if (this.Z0 != null && this.Y0 != null && this.X0 != null) {
                for (int i5 = 0; i5 < this.b1; i5++) {
                    this.a1[i5].D();
                }
                int[] iArr = this.Z0;
                int i6 = iArr[0];
                int i7 = iArr[1];
                float f2 = this.J0;
                ot1 ot1Var3 = null;
                int i8 = 0;
                while (i8 < i6) {
                    if (z2) {
                        i = (i6 - i8) - 1;
                        f = 1.0f - this.J0;
                    } else {
                        f = f2;
                        i = i8;
                    }
                    ot1 ot1Var4 = this.Y0[i];
                    if (ot1Var4 != null) {
                        ys1 ys1Var = ot1Var4.I;
                        if (ot1Var4.g0 != 8) {
                            if (i8 == 0) {
                                ot1Var4.f(ys1Var, this.I, this.w0);
                                ot1Var4.i0 = this.D0;
                                ot1Var4.d0 = f;
                            }
                            if (i8 == i6 - 1) {
                                ot1Var4.f(ot1Var4.K, this.K, this.x0);
                            }
                            if (i8 > 0 && ot1Var3 != null) {
                                ys1 ys1Var2 = ot1Var3.K;
                                ot1Var4.f(ys1Var, ys1Var2, this.P0);
                                ot1Var3.f(ys1Var2, ys1Var, 0);
                            }
                            ot1Var3 = ot1Var4;
                        }
                    }
                    i8++;
                    f2 = f;
                }
                for (int i9 = 0; i9 < i7; i9++) {
                    ot1 ot1Var5 = this.X0[i9];
                    if (ot1Var5 != null) {
                        ys1 ys1Var3 = ot1Var5.J;
                        if (ot1Var5.g0 != 8) {
                            if (i9 == 0) {
                                ot1Var5.f(ys1Var3, this.J, this.s0);
                                ot1Var5.j0 = this.E0;
                                ot1Var5.e0 = this.K0;
                            }
                            if (i9 == i7 - 1) {
                                ot1Var5.f(ot1Var5.L, this.L, this.t0);
                            }
                            if (i9 > 0 && ot1Var3 != null) {
                                ys1 ys1Var4 = ot1Var3.L;
                                ot1Var5.f(ys1Var3, ys1Var4, this.Q0);
                                ot1Var3.f(ys1Var4, ys1Var3, 0);
                            }
                            ot1Var3 = ot1Var5;
                        }
                    }
                }
                for (int i10 = 0; i10 < i6; i10++) {
                    for (int i11 = 0; i11 < i7; i11++) {
                        int i12 = (i11 * i6) + i10;
                        if (this.V0 == 1) {
                            i12 = (i10 * i7) + i11;
                        }
                        ot1[] ot1VarArr = this.a1;
                        if (i12 < ot1VarArr.length && (ot1Var = ot1VarArr[i12]) != null && ot1Var.g0 != 8) {
                            ot1 ot1Var6 = this.Y0[i10];
                            ot1 ot1Var7 = this.X0[i11];
                            if (ot1Var != ot1Var6) {
                                ot1Var.f(ot1Var.I, ot1Var6.I, 0);
                                ot1Var.f(ot1Var.K, ot1Var6.K, 0);
                            }
                            if (ot1Var != ot1Var7) {
                                ot1Var.f(ot1Var.J, ot1Var7.J, 0);
                                ot1Var.f(ot1Var.L, ot1Var7.L, 0);
                            }
                        }
                    }
                }
            }
        } else if (arrayList.size() > 0) {
            ((ii3) arrayList.get(0)).b(0, z2, true);
        }
        this.y0 = false;
    }
}
