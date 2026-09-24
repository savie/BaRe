package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j31 extends pr8 {
    public final ArrayList k;
    public int l;

    public j31(ot1 ot1Var, int i) {
        ot1 ot1Var2;
        super(ot1Var);
        ArrayList<pr8> arrayList = new ArrayList();
        this.k = arrayList;
        this.f = i;
        ot1 ot1Var3 = this.b;
        ot1 ot1VarM = ot1Var3.m(i);
        while (true) {
            ot1Var2 = ot1Var3;
            ot1Var3 = ot1VarM;
            if (ot1Var3 == null) {
                break;
            } else {
                ot1VarM = ot1Var3.m(this.f);
            }
        }
        this.b = ot1Var2;
        int i2 = this.f;
        arrayList.add(i2 == 0 ? ot1Var2.d : i2 == 1 ? ot1Var2.e : null);
        ot1 ot1VarL = ot1Var2.l(this.f);
        while (ot1VarL != null) {
            int i3 = this.f;
            arrayList.add(i3 == 0 ? ot1VarL.d : i3 == 1 ? ot1VarL.e : null);
            ot1VarL = ot1VarL.l(this.f);
        }
        for (pr8 pr8Var : arrayList) {
            int i4 = this.f;
            if (i4 == 0) {
                pr8Var.b.b = this;
            } else if (i4 == 1) {
                pr8Var.b.c = this;
            }
        }
        if (this.f == 0 && ((pt1) this.b.T).v0 && arrayList.size() > 1) {
            this.b = ((pr8) dj7.e(arrayList, 1)).b;
        }
        int i5 = this.f;
        ot1 ot1Var4 = this.b;
        this.l = i5 == 0 ? ot1Var4.i0 : ot1Var4.j0;
    }

    /* JADX WARN: Code duplicated, block: B:293:0x00e8 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:64:0x00da  */
    /* JADX WARN: Code duplicated, block: B:65:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:67:0x00e0 A[ADDED_TO_REGION] */
    @Override // defpackage.ki2
    public final void a(ki2 ki2Var) {
        int i;
        int i2;
        boolean z;
        float f;
        int i3;
        int i4;
        int i5;
        int i6;
        float f2;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        float f3;
        ni2 ni2Var = this.h;
        if (ni2Var.j) {
            ni2 ni2Var2 = this.i;
            if (ni2Var2.j) {
                ot1 ot1Var = this.b.T;
                boolean z2 = ot1Var instanceof pt1 ? ((pt1) ot1Var).v0 : false;
                int i13 = ni2Var2.g - ni2Var.g;
                ArrayList arrayList = this.k;
                int size = arrayList.size();
                int i14 = 0;
                while (true) {
                    i = -1;
                    i2 = 8;
                    if (i14 >= size) {
                        i14 = -1;
                        break;
                    } else if (((pr8) arrayList.get(i14)).b.g0 != 8) {
                        break;
                    } else {
                        i14++;
                    }
                }
                int i15 = size - 1;
                for (int i16 = i15; i16 >= 0; i16--) {
                    if (((pr8) arrayList.get(i16)).b.g0 != 8) {
                        i = i16;
                        break;
                    }
                }
                int i17 = 0;
                while (true) {
                    if (i17 >= 2) {
                        z = z2;
                        f = 0.0f;
                        i3 = 0;
                        i4 = 0;
                        i5 = 0;
                        break;
                    }
                    f = 0.0f;
                    int i18 = 0;
                    i5 = 0;
                    int i19 = 0;
                    int i20 = 0;
                    while (i18 < size) {
                        pr8 pr8Var = (pr8) arrayList.get(i18);
                        ot1 ot1Var2 = pr8Var.b;
                        boolean z3 = z2;
                        if (ot1Var2.g0 == i2) {
                            i11 = i17;
                        } else {
                            i20++;
                            if (i18 > 0 && i18 >= i14) {
                                i5 += pr8Var.h.f;
                            }
                            rl2 rl2Var = pr8Var.e;
                            int i21 = rl2Var.g;
                            i11 = i17;
                            boolean z4 = pr8Var.d != 3;
                            if (z4) {
                                int i22 = this.f;
                                if (i22 == 0 && !ot1Var2.d.e.j) {
                                    return;
                                }
                                if (i22 == 1 && !ot1Var2.e.e.j) {
                                    return;
                                }
                            } else {
                                if (pr8Var.a == 1 && i11 == 0) {
                                    i12 = rl2Var.m;
                                    i19++;
                                } else {
                                    if (rl2Var.j) {
                                        i12 = i21;
                                    }
                                    if (z4) {
                                        i5 += i12;
                                    } else {
                                        i19++;
                                        f3 = ot1Var2.k0[this.f];
                                        if (f3 >= 0.0f) {
                                            f += f3;
                                        }
                                    }
                                    if (i18 >= i15 && i18 < i) {
                                        i5 += -pr8Var.i.f;
                                    }
                                }
                                z4 = true;
                                if (z4) {
                                    i19++;
                                    f3 = ot1Var2.k0[this.f];
                                    if (f3 >= 0.0f) {
                                        f += f3;
                                    }
                                } else {
                                    i5 += i12;
                                }
                                if (i18 >= i15) {
                                }
                            }
                            i12 = i21;
                            if (z4) {
                                i19++;
                                f3 = ot1Var2.k0[this.f];
                                if (f3 >= 0.0f) {
                                    f += f3;
                                }
                            } else {
                                i5 += i12;
                            }
                            if (i18 >= i15) {
                            }
                        }
                        i18++;
                        z2 = z3;
                        i17 = i11;
                        i2 = 8;
                    }
                    z = z2;
                    int i23 = i17;
                    if (i5 < i13 || i19 == 0) {
                        i3 = i19;
                        i4 = i20;
                        break;
                    } else {
                        i17 = i23 + 1;
                        z2 = z;
                        i2 = 8;
                    }
                }
                int i24 = ni2Var.g;
                if (z) {
                    i24 = ni2Var2.g;
                }
                float f4 = 0.5f;
                if (i5 > i13) {
                    i24 = z ? i24 + ((int) (((i5 - i13) / 2.0f) + 0.5f)) : i24 - ((int) (((i5 - i13) / 2.0f) + 0.5f));
                }
                if (i3 > 0) {
                    float f5 = i13 - i5;
                    int i25 = (int) ((f5 / i3) + 0.5f);
                    int i26 = 0;
                    int i27 = 0;
                    while (i26 < size) {
                        float f6 = f4;
                        pr8 pr8Var2 = (pr8) arrayList.get(i26);
                        int i28 = i24;
                        ot1 ot1Var3 = pr8Var2.b;
                        int i29 = i3;
                        rl2 rl2Var2 = pr8Var2.e;
                        float f7 = f5;
                        int i30 = i25;
                        if (ot1Var3.g0 != 8 && pr8Var2.d == 3 && !rl2Var2.j) {
                            int i31 = f > 0.0f ? (int) (((ot1Var3.k0[this.f] * f7) / f) + f6) : i30;
                            if (this.f == 0) {
                                i9 = ot1Var3.v;
                                i10 = ot1Var3.u;
                            } else {
                                i9 = ot1Var3.y;
                                i10 = ot1Var3.x;
                            }
                            int iMax = Math.max(i10, pr8Var2.a == 1 ? Math.min(i31, rl2Var2.m) : i31);
                            if (i9 > 0) {
                                iMax = Math.min(i9, iMax);
                            }
                            if (iMax != i31) {
                                i27++;
                                i31 = iMax;
                            }
                            rl2Var2.d(i31);
                        }
                        i26++;
                        i24 = i28;
                        f4 = f6;
                        i3 = i29;
                        f5 = f7;
                        i25 = i30;
                    }
                    i6 = i24;
                    f2 = f4;
                    int i32 = i3;
                    if (i27 > 0) {
                        i3 = i32 - i27;
                        i5 = 0;
                        for (int i33 = 0; i33 < size; i33++) {
                            pr8 pr8Var3 = (pr8) arrayList.get(i33);
                            if (pr8Var3.b.g0 != 8) {
                                if (i33 > 0 && i33 >= i14) {
                                    i5 += pr8Var3.h.f;
                                }
                                i5 += pr8Var3.e.g;
                                if (i33 < i15 && i33 < i) {
                                    i5 += -pr8Var3.i.f;
                                }
                            }
                        }
                    } else {
                        i3 = i32;
                    }
                    i8 = 2;
                    if (this.l == 2 && i27 == 0) {
                        i7 = 0;
                        this.l = 0;
                    } else {
                        i7 = 0;
                    }
                } else {
                    i6 = i24;
                    f2 = 0.5f;
                    i7 = 0;
                    i8 = 2;
                }
                if (i5 > i13) {
                    this.l = i8;
                }
                if (i4 > 0 && i3 == 0 && i14 == i) {
                    this.l = i8;
                }
                int i34 = this.l;
                if (i34 == 1) {
                    int i35 = i4 > 1 ? (i13 - i5) / (i4 - 1) : i4 == 1 ? (i13 - i5) / 2 : i7;
                    if (i3 > 0) {
                        i35 = i7;
                    }
                    int i36 = i6;
                    for (int i37 = i7; i37 < size; i37++) {
                        pr8 pr8Var4 = (pr8) arrayList.get(z ? size - (i37 + 1) : i37);
                        ot1 ot1Var4 = pr8Var4.b;
                        ni2 ni2Var3 = pr8Var4.i;
                        ni2 ni2Var4 = pr8Var4.h;
                        if (ot1Var4.g0 == 8) {
                            ni2Var4.d(i36);
                            ni2Var3.d(i36);
                        } else {
                            if (i37 > 0) {
                                i36 = z ? i36 - i35 : i36 + i35;
                            }
                            if (i37 > 0 && i37 >= i14) {
                                i36 = z ? i36 - ni2Var4.f : i36 + ni2Var4.f;
                            }
                            if (z) {
                                ni2Var3.d(i36);
                            } else {
                                ni2Var4.d(i36);
                            }
                            rl2 rl2Var3 = pr8Var4.e;
                            int i38 = rl2Var3.g;
                            if (pr8Var4.d == 3 && pr8Var4.a == 1) {
                                i38 = rl2Var3.m;
                            }
                            i36 = z ? i36 - i38 : i36 + i38;
                            if (z) {
                                ni2Var4.d(i36);
                            } else {
                                ni2Var3.d(i36);
                            }
                            pr8Var4.g = true;
                            if (i37 < i15 && i37 < i) {
                                i36 = z ? i36 - (-ni2Var3.f) : i36 + (-ni2Var3.f);
                            }
                        }
                    }
                    return;
                }
                if (i34 == 0) {
                    int i39 = (i13 - i5) / (i4 + 1);
                    if (i3 > 0) {
                        i39 = i7;
                    }
                    int i40 = i6;
                    for (int i41 = i7; i41 < size; i41++) {
                        pr8 pr8Var5 = (pr8) arrayList.get(z ? size - (i41 + 1) : i41);
                        ot1 ot1Var5 = pr8Var5.b;
                        ni2 ni2Var5 = pr8Var5.i;
                        ni2 ni2Var6 = pr8Var5.h;
                        if (ot1Var5.g0 == 8) {
                            ni2Var6.d(i40);
                            ni2Var5.d(i40);
                        } else {
                            int i42 = z ? i40 - i39 : i40 + i39;
                            if (i41 > 0 && i41 >= i14) {
                                i42 = z ? i42 - ni2Var6.f : i42 + ni2Var6.f;
                            }
                            if (z) {
                                ni2Var5.d(i42);
                            } else {
                                ni2Var6.d(i42);
                            }
                            rl2 rl2Var4 = pr8Var5.e;
                            int iMin = rl2Var4.g;
                            if (pr8Var5.d == 3 && pr8Var5.a == 1) {
                                iMin = Math.min(iMin, rl2Var4.m);
                            }
                            i40 = z ? i42 - iMin : i42 + iMin;
                            if (z) {
                                ni2Var6.d(i40);
                            } else {
                                ni2Var5.d(i40);
                            }
                            if (i41 < i15 && i41 < i) {
                                i40 = z ? i40 - (-ni2Var5.f) : i40 + (-ni2Var5.f);
                            }
                        }
                    }
                    return;
                }
                if (i34 == 2) {
                    int i43 = this.f;
                    ot1 ot1Var6 = this.b;
                    float f8 = i43 == 0 ? ot1Var6.d0 : ot1Var6.e0;
                    if (z) {
                        f8 = 1.0f - f8;
                    }
                    int i44 = (int) (((i13 - i5) * f8) + f2);
                    if (i44 < 0 || i3 > 0) {
                        i44 = i7;
                    }
                    int i45 = z ? i6 - i44 : i6 + i44;
                    for (int i46 = i7; i46 < size; i46++) {
                        pr8 pr8Var6 = (pr8) arrayList.get(z ? size - (i46 + 1) : i46);
                        ot1 ot1Var7 = pr8Var6.b;
                        ni2 ni2Var7 = pr8Var6.i;
                        ni2 ni2Var8 = pr8Var6.h;
                        if (ot1Var7.g0 == 8) {
                            ni2Var8.d(i45);
                            ni2Var7.d(i45);
                        } else {
                            if (i46 > 0 && i46 >= i14) {
                                i45 = z ? i45 - ni2Var8.f : i45 + ni2Var8.f;
                            }
                            if (z) {
                                ni2Var7.d(i45);
                            } else {
                                ni2Var8.d(i45);
                            }
                            rl2 rl2Var5 = pr8Var6.e;
                            int i47 = rl2Var5.g;
                            if (pr8Var6.d == 3 && pr8Var6.a == 1) {
                                i47 = rl2Var5.m;
                            }
                            i45 = z ? i45 - i47 : i45 + i47;
                            if (z) {
                                ni2Var8.d(i45);
                            } else {
                                ni2Var7.d(i45);
                            }
                            if (i46 < i15 && i46 < i) {
                                i45 = z ? i45 - (-ni2Var7.f) : i45 + (-ni2Var7.f);
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // defpackage.pr8
    public final void d() {
        ArrayList arrayList = this.k;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((pr8) it.next()).d();
        }
        int size = arrayList.size();
        if (size < 1) {
            return;
        }
        ot1 ot1Var = ((pr8) arrayList.get(0)).b;
        ot1 ot1Var2 = ((pr8) arrayList.get(size - 1)).b;
        int i = this.f;
        ni2 ni2Var = this.i;
        ni2 ni2Var2 = this.h;
        if (i == 0) {
            ys1 ys1Var = ot1Var.I;
            ys1 ys1Var2 = ot1Var2.K;
            ni2 ni2VarI = pr8.i(ys1Var, 0);
            int iE = ys1Var.e();
            ot1 ot1VarM = m();
            if (ot1VarM != null) {
                iE = ot1VarM.I.e();
            }
            if (ni2VarI != null) {
                pr8.b(ni2Var2, ni2VarI, iE);
            }
            ni2 ni2VarI2 = pr8.i(ys1Var2, 0);
            int iE2 = ys1Var2.e();
            ot1 ot1VarN = n();
            if (ot1VarN != null) {
                iE2 = ot1VarN.K.e();
            }
            if (ni2VarI2 != null) {
                pr8.b(ni2Var, ni2VarI2, -iE2);
            }
        } else {
            ys1 ys1Var3 = ot1Var.J;
            ys1 ys1Var4 = ot1Var2.L;
            ni2 ni2VarI3 = pr8.i(ys1Var3, 1);
            int iE3 = ys1Var3.e();
            ot1 ot1VarM2 = m();
            if (ot1VarM2 != null) {
                iE3 = ot1VarM2.J.e();
            }
            if (ni2VarI3 != null) {
                pr8.b(ni2Var2, ni2VarI3, iE3);
            }
            ni2 ni2VarI4 = pr8.i(ys1Var4, 1);
            int iE4 = ys1Var4.e();
            ot1 ot1VarN2 = n();
            if (ot1VarN2 != null) {
                iE4 = ot1VarN2.L.e();
            }
            if (ni2VarI4 != null) {
                pr8.b(ni2Var, ni2VarI4, -iE4);
            }
        }
        ni2Var2.a = this;
        ni2Var.a = this;
    }

    @Override // defpackage.pr8
    public final void e() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.k;
            if (i >= arrayList.size()) {
                return;
            }
            ((pr8) arrayList.get(i)).e();
            i++;
        }
    }

    @Override // defpackage.pr8
    public final void f() {
        this.c = null;
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            ((pr8) it.next()).f();
        }
    }

    @Override // defpackage.pr8
    public final long j() {
        ArrayList arrayList = this.k;
        int size = arrayList.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            pr8 pr8Var = (pr8) arrayList.get(i);
            j = ((long) pr8Var.i.f) + pr8Var.j() + j + ((long) pr8Var.h.f);
        }
        return j;
    }

    @Override // defpackage.pr8
    public final boolean k() {
        ArrayList arrayList = this.k;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (!((pr8) arrayList.get(i)).k()) {
                return false;
            }
        }
        return true;
    }

    public final ot1 m() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.k;
            if (i >= arrayList.size()) {
                return null;
            }
            ot1 ot1Var = ((pr8) arrayList.get(i)).b;
            if (ot1Var.g0 != 8) {
                return ot1Var;
            }
            i++;
        }
    }

    public final ot1 n() {
        ArrayList arrayList = this.k;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ot1 ot1Var = ((pr8) arrayList.get(size)).b;
            if (ot1Var.g0 != 8) {
                return ot1Var;
            }
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.f == 0 ? "horizontal : " : "vertical : ");
        for (pr8 pr8Var : this.k) {
            sb.append("<");
            sb.append(pr8Var);
            sb.append("> ");
        }
        return sb.toString();
    }
}
