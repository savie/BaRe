package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d64 extends pr8 {
    public static final int[] k = new int[2];

    public static void m(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 == 0) {
                iArr[0] = (int) ((i7 * f) + 0.5f);
                iArr[1] = i7;
                return;
            } else {
                if (i5 != 1) {
                    return;
                }
                iArr[0] = i6;
                iArr[1] = (int) ((i6 * f) + 0.5f);
                return;
            }
        }
        int i8 = (int) ((i7 * f) + 0.5f);
        int i9 = (int) ((i6 / f) + 0.5f);
        if (i8 <= i6) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else if (i9 <= i7) {
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    /* JADX WARN: Code duplicated, block: B:116:0x0268  */
    /* JADX WARN: Code duplicated, block: B:118:0x0278  */
    /* JADX WARN: Code duplicated, block: B:11:0x0026  */
    @Override // defpackage.ki2
    public final void a(ki2 ki2Var) {
        float f;
        int iG;
        int i;
        int iG2;
        float f2;
        float f3;
        float f4;
        int i2;
        if (dj7.A(this.j) == 3) {
            ot1 ot1Var = this.b;
            l(ot1Var.I, ot1Var.K, 0);
            return;
        }
        rl2 rl2Var = this.e;
        boolean z = rl2Var.j;
        ni2 ni2Var = this.h;
        ni2 ni2Var2 = this.i;
        if (z || this.d != 3) {
            f = 0.5f;
        } else {
            ot1 ot1Var2 = this.b;
            int i3 = ot1Var2.r;
            if (i3 == 2) {
                f = 0.5f;
                ot1 ot1Var3 = ot1Var2.T;
                if (ot1Var3 != null) {
                    rl2 rl2Var2 = ot1Var3.d.e;
                    if (rl2Var2.j) {
                        rl2Var.d((int) ((rl2Var2.g * ot1Var2.w) + 0.5f));
                    }
                }
            } else if (i3 == 3) {
                int i4 = ot1Var2.s;
                if (i4 == 0 || i4 == 3) {
                    dk8 dk8Var = ot1Var2.e;
                    ni2 ni2Var3 = dk8Var.h;
                    ni2 ni2Var4 = dk8Var.i;
                    boolean z2 = ot1Var2.I.f != null;
                    boolean z3 = ot1Var2.J.f != null;
                    boolean z4 = ot1Var2.K.f != null;
                    boolean z5 = ot1Var2.L.f != null;
                    f = 0.5f;
                    int i5 = ot1Var2.X;
                    if (z2 && z3 && z4 && z5) {
                        float f5 = ot1Var2.W;
                        boolean z6 = ni2Var3.j;
                        ArrayList arrayList = ni2Var3.l;
                        int[] iArr = k;
                        if (z6 && ni2Var4.j) {
                            if (ni2Var.c && ni2Var2.c) {
                                m(iArr, ((ni2) ni2Var.l.get(0)).g + ni2Var.f, ((ni2) ni2Var2.l.get(0)).g - ni2Var2.f, ni2Var3.g + ni2Var3.f, ni2Var4.g - ni2Var4.f, f5, i5);
                                rl2Var.d(iArr[0]);
                                this.b.e.e.d(iArr[1]);
                                return;
                            }
                            return;
                        }
                        if (ni2Var.j && ni2Var2.j) {
                            if (!ni2Var3.c || !ni2Var4.c) {
                                return;
                            }
                            m(iArr, ni2Var.g + ni2Var.f, ni2Var2.g - ni2Var2.f, ((ni2) arrayList.get(0)).g + ni2Var3.f, ((ni2) ni2Var4.l.get(0)).g - ni2Var4.f, f5, i5);
                            rl2Var.d(iArr[0]);
                            this.b.e.e.d(iArr[1]);
                        }
                        if (!ni2Var.c || !ni2Var2.c || !ni2Var3.c || !ni2Var4.c) {
                            return;
                        }
                        m(iArr, ((ni2) ni2Var.l.get(0)).g + ni2Var.f, ((ni2) ni2Var2.l.get(0)).g - ni2Var2.f, ((ni2) arrayList.get(0)).g + ni2Var3.f, ((ni2) ni2Var4.l.get(0)).g - ni2Var4.f, f5, i5);
                        rl2Var.d(iArr[0]);
                        this.b.e.e.d(iArr[1]);
                    } else if (z2 && z4) {
                        if (!ni2Var.c || !ni2Var2.c) {
                            return;
                        }
                        float f6 = ot1Var2.W;
                        int i6 = ((ni2) ni2Var.l.get(0)).g + ni2Var.f;
                        int i7 = ((ni2) ni2Var2.l.get(0)).g - ni2Var2.f;
                        if (i5 == -1 || i5 == 0) {
                            int iG3 = g(i7 - i6, 0);
                            int i8 = (int) ((iG3 * f6) + 0.5f);
                            int iG4 = g(i8, 1);
                            if (i8 != iG4) {
                                iG3 = (int) ((iG4 / f6) + 0.5f);
                            }
                            rl2Var.d(iG3);
                            this.b.e.e.d(iG4);
                        } else if (i5 == 1) {
                            int iG5 = g(i7 - i6, 0);
                            int i9 = (int) ((iG5 / f6) + 0.5f);
                            int iG6 = g(i9, 1);
                            if (i9 != iG6) {
                                iG5 = (int) ((iG6 * f6) + 0.5f);
                            }
                            rl2Var.d(iG5);
                            this.b.e.e.d(iG6);
                        }
                    } else if (z3 && z5) {
                        if (!ni2Var3.c || !ni2Var4.c) {
                            return;
                        }
                        float f7 = ot1Var2.W;
                        int i10 = ((ni2) ni2Var3.l.get(0)).g + ni2Var3.f;
                        int i11 = ((ni2) ni2Var4.l.get(0)).g - ni2Var4.f;
                        if (i5 == -1) {
                            iG = g(i11 - i10, 1);
                            i = (int) ((iG / f7) + 0.5f);
                            iG2 = g(i, 0);
                            if (i != iG2) {
                                iG = (int) ((iG2 * f7) + 0.5f);
                            }
                            rl2Var.d(iG2);
                            this.b.e.e.d(iG);
                        } else if (i5 == 0) {
                            int iG7 = g(i11 - i10, 1);
                            int i12 = (int) ((iG7 * f7) + 0.5f);
                            int iG8 = g(i12, 0);
                            if (i12 != iG8) {
                                iG7 = (int) ((iG8 / f7) + 0.5f);
                            }
                            rl2Var.d(iG8);
                            this.b.e.e.d(iG7);
                        } else if (i5 == 1) {
                            iG = g(i11 - i10, 1);
                            i = (int) ((iG / f7) + 0.5f);
                            iG2 = g(i, 0);
                            if (i != iG2) {
                                iG = (int) ((iG2 * f7) + 0.5f);
                            }
                            rl2Var.d(iG2);
                            this.b.e.e.d(iG);
                        }
                    }
                } else {
                    int i13 = ot1Var2.X;
                    if (i13 != -1) {
                        if (i13 == 0) {
                            f4 = ot1Var2.e.e.g / ot1Var2.W;
                            i2 = (int) (f4 + 0.5f);
                        } else if (i13 != 1) {
                            i2 = 0;
                        } else {
                            f2 = ot1Var2.e.e.g;
                            f3 = ot1Var2.W;
                        }
                        rl2Var.d(i2);
                        f = 0.5f;
                    } else {
                        f2 = ot1Var2.e.e.g;
                        f3 = ot1Var2.W;
                    }
                    f4 = f2 * f3;
                    i2 = (int) (f4 + 0.5f);
                    rl2Var.d(i2);
                    f = 0.5f;
                }
            } else {
                f = 0.5f;
            }
        }
        boolean z7 = ni2Var.c;
        ArrayList arrayList2 = ni2Var.l;
        if (z7) {
            boolean z8 = ni2Var2.c;
            ArrayList arrayList3 = ni2Var2.l;
            if (z8) {
                if (ni2Var.j && ni2Var2.j && rl2Var.j) {
                    return;
                }
                if (!rl2Var.j && this.d == 3) {
                    ot1 ot1Var4 = this.b;
                    if (ot1Var4.r == 0 && !ot1Var4.x()) {
                        ni2 ni2Var5 = (ni2) arrayList2.get(0);
                        ni2 ni2Var6 = (ni2) arrayList3.get(0);
                        int i14 = ni2Var5.g + ni2Var.f;
                        int i15 = ni2Var6.g + ni2Var2.f;
                        ni2Var.d(i14);
                        ni2Var2.d(i15);
                        rl2Var.d(i15 - i14);
                        return;
                    }
                }
                if (!rl2Var.j && this.d == 3 && this.a == 1 && arrayList2.size() > 0 && arrayList3.size() > 0) {
                    int iMin = Math.min((((ni2) arrayList3.get(0)).g + ni2Var2.f) - (((ni2) arrayList2.get(0)).g + ni2Var.f), rl2Var.m);
                    ot1 ot1Var5 = this.b;
                    int i16 = ot1Var5.v;
                    int iMax = Math.max(ot1Var5.u, iMin);
                    if (i16 > 0) {
                        iMax = Math.min(i16, iMax);
                    }
                    rl2Var.d(iMax);
                }
                if (rl2Var.j) {
                    ni2 ni2Var7 = (ni2) arrayList2.get(0);
                    ni2 ni2Var8 = (ni2) arrayList3.get(0);
                    int i17 = ni2Var7.g;
                    int i18 = ni2Var.f + i17;
                    int i19 = ni2Var8.g;
                    int i20 = ni2Var2.f + i19;
                    float f8 = this.b.d0;
                    if (ni2Var7 == ni2Var8) {
                        f8 = f;
                    } else {
                        i17 = i18;
                        i19 = i20;
                    }
                    ni2Var.d((int) ((((i19 - i17) - rl2Var.g) * f8) + i17 + f));
                    ni2Var2.d(ni2Var.g + rl2Var.g);
                }
            }
        }
    }

    @Override // defpackage.pr8
    public final void d() {
        ot1 ot1Var;
        ot1 ot1Var2;
        int i;
        ot1 ot1Var3;
        ot1 ot1Var4;
        int i2;
        ot1 ot1Var5 = this.b;
        boolean z = ot1Var5.a;
        rl2 rl2Var = this.e;
        if (z) {
            rl2Var.d(ot1Var5.q());
        }
        boolean z2 = rl2Var.j;
        ArrayList arrayList = rl2Var.k;
        ArrayList arrayList2 = rl2Var.l;
        ni2 ni2Var = this.i;
        ni2 ni2Var2 = this.h;
        if (!z2) {
            ot1 ot1Var6 = this.b;
            int i3 = ot1Var6.p0[0];
            this.d = i3;
            if (i3 != 3) {
                if (i3 == 4 && (ot1Var4 = ot1Var6.T) != null && ((i2 = ot1Var4.p0[0]) == 1 || i2 == 4)) {
                    int iQ = (ot1Var4.q() - this.b.I.e()) - this.b.K.e();
                    pr8.b(ni2Var2, ot1Var4.d.h, this.b.I.e());
                    pr8.b(ni2Var, ot1Var4.d.i, -this.b.K.e());
                    rl2Var.d(iQ);
                    return;
                }
                if (i3 == 1) {
                    rl2Var.d(ot1Var6.q());
                }
            }
        } else if (this.d == 4 && (ot1Var2 = (ot1Var = this.b).T) != null && ((i = ot1Var2.p0[0]) == 1 || i == 4)) {
            pr8.b(ni2Var2, ot1Var2.d.h, ot1Var.I.e());
            pr8.b(ni2Var, ot1Var2.d.i, -this.b.K.e());
            return;
        }
        if (rl2Var.j) {
            ot1 ot1Var7 = this.b;
            if (ot1Var7.a) {
                ys1[] ys1VarArr = ot1Var7.Q;
                ys1 ys1Var = ys1VarArr[0];
                ys1 ys1Var2 = ys1Var.f;
                if (ys1Var2 != null && ys1VarArr[1].f != null) {
                    boolean zX = ot1Var7.x();
                    ot1 ot1Var8 = this.b;
                    if (zX) {
                        ni2Var2.f = ot1Var8.Q[0].e();
                        ni2Var.f = -this.b.Q[1].e();
                        return;
                    }
                    ni2 ni2VarH = pr8.h(ot1Var8.Q[0]);
                    if (ni2VarH != null) {
                        pr8.b(ni2Var2, ni2VarH, this.b.Q[0].e());
                    }
                    ni2 ni2VarH2 = pr8.h(this.b.Q[1]);
                    if (ni2VarH2 != null) {
                        pr8.b(ni2Var, ni2VarH2, -this.b.Q[1].e());
                    }
                    ni2Var2.b = true;
                    ni2Var.b = true;
                    return;
                }
                if (ys1Var2 != null) {
                    ni2 ni2VarH3 = pr8.h(ys1Var);
                    if (ni2VarH3 != null) {
                        pr8.b(ni2Var2, ni2VarH3, this.b.Q[0].e());
                        pr8.b(ni2Var, ni2Var2, rl2Var.g);
                        return;
                    }
                    return;
                }
                ys1 ys1Var3 = ys1VarArr[1];
                if (ys1Var3.f != null) {
                    ni2 ni2VarH4 = pr8.h(ys1Var3);
                    if (ni2VarH4 != null) {
                        pr8.b(ni2Var, ni2VarH4, -this.b.Q[1].e());
                        pr8.b(ni2Var2, ni2Var, -rl2Var.g);
                        return;
                    }
                    return;
                }
                if ((ot1Var7 instanceof d44) || ot1Var7.T == null || ot1Var7.i(7).f != null) {
                    return;
                }
                ot1 ot1Var9 = this.b;
                pr8.b(ni2Var2, ot1Var9.T.d.h, ot1Var9.r());
                pr8.b(ni2Var, ni2Var2, rl2Var.g);
                return;
            }
        }
        if (this.d == 3) {
            ot1 ot1Var10 = this.b;
            int i4 = ot1Var10.r;
            if (i4 == 2) {
                ot1 ot1Var11 = ot1Var10.T;
                if (ot1Var11 != null) {
                    rl2 rl2Var2 = ot1Var11.e.e;
                    arrayList2.add(rl2Var2);
                    rl2Var2.k.add(rl2Var);
                    rl2Var.b = true;
                    arrayList.add(ni2Var2);
                    arrayList.add(ni2Var);
                }
            } else if (i4 == 3) {
                if (ot1Var10.s == 3) {
                    ni2Var2.a = this;
                    ni2Var.a = this;
                    dk8 dk8Var = ot1Var10.e;
                    dk8Var.h.a = this;
                    dk8Var.i.a = this;
                    rl2Var.a = this;
                    if (ot1Var10.y()) {
                        arrayList2.add(this.b.e.e);
                        this.b.e.e.k.add(rl2Var);
                        dk8 dk8Var2 = this.b.e;
                        dk8Var2.e.a = this;
                        arrayList2.add(dk8Var2.h);
                        arrayList2.add(this.b.e.i);
                        this.b.e.h.k.add(rl2Var);
                        this.b.e.i.k.add(rl2Var);
                    } else {
                        boolean zX2 = this.b.x();
                        ot1 ot1Var12 = this.b;
                        if (zX2) {
                            ot1Var12.e.e.l.add(rl2Var);
                            arrayList.add(this.b.e.e);
                        } else {
                            ot1Var12.e.e.l.add(rl2Var);
                        }
                    }
                } else {
                    rl2 rl2Var3 = ot1Var10.e.e;
                    arrayList2.add(rl2Var3);
                    rl2Var3.k.add(rl2Var);
                    this.b.e.h.k.add(rl2Var);
                    this.b.e.i.k.add(rl2Var);
                    rl2Var.b = true;
                    arrayList.add(ni2Var2);
                    arrayList.add(ni2Var);
                    ni2Var2.l.add(rl2Var);
                    ni2Var.l.add(rl2Var);
                }
            }
        }
        ot1 ot1Var13 = this.b;
        ys1[] ys1VarArr2 = ot1Var13.Q;
        ys1 ys1Var4 = ys1VarArr2[0];
        ys1 ys1Var5 = ys1Var4.f;
        if (ys1Var5 != null && ys1VarArr2[1].f != null) {
            boolean zX3 = ot1Var13.x();
            ot1 ot1Var14 = this.b;
            if (zX3) {
                ni2Var2.f = ot1Var14.Q[0].e();
                ni2Var.f = -this.b.Q[1].e();
                return;
            }
            ni2 ni2VarH5 = pr8.h(ot1Var14.Q[0]);
            ni2 ni2VarH6 = pr8.h(this.b.Q[1]);
            if (ni2VarH5 != null) {
                ni2VarH5.b(this);
            }
            if (ni2VarH6 != null) {
                ni2VarH6.b(this);
            }
            this.j = 4;
            return;
        }
        if (ys1Var5 != null) {
            ni2 ni2VarH7 = pr8.h(ys1Var4);
            if (ni2VarH7 != null) {
                pr8.b(ni2Var2, ni2VarH7, this.b.Q[0].e());
                c(ni2Var, ni2Var2, 1, rl2Var);
                return;
            }
            return;
        }
        ys1 ys1Var6 = ys1VarArr2[1];
        if (ys1Var6.f != null) {
            ni2 ni2VarH8 = pr8.h(ys1Var6);
            if (ni2VarH8 != null) {
                pr8.b(ni2Var, ni2VarH8, -this.b.Q[1].e());
                c(ni2Var2, ni2Var, -1, rl2Var);
                return;
            }
            return;
        }
        if ((ot1Var13 instanceof d44) || (ot1Var3 = ot1Var13.T) == null) {
            return;
        }
        pr8.b(ni2Var2, ot1Var3.d.h, ot1Var13.r());
        c(ni2Var, ni2Var2, 1, rl2Var);
    }

    @Override // defpackage.pr8
    public final void e() {
        ni2 ni2Var = this.h;
        if (ni2Var.j) {
            this.b.Y = ni2Var.g;
        }
    }

    @Override // defpackage.pr8
    public final void f() {
        this.c = null;
        this.h.c();
        this.i.c();
        this.e.c();
        this.g = false;
    }

    @Override // defpackage.pr8
    public final boolean k() {
        return this.d != 3 || this.b.r == 0;
    }

    public final void n() {
        this.g = false;
        ni2 ni2Var = this.h;
        ni2Var.c();
        ni2Var.j = false;
        ni2 ni2Var2 = this.i;
        ni2Var2.c();
        ni2Var2.j = false;
        this.e.j = false;
    }

    public final String toString() {
        return "HorizontalRun " + this.b.h0;
    }
}
