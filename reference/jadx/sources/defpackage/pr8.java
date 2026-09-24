package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class pr8 implements ki2 {
    public int a;
    public ot1 b;
    public sq6 c;
    public int d;
    public final rl2 e = new rl2(this);
    public int f = 0;
    public boolean g = false;
    public final ni2 h = new ni2(this);
    public final ni2 i = new ni2(this);
    public int j = 1;

    public pr8(ot1 ot1Var) {
        this.b = ot1Var;
    }

    public static void b(ni2 ni2Var, ni2 ni2Var2, int i) {
        ni2Var.l.add(ni2Var2);
        ni2Var.f = i;
        ni2Var2.k.add(ni2Var);
    }

    public static ni2 h(ys1 ys1Var) {
        ys1 ys1Var2 = ys1Var.f;
        if (ys1Var2 == null) {
            return null;
        }
        ot1 ot1Var = ys1Var2.d;
        int iA = dj7.A(ys1Var2.e);
        if (iA == 1) {
            return ot1Var.d.h;
        }
        if (iA == 2) {
            return ot1Var.e.h;
        }
        if (iA == 3) {
            return ot1Var.d.i;
        }
        if (iA == 4) {
            return ot1Var.e.i;
        }
        if (iA != 5) {
            return null;
        }
        return ot1Var.e.k;
    }

    public static ni2 i(ys1 ys1Var, int i) {
        ys1 ys1Var2 = ys1Var.f;
        if (ys1Var2 == null) {
            return null;
        }
        ot1 ot1Var = ys1Var2.d;
        pr8 pr8Var = i == 0 ? ot1Var.d : ot1Var.e;
        int iA = dj7.A(ys1Var2.e);
        if (iA == 1 || iA == 2) {
            return pr8Var.h;
        }
        if (iA == 3 || iA == 4) {
            return pr8Var.i;
        }
        return null;
    }

    public final void c(ni2 ni2Var, ni2 ni2Var2, int i, rl2 rl2Var) {
        ni2Var.l.add(ni2Var2);
        ni2Var.l.add(this.e);
        ni2Var.h = i;
        ni2Var.i = rl2Var;
        ni2Var2.k.add(ni2Var);
        rl2Var.k.add(ni2Var);
    }

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public final int g(int i, int i2) {
        ot1 ot1Var = this.b;
        if (i2 == 0) {
            int i3 = ot1Var.v;
            int iMax = Math.max(ot1Var.u, i);
            if (i3 > 0) {
                iMax = Math.min(i3, i);
            }
            if (iMax != i) {
                return iMax;
            }
        } else {
            int i4 = ot1Var.y;
            int iMax2 = Math.max(ot1Var.x, i);
            if (i4 > 0) {
                iMax2 = Math.min(i4, i);
            }
            if (iMax2 != i) {
                return iMax2;
            }
        }
        return i;
    }

    public long j() {
        rl2 rl2Var = this.e;
        if (rl2Var.j) {
            return rl2Var.g;
        }
        return 0L;
    }

    public abstract boolean k();

    /* JADX WARN: Code duplicated, block: B:28:0x0054 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x0056  */
    /* JADX WARN: Code duplicated, block: B:32:0x005e  */
    /* JADX WARN: Code duplicated, block: B:34:0x0064  */
    /* JADX WARN: Code duplicated, block: B:35:0x0069  */
    public final void l(ys1 ys1Var, ys1 ys1Var2, int i) {
        rl2 rl2Var;
        float f;
        int i2;
        int i3;
        ni2 ni2VarH = h(ys1Var);
        ni2 ni2VarH2 = h(ys1Var2);
        if (ni2VarH.j && ni2VarH2.j) {
            int iE = ys1Var.e() + ni2VarH.g;
            int iE2 = ni2VarH2.g - ys1Var2.e();
            int i4 = iE2 - iE;
            rl2 rl2Var2 = this.e;
            if (!rl2Var2.j && this.d == 3) {
                int i5 = this.a;
                if (i5 == 0) {
                    rl2Var2.d(g(i4, i));
                } else if (i5 == 1) {
                    rl2Var2.d(Math.min(g(rl2Var2.m, i), i4));
                } else if (i5 == 2) {
                    ot1 ot1Var = this.b;
                    ot1 ot1Var2 = ot1Var.T;
                    if (ot1Var2 != null) {
                        rl2 rl2Var3 = (i == 0 ? ot1Var2.d : ot1Var2.e).e;
                        if (rl2Var3.j) {
                            rl2Var2.d(g((int) ((rl2Var3.g * (i == 0 ? ot1Var.w : ot1Var.z)) + 0.5f), i));
                        }
                    }
                } else if (i5 == 3) {
                    ot1 ot1Var3 = this.b;
                    pr8 pr8Var = ot1Var3.d;
                    if (pr8Var.d == 3 && pr8Var.a == 3) {
                        dk8 dk8Var = ot1Var3.e;
                        if (dk8Var.d != 3 || dk8Var.a != 3) {
                            if (i == 0) {
                                pr8Var = ot1Var3.e;
                            }
                            rl2Var = pr8Var.e;
                            if (rl2Var.j) {
                                f = ot1Var3.W;
                                i2 = rl2Var.g;
                                if (i == 1) {
                                    i3 = (int) ((i2 / f) + 0.5f);
                                } else {
                                    i3 = (int) ((f * i2) + 0.5f);
                                }
                                rl2Var2.d(i3);
                            }
                        }
                    } else {
                        if (i == 0) {
                            pr8Var = ot1Var3.e;
                        }
                        rl2Var = pr8Var.e;
                        if (rl2Var.j) {
                            f = ot1Var3.W;
                            i2 = rl2Var.g;
                            if (i == 1) {
                                i3 = (int) ((i2 / f) + 0.5f);
                            } else {
                                i3 = (int) ((f * i2) + 0.5f);
                            }
                            rl2Var2.d(i3);
                        }
                    }
                }
            }
            if (rl2Var2.j) {
                int i6 = rl2Var2.g;
                ni2 ni2Var = this.i;
                ni2 ni2Var2 = this.h;
                if (i6 == i4) {
                    ni2Var2.d(iE);
                    ni2Var.d(iE2);
                    return;
                }
                ot1 ot1Var4 = this.b;
                float f2 = i == 0 ? ot1Var4.d0 : ot1Var4.e0;
                if (ni2VarH == ni2VarH2) {
                    iE = ni2VarH.g;
                    iE2 = ni2VarH2.g;
                    f2 = 0.5f;
                }
                ni2Var2.d((int) ((((iE2 - iE) - i6) * f2) + iE + 0.5f));
                ni2Var.d(ni2Var2.g + rl2Var2.g);
            }
        }
    }
}
