package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dk8 extends pr8 {
    public ni2 k;
    public ro0 l;

    @Override // defpackage.ki2
    public final void a(ki2 ki2Var) {
        float f;
        float f2;
        float f3;
        int i;
        if (dj7.A(this.j) == 3) {
            ot1 ot1Var = this.b;
            l(ot1Var.J, ot1Var.L, 1);
            return;
        }
        rl2 rl2Var = this.e;
        if (rl2Var.c && !rl2Var.j && this.d == 3) {
            ot1 ot1Var2 = this.b;
            int i2 = ot1Var2.s;
            if (i2 == 2) {
                ot1 ot1Var3 = ot1Var2.T;
                if (ot1Var3 != null) {
                    rl2 rl2Var2 = ot1Var3.e.e;
                    if (rl2Var2.j) {
                        rl2Var.d((int) ((rl2Var2.g * ot1Var2.z) + 0.5f));
                    }
                }
            } else if (i2 == 3) {
                rl2 rl2Var3 = ot1Var2.d.e;
                if (rl2Var3.j) {
                    int i3 = ot1Var2.X;
                    if (i3 != -1) {
                        if (i3 == 0) {
                            f3 = rl2Var3.g * ot1Var2.W;
                            i = (int) (f3 + 0.5f);
                        } else if (i3 != 1) {
                            i = 0;
                        } else {
                            f = rl2Var3.g;
                            f2 = ot1Var2.W;
                        }
                        rl2Var.d(i);
                    } else {
                        f = rl2Var3.g;
                        f2 = ot1Var2.W;
                    }
                    f3 = f / f2;
                    i = (int) (f3 + 0.5f);
                    rl2Var.d(i);
                }
            }
        }
        ni2 ni2Var = this.h;
        boolean z = ni2Var.c;
        ArrayList arrayList = ni2Var.l;
        if (z) {
            ni2 ni2Var2 = this.i;
            boolean z2 = ni2Var2.c;
            ArrayList arrayList2 = ni2Var2.l;
            if (z2) {
                if (ni2Var.j && ni2Var2.j && rl2Var.j) {
                    return;
                }
                if (!rl2Var.j && this.d == 3) {
                    ot1 ot1Var4 = this.b;
                    if (ot1Var4.r == 0 && !ot1Var4.y()) {
                        ni2 ni2Var3 = (ni2) arrayList.get(0);
                        ni2 ni2Var4 = (ni2) arrayList2.get(0);
                        int i4 = ni2Var3.g + ni2Var.f;
                        int i5 = ni2Var4.g + ni2Var2.f;
                        ni2Var.d(i4);
                        ni2Var2.d(i5);
                        rl2Var.d(i5 - i4);
                        return;
                    }
                }
                if (!rl2Var.j && this.d == 3 && this.a == 1 && arrayList.size() > 0 && arrayList2.size() > 0) {
                    ni2 ni2Var5 = (ni2) arrayList.get(0);
                    int i6 = (((ni2) arrayList2.get(0)).g + ni2Var2.f) - (ni2Var5.g + ni2Var.f);
                    int i7 = rl2Var.m;
                    if (i6 < i7) {
                        rl2Var.d(i6);
                    } else {
                        rl2Var.d(i7);
                    }
                }
                if (rl2Var.j && arrayList.size() > 0 && arrayList2.size() > 0) {
                    ni2 ni2Var6 = (ni2) arrayList.get(0);
                    ni2 ni2Var7 = (ni2) arrayList2.get(0);
                    int i8 = ni2Var6.g;
                    int i9 = ni2Var.f + i8;
                    int i10 = ni2Var7.g;
                    int i11 = ni2Var2.f + i10;
                    float f4 = this.b.e0;
                    if (ni2Var6 == ni2Var7) {
                        f4 = 0.5f;
                    } else {
                        i8 = i9;
                        i10 = i11;
                    }
                    ni2Var.d((int) ((((i10 - i8) - rl2Var.g) * f4) + i8 + 0.5f));
                    ni2Var2.d(ni2Var.g + rl2Var.g);
                }
            }
        }
    }

    @Override // defpackage.pr8
    public final void d() {
        ot1 ot1Var;
        ot1 ot1Var2;
        ot1 ot1Var3;
        ot1 ot1Var4;
        ni2 ni2Var = this.k;
        ot1 ot1Var5 = this.b;
        boolean z = ot1Var5.a;
        rl2 rl2Var = this.e;
        if (z) {
            rl2Var.d(ot1Var5.k());
        }
        boolean z2 = rl2Var.j;
        ArrayList arrayList = rl2Var.k;
        ArrayList arrayList2 = rl2Var.l;
        ni2 ni2Var2 = this.i;
        ni2 ni2Var3 = this.h;
        if (!z2) {
            ot1 ot1Var6 = this.b;
            this.d = ot1Var6.p0[1];
            if (ot1Var6.E) {
                this.l = new ro0(this);
            }
            int i = this.d;
            if (i != 3) {
                if (i == 4 && (ot1Var4 = this.b.T) != null && ot1Var4.p0[1] == 1) {
                    int iK = (ot1Var4.k() - this.b.J.e()) - this.b.L.e();
                    pr8.b(ni2Var3, ot1Var4.e.h, this.b.J.e());
                    pr8.b(ni2Var2, ot1Var4.e.i, -this.b.L.e());
                    rl2Var.d(iK);
                    return;
                }
                if (i == 1) {
                    rl2Var.d(this.b.k());
                }
            }
        } else if (this.d == 4 && (ot1Var2 = (ot1Var = this.b).T) != null && ot1Var2.p0[1] == 1) {
            pr8.b(ni2Var3, ot1Var2.e.h, ot1Var.J.e());
            pr8.b(ni2Var2, ot1Var2.e.i, -this.b.L.e());
            return;
        }
        boolean z3 = rl2Var.j;
        if (z3) {
            ot1 ot1Var7 = this.b;
            if (ot1Var7.a) {
                ys1[] ys1VarArr = ot1Var7.Q;
                ys1 ys1Var = ys1VarArr[2];
                ys1 ys1Var2 = ys1Var.f;
                if (ys1Var2 != null && ys1VarArr[3].f != null) {
                    boolean zY = ot1Var7.y();
                    ot1 ot1Var8 = this.b;
                    if (zY) {
                        ni2Var3.f = ot1Var8.Q[2].e();
                        ni2Var2.f = -this.b.Q[3].e();
                    } else {
                        ni2 ni2VarH = pr8.h(ot1Var8.Q[2]);
                        if (ni2VarH != null) {
                            pr8.b(ni2Var3, ni2VarH, this.b.Q[2].e());
                        }
                        ni2 ni2VarH2 = pr8.h(this.b.Q[3]);
                        if (ni2VarH2 != null) {
                            pr8.b(ni2Var2, ni2VarH2, -this.b.Q[3].e());
                        }
                        ni2Var3.b = true;
                        ni2Var2.b = true;
                    }
                    ot1 ot1Var9 = this.b;
                    if (ot1Var9.E) {
                        pr8.b(ni2Var, ni2Var3, ot1Var9.a0);
                        return;
                    }
                    return;
                }
                if (ys1Var2 != null) {
                    ni2 ni2VarH3 = pr8.h(ys1Var);
                    if (ni2VarH3 != null) {
                        pr8.b(ni2Var3, ni2VarH3, this.b.Q[2].e());
                        pr8.b(ni2Var2, ni2Var3, rl2Var.g);
                        ot1 ot1Var10 = this.b;
                        if (ot1Var10.E) {
                            pr8.b(ni2Var, ni2Var3, ot1Var10.a0);
                            return;
                        }
                        return;
                    }
                    return;
                }
                ys1 ys1Var3 = ys1VarArr[3];
                if (ys1Var3.f != null) {
                    ni2 ni2VarH4 = pr8.h(ys1Var3);
                    if (ni2VarH4 != null) {
                        pr8.b(ni2Var2, ni2VarH4, -this.b.Q[3].e());
                        pr8.b(ni2Var3, ni2Var2, -rl2Var.g);
                    }
                    ot1 ot1Var11 = this.b;
                    if (ot1Var11.E) {
                        pr8.b(ni2Var, ni2Var3, ot1Var11.a0);
                        return;
                    }
                    return;
                }
                ys1 ys1Var4 = ys1VarArr[4];
                if (ys1Var4.f != null) {
                    ni2 ni2VarH5 = pr8.h(ys1Var4);
                    if (ni2VarH5 != null) {
                        pr8.b(ni2Var, ni2VarH5, 0);
                        pr8.b(ni2Var3, ni2Var, -this.b.a0);
                        pr8.b(ni2Var2, ni2Var3, rl2Var.g);
                        return;
                    }
                    return;
                }
                if ((ot1Var7 instanceof d44) || ot1Var7.T == null || ot1Var7.i(7).f != null) {
                    return;
                }
                ot1 ot1Var12 = this.b;
                pr8.b(ni2Var3, ot1Var12.T.e.h, ot1Var12.s());
                pr8.b(ni2Var2, ni2Var3, rl2Var.g);
                ot1 ot1Var13 = this.b;
                if (ot1Var13.E) {
                    pr8.b(ni2Var, ni2Var3, ot1Var13.a0);
                    return;
                }
                return;
            }
        }
        if (z3 || this.d != 3) {
            rl2Var.b(this);
        } else {
            ot1 ot1Var14 = this.b;
            int i2 = ot1Var14.s;
            if (i2 == 2) {
                ot1 ot1Var15 = ot1Var14.T;
                if (ot1Var15 != null) {
                    rl2 rl2Var2 = ot1Var15.e.e;
                    arrayList2.add(rl2Var2);
                    rl2Var2.k.add(rl2Var);
                    rl2Var.b = true;
                    arrayList.add(ni2Var3);
                    arrayList.add(ni2Var2);
                }
            } else if (i2 == 3 && !ot1Var14.y()) {
                ot1 ot1Var16 = this.b;
                if (ot1Var16.r != 3) {
                    rl2 rl2Var3 = ot1Var16.d.e;
                    arrayList2.add(rl2Var3);
                    rl2Var3.k.add(rl2Var);
                    rl2Var.b = true;
                    arrayList.add(ni2Var3);
                    arrayList.add(ni2Var2);
                }
            }
        }
        ot1 ot1Var17 = this.b;
        ys1[] ys1VarArr2 = ot1Var17.Q;
        ys1 ys1Var5 = ys1VarArr2[2];
        ys1 ys1Var6 = ys1Var5.f;
        if (ys1Var6 != null && ys1VarArr2[3].f != null) {
            boolean zY2 = ot1Var17.y();
            ot1 ot1Var18 = this.b;
            if (zY2) {
                ni2Var3.f = ot1Var18.Q[2].e();
                ni2Var2.f = -this.b.Q[3].e();
            } else {
                ni2 ni2VarH6 = pr8.h(ot1Var18.Q[2]);
                ni2 ni2VarH7 = pr8.h(this.b.Q[3]);
                if (ni2VarH6 != null) {
                    ni2VarH6.b(this);
                }
                if (ni2VarH7 != null) {
                    ni2VarH7.b(this);
                }
                this.j = 4;
            }
            if (this.b.E) {
                c(ni2Var, ni2Var3, 1, this.l);
            }
        } else if (ys1Var6 != null) {
            ni2 ni2VarH8 = pr8.h(ys1Var5);
            if (ni2VarH8 != null) {
                pr8.b(ni2Var3, ni2VarH8, this.b.Q[2].e());
                c(ni2Var2, ni2Var3, 1, rl2Var);
                if (this.b.E) {
                    c(ni2Var, ni2Var3, 1, this.l);
                }
                if (this.d == 3) {
                    ot1 ot1Var19 = this.b;
                    if (ot1Var19.W > 0.0f) {
                        d64 d64Var = ot1Var19.d;
                        if (d64Var.d == 3) {
                            d64Var.e.k.add(rl2Var);
                            arrayList2.add(this.b.d.e);
                            rl2Var.a = this;
                        }
                    }
                }
            }
        } else {
            ys1 ys1Var7 = ys1VarArr2[3];
            if (ys1Var7.f != null) {
                ni2 ni2VarH9 = pr8.h(ys1Var7);
                if (ni2VarH9 != null) {
                    pr8.b(ni2Var2, ni2VarH9, -this.b.Q[3].e());
                    c(ni2Var3, ni2Var2, -1, rl2Var);
                    if (this.b.E) {
                        c(ni2Var, ni2Var3, 1, this.l);
                    }
                }
            } else {
                ys1 ys1Var8 = ys1VarArr2[4];
                if (ys1Var8.f != null) {
                    ni2 ni2VarH10 = pr8.h(ys1Var8);
                    if (ni2VarH10 != null) {
                        pr8.b(ni2Var, ni2VarH10, 0);
                        c(ni2Var3, ni2Var, -1, this.l);
                        c(ni2Var2, ni2Var3, 1, rl2Var);
                    }
                } else if (!(ot1Var17 instanceof d44) && (ot1Var3 = ot1Var17.T) != null) {
                    pr8.b(ni2Var3, ot1Var3.e.h, ot1Var17.s());
                    c(ni2Var2, ni2Var3, 1, rl2Var);
                    if (this.b.E) {
                        c(ni2Var, ni2Var3, 1, this.l);
                    }
                    if (this.d == 3) {
                        ot1 ot1Var20 = this.b;
                        if (ot1Var20.W > 0.0f) {
                            d64 d64Var2 = ot1Var20.d;
                            if (d64Var2.d == 3) {
                                d64Var2.e.k.add(rl2Var);
                                arrayList2.add(this.b.d.e);
                                rl2Var.a = this;
                            }
                        }
                    }
                }
            }
        }
        if (arrayList2.size() == 0) {
            rl2Var.c = true;
        }
    }

    @Override // defpackage.pr8
    public final void e() {
        ni2 ni2Var = this.h;
        if (ni2Var.j) {
            this.b.Z = ni2Var.g;
        }
    }

    @Override // defpackage.pr8
    public final void f() {
        this.c = null;
        this.h.c();
        this.i.c();
        this.k.c();
        this.e.c();
        this.g = false;
    }

    @Override // defpackage.pr8
    public final boolean k() {
        return this.d != 3 || this.b.s == 0;
    }

    public final void m() {
        this.g = false;
        ni2 ni2Var = this.h;
        ni2Var.c();
        ni2Var.j = false;
        ni2 ni2Var2 = this.i;
        ni2Var2.c();
        ni2Var2.j = false;
        ni2 ni2Var3 = this.k;
        ni2Var3.c();
        ni2Var3.j = false;
        this.e.j = false;
    }

    public final String toString() {
        return "VerticalRun " + this.b.h0;
    }
}
