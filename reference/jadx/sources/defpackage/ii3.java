package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ii3 {
    public int a;
    public ys1 d;
    public ys1 e;
    public ys1 f;
    public ys1 g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int q;
    public final /* synthetic */ ki3 r;
    public ot1 b = null;
    public int c = 0;
    public int l = 0;
    public int m = 0;
    public int n = 0;
    public int o = 0;
    public int p = 0;

    public ii3(ki3 ki3Var, int i, ys1 ys1Var, ys1 ys1Var2, ys1 ys1Var3, ys1 ys1Var4, int i2) {
        this.r = ki3Var;
        this.a = i;
        this.d = ys1Var;
        this.e = ys1Var2;
        this.f = ys1Var3;
        this.g = ys1Var4;
        this.h = ki3Var.w0;
        this.i = ki3Var.s0;
        this.j = ki3Var.x0;
        this.k = ki3Var.t0;
        this.q = i2;
    }

    public final void a(ot1 ot1Var) {
        int i = this.a;
        int i2 = this.q;
        ki3 ki3Var = this.r;
        if (i == 0) {
            int iU = ki3Var.U(ot1Var, i2);
            if (ot1Var.p0[0] == 3) {
                this.p++;
                iU = 0;
            }
            this.l = iU + (ot1Var.g0 != 8 ? ki3Var.P0 : 0) + this.l;
            int iT = ki3Var.T(ot1Var, this.q);
            if (this.b == null || this.c < iT) {
                this.b = ot1Var;
                this.c = iT;
                this.m = iT;
            }
        } else {
            int iU2 = ki3Var.U(ot1Var, i2);
            int iT2 = ki3Var.T(ot1Var, this.q);
            if (ot1Var.p0[1] == 3) {
                this.p++;
                iT2 = 0;
            }
            this.m = iT2 + (ot1Var.g0 != 8 ? ki3Var.Q0 : 0) + this.m;
            if (this.b == null || this.c < iU2) {
                this.b = ot1Var;
                this.c = iU2;
                this.l = iU2;
            }
        }
        this.o++;
    }

    /* JADX WARN: Code duplicated, block: B:89:0x0105 A[PHI: r5 r9
      0x0105: PHI (r5v25 int) = (r5v23 int), (r5v26 int) binds: [B:95:0x0115, B:88:0x0103] A[DONT_GENERATE, DONT_INLINE]
      0x0105: PHI (r9v24 float) = (r9v22 float), (r9v27 float) binds: [B:95:0x0115, B:88:0x0103] A[DONT_GENERATE, DONT_INLINE]] */
    public final void b(int i, boolean z, boolean z2) {
        ki3 ki3Var;
        int i2;
        int i3;
        ot1 ot1Var;
        boolean z3;
        char c;
        int i4;
        float f;
        int i5;
        int i6 = this.o;
        int i7 = 0;
        while (true) {
            ki3Var = this.r;
            if (i7 >= i6 || (i5 = this.n + i7) >= ki3Var.b1) {
                break;
            }
            ot1 ot1Var2 = ki3Var.a1[i5];
            if (ot1Var2 != null) {
                ot1Var2.D();
            }
            i7++;
        }
        if (i6 == 0 || this.b == null) {
            return;
        }
        boolean z4 = z2 && i == 0;
        int i8 = -1;
        int i9 = -1;
        for (int i10 = 0; i10 < i6; i10++) {
            int i11 = this.n + (z ? (i6 - 1) - i10 : i10);
            if (i11 >= ki3Var.b1) {
                break;
            }
            ot1 ot1Var3 = ki3Var.a1[i11];
            if (ot1Var3 != null && ot1Var3.g0 == 0) {
                if (i8 == -1) {
                    i8 = i10;
                }
                i9 = i10;
            }
        }
        int i12 = this.a;
        ot1 ot1Var4 = this.b;
        if (i12 == 0) {
            ot1Var4.j0 = ki3Var.E0;
            ys1 ys1Var = ot1Var4.L;
            ys1 ys1Var2 = ot1Var4.J;
            int i13 = this.i;
            if (i > 0) {
                i13 += ki3Var.Q0;
            }
            ys1Var2.a(this.e, i13);
            if (z2) {
                ys1Var.a(this.g, this.k);
            }
            if (i > 0) {
                this.e.d.L.a(ys1Var2, 0);
            }
            if (ki3Var.S0 != 3 || ot1Var4.E) {
                ot1Var = ot1Var4;
                break;
            }
            int i14 = 0;
            while (true) {
                if (i14 < i6) {
                    int i15 = this.n + (z ? (i6 - 1) - i14 : i14);
                    if (i15 < ki3Var.b1) {
                        ot1Var = ki3Var.a1[i15];
                        if (ot1Var.E) {
                            break;
                        } else {
                            i14++;
                        }
                    }
                }
                ot1Var = ot1Var4;
                break;
            }
            int i16 = 0;
            ot1 ot1Var5 = null;
            while (i16 < i6) {
                int i17 = z ? (i6 - 1) - i16 : i16;
                int i18 = this.n + i17;
                if (i18 >= ki3Var.b1) {
                    return;
                }
                ot1 ot1Var6 = ki3Var.a1[i18];
                if (ot1Var6 == null) {
                    i6 = i6;
                    z3 = z4;
                    i9 = i9;
                    c = 3;
                } else {
                    ys1 ys1Var3 = ot1Var6.J;
                    ys1 ys1Var4 = ot1Var6.L;
                    ys1 ys1Var5 = ot1Var6.I;
                    z3 = z4;
                    if (i16 == 0) {
                        ot1Var6.f(ys1Var5, this.d, this.h);
                    }
                    if (i17 == 0) {
                        int i19 = ki3Var.D0;
                        float f2 = ki3Var.J0;
                        if (z) {
                            f2 = 1.0f - f2;
                        }
                        if (this.n == 0 && (i4 = ki3Var.F0) != -1) {
                            f = ki3Var.L0;
                            if (z) {
                                f = 1.0f - f;
                            }
                        } else if (!z2 || (i4 = ki3Var.H0) == -1) {
                            i4 = i19;
                            f = f2;
                        } else {
                            f = ki3Var.N0;
                            if (z) {
                                f = 1.0f - f;
                            }
                        }
                        ot1Var6.i0 = i4;
                        ot1Var6.d0 = f;
                    }
                    if (i16 == i6 - 1) {
                        ot1Var6.f(ot1Var6.K, this.f, this.j);
                    }
                    if (ot1Var5 != null) {
                        ys1 ys1Var6 = ot1Var5.K;
                        ys1Var5.a(ys1Var6, ki3Var.P0);
                        if (i16 == i8) {
                            int i20 = this.h;
                            if (ys1Var5.h()) {
                                ys1Var5.h = i20;
                            }
                        }
                        ys1Var6.a(ys1Var5, 0);
                        if (i16 == i9 + 1) {
                            int i21 = this.j;
                            if (ys1Var6.h()) {
                                ys1Var6.h = i21;
                            }
                        }
                    }
                    if (ot1Var6 != ot1Var4) {
                        int i22 = ki3Var.S0;
                        c = 3;
                        if (i22 == 3 && ot1Var.E && ot1Var6 != ot1Var && ot1Var6.E) {
                            ot1Var6.M.a(ot1Var.M, 0);
                        } else if (i22 == 0) {
                            ys1Var3.a(ys1Var2, 0);
                        } else if (i22 == 1) {
                            ys1Var4.a(ys1Var, 0);
                        } else if (z3) {
                            ys1Var3.a(this.e, this.i);
                            ys1Var4.a(this.g, this.k);
                        } else {
                            ys1Var3.a(ys1Var2, 0);
                            ys1Var4.a(ys1Var, 0);
                        }
                    } else {
                        c = 3;
                    }
                    ot1Var5 = ot1Var6;
                }
                i16++;
                z4 = z3;
                i9 = i9;
                i6 = i6;
            }
            return;
        }
        int i23 = i6;
        boolean z5 = z4;
        int i24 = i9;
        ot1Var4.i0 = ki3Var.D0;
        ys1 ys1Var7 = ot1Var4.I;
        ys1 ys1Var8 = ot1Var4.K;
        int i25 = this.h;
        if (i > 0) {
            i25 += ki3Var.P0;
        }
        if (z) {
            ys1Var8.a(this.f, i25);
            if (z2) {
                ys1Var7.a(this.d, this.j);
            }
            if (i > 0) {
                this.f.d.I.a(ys1Var8, 0);
            }
        } else {
            ys1Var7.a(this.d, i25);
            if (z2) {
                ys1Var8.a(this.f, this.j);
            }
            if (i > 0) {
                this.d.d.K.a(ys1Var7, 0);
            }
        }
        int i26 = 0;
        ot1 ot1Var7 = null;
        while (true) {
            int i27 = i23;
            if (i26 >= i27 || (i2 = this.n + i26) >= ki3Var.b1) {
                return;
            }
            ot1 ot1Var8 = ki3Var.a1[i2];
            if (ot1Var8 == null) {
                i23 = i27;
            } else {
                ys1 ys1Var9 = ot1Var8.I;
                ys1 ys1Var10 = ot1Var8.J;
                ys1 ys1Var11 = ot1Var8.K;
                if (i26 == 0) {
                    ot1Var8.f(ys1Var10, this.e, this.i);
                    int i28 = ki3Var.E0;
                    float f3 = ki3Var.K0;
                    if (this.n == 0) {
                        int i29 = ki3Var.G0;
                        i23 = i27;
                        i3 = -1;
                        if (i29 != -1) {
                            f3 = ki3Var.M0;
                        }
                        i28 = i29;
                        ot1Var8.j0 = i28;
                        ot1Var8.e0 = f3;
                    } else {
                        i23 = i27;
                        i3 = -1;
                    }
                    if (z2 && (i29 = ki3Var.I0) != i3) {
                        f3 = ki3Var.O0;
                        i28 = i29;
                    }
                    ot1Var8.j0 = i28;
                    ot1Var8.e0 = f3;
                } else {
                    i23 = i27;
                }
                if (i26 == i23 - 1) {
                    ot1Var8.f(ot1Var8.L, this.g, this.k);
                }
                if (ot1Var7 != null) {
                    ys1 ys1Var12 = ot1Var7.L;
                    ys1Var10.a(ys1Var12, ki3Var.Q0);
                    if (i26 == i8) {
                        int i30 = this.i;
                        if (ys1Var10.h()) {
                            ys1Var10.h = i30;
                        }
                    }
                    ys1Var12.a(ys1Var10, 0);
                    if (i26 == i24 + 1) {
                        int i31 = this.k;
                        if (ys1Var12.h()) {
                            ys1Var12.h = i31;
                        }
                    }
                }
                if (ot1Var8 != ot1Var4) {
                    int i32 = ki3Var.R0;
                    if (z) {
                        if (i32 == 0) {
                            ys1Var11.a(ys1Var8, 0);
                        } else if (i32 == 1) {
                            ys1Var9.a(ys1Var7, 0);
                        } else if (i32 == 2) {
                            ys1Var9.a(ys1Var7, 0);
                            ys1Var11.a(ys1Var8, 0);
                        }
                    } else if (i32 == 0) {
                        ys1Var9.a(ys1Var7, 0);
                    } else if (i32 == 1) {
                        ys1Var11.a(ys1Var8, 0);
                    } else if (i32 == 2) {
                        if (z5) {
                            ys1Var9.a(this.d, this.h);
                            ys1Var11.a(this.f, this.j);
                        } else {
                            ys1Var9.a(ys1Var7, 0);
                            ys1Var11.a(ys1Var8, 0);
                        }
                    }
                }
                ot1Var7 = ot1Var8;
            }
            i26++;
        }
    }

    public final int c() {
        int i = this.a;
        int i2 = this.m;
        return i == 1 ? i2 - this.r.Q0 : i2;
    }

    public final int d() {
        int i = this.a;
        int i2 = this.l;
        return i == 0 ? i2 - this.r.P0 : i2;
    }

    public final void e(int i) {
        ki3 ki3Var;
        int i2;
        int i3 = this.p;
        if (i3 == 0) {
            return;
        }
        int i4 = this.o;
        int i5 = i / i3;
        int i6 = 0;
        while (true) {
            ki3Var = this.r;
            if (i6 >= i4 || (i2 = this.n + i6) >= ki3Var.b1) {
                break;
            }
            ot1 ot1Var = ki3Var.a1[i2];
            if (this.a == 0) {
                if (ot1Var != null) {
                    int[] iArr = ot1Var.p0;
                    if (iArr[0] == 3 && ot1Var.r == 0) {
                        ki3Var.V(1, i5, iArr[1], ot1Var.k(), ot1Var);
                    }
                }
            } else if (ot1Var != null) {
                int[] iArr2 = ot1Var.p0;
                if (iArr2[1] == 3 && ot1Var.s == 0) {
                    int i7 = i5;
                    ki3Var.V(iArr2[0], ot1Var.q(), 1, i7, ot1Var);
                    i5 = i7;
                }
            }
            i6++;
        }
        this.l = 0;
        this.m = 0;
        this.b = null;
        this.c = 0;
        int i8 = this.o;
        for (int i9 = 0; i9 < i8; i9++) {
            int i10 = this.n + i9;
            if (i10 >= ki3Var.b1) {
                return;
            }
            ot1 ot1Var2 = ki3Var.a1[i10];
            if (this.a == 0) {
                int iQ = ot1Var2.q();
                int i11 = ki3Var.P0;
                if (ot1Var2.g0 == 8) {
                    i11 = 0;
                }
                this.l = iQ + i11 + this.l;
                int iT = ki3Var.T(ot1Var2, this.q);
                if (this.b == null || this.c < iT) {
                    this.b = ot1Var2;
                    this.c = iT;
                    this.m = iT;
                }
            } else {
                int iU = ki3Var.U(ot1Var2, this.q);
                int iT2 = ki3Var.T(ot1Var2, this.q);
                int i12 = ki3Var.Q0;
                if (ot1Var2.g0 == 8) {
                    i12 = 0;
                }
                this.m = iT2 + i12 + this.m;
                if (this.b == null || this.c < iU) {
                    this.b = ot1Var2;
                    this.c = iU;
                    this.l = iU;
                }
            }
        }
    }

    public final void f(int i, ys1 ys1Var, ys1 ys1Var2, ys1 ys1Var3, ys1 ys1Var4, int i2, int i3, int i4, int i5, int i6) {
        this.a = i;
        this.d = ys1Var;
        this.e = ys1Var2;
        this.f = ys1Var3;
        this.g = ys1Var4;
        this.h = i2;
        this.i = i3;
        this.j = i4;
        this.k = i5;
        this.q = i6;
    }
}
