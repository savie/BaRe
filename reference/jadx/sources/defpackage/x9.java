package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x9 {
    public final rb d;
    public final vc9 a = new vc9(30);
    public final ArrayList b = new ArrayList();
    public final ArrayList c = new ArrayList();
    public int f = 0;
    public final rb e = new rb(this, 18);

    public x9(rb rbVar) {
        this.d = rbVar;
    }

    public final boolean a(int i) {
        ArrayList arrayList = this.c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            w9 w9Var = (w9) arrayList.get(i2);
            int i3 = w9Var.a;
            if (i3 != 8) {
                if (i3 == 1) {
                    int i4 = w9Var.b;
                    int i5 = w9Var.d + i4;
                    while (i4 < i5) {
                        if (f(i4, i2 + 1) == i) {
                            return true;
                        }
                        i4++;
                    }
                } else {
                    continue;
                }
            } else {
                if (f(w9Var.d, i2 + 1) == i) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void b() {
        ArrayList arrayList = this.c;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.d.r((w9) arrayList.get(i));
        }
        k(arrayList);
        this.f = 0;
    }

    public final void c() {
        b();
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            w9 w9Var = (w9) arrayList.get(i);
            int i2 = w9Var.a;
            rb rbVar = this.d;
            if (i2 == 1) {
                rbVar.r(w9Var);
                rbVar.v(w9Var.b, w9Var.d);
            } else if (i2 == 2) {
                rbVar.r(w9Var);
                int i3 = w9Var.b;
                int i4 = w9Var.d;
                RecyclerView recyclerView = (RecyclerView) rbVar.b;
                recyclerView.R(i3, i4, true);
                recyclerView.A0 = true;
                recyclerView.x0.c += i4;
            } else if (i2 == 4) {
                rbVar.r(w9Var);
                rbVar.u(w9Var.c, w9Var.b, w9Var.d);
            } else if (i2 == 8) {
                rbVar.r(w9Var);
                rbVar.w(w9Var.b, w9Var.d);
            }
        }
        k(arrayList);
        this.f = 0;
    }

    public final void d(w9 w9Var) {
        int i;
        vc9 vc9Var;
        int i2 = w9Var.a;
        if (i2 == 1 || i2 == 8) {
            c6.f("should not dispatch add or move for pre layout");
            return;
        }
        int iL = l(w9Var.b, i2);
        int i3 = w9Var.b;
        int i4 = w9Var.a;
        if (i4 == 2) {
            i = 0;
        } else {
            if (i4 != 4) {
                g84.k(w9Var, "op should be remove or update.");
                return;
            }
            i = 1;
        }
        int i5 = 1;
        int i6 = 1;
        while (true) {
            int i7 = w9Var.d;
            vc9Var = this.a;
            if (i5 >= i7) {
                break;
            }
            int iL2 = l((i * i5) + w9Var.b, w9Var.a);
            int i8 = w9Var.a;
            if (i8 == 2 ? iL2 != iL : !(i8 == 4 && iL2 == iL + 1)) {
                w9 w9VarH = h(w9Var.c, i8, iL, i6);
                e(w9VarH, i3);
                w9VarH.c = null;
                vc9Var.c(w9VarH);
                if (w9Var.a == 4) {
                    i3 += i6;
                }
                i6 = 1;
                iL = iL2;
            } else {
                i6++;
            }
            i5++;
        }
        Object obj = w9Var.c;
        w9Var.c = null;
        vc9Var.c(w9Var);
        if (i6 > 0) {
            w9 w9VarH2 = h(obj, w9Var.a, iL, i6);
            e(w9VarH2, i3);
            w9VarH2.c = null;
            vc9Var.c(w9VarH2);
        }
    }

    public final void e(w9 w9Var, int i) {
        rb rbVar = this.d;
        rbVar.r(w9Var);
        int i2 = w9Var.a;
        if (i2 != 2) {
            if (i2 != 4) {
                c6.f("only remove and update ops can be dispatched in first pass");
                return;
            } else {
                rbVar.u(w9Var.c, i, w9Var.d);
                return;
            }
        }
        int i3 = w9Var.d;
        RecyclerView recyclerView = (RecyclerView) rbVar.b;
        recyclerView.R(i, i3, true);
        recyclerView.A0 = true;
        recyclerView.x0.c += i3;
    }

    public final int f(int i, int i2) {
        ArrayList arrayList = this.c;
        int size = arrayList.size();
        while (i2 < size) {
            w9 w9Var = (w9) arrayList.get(i2);
            int i3 = w9Var.a;
            int i4 = w9Var.b;
            if (i3 == 8) {
                if (i4 == i) {
                    i = w9Var.d;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (w9Var.d <= i) {
                        i++;
                    }
                }
            } else if (i4 > i) {
                continue;
            } else if (i3 == 2) {
                int i5 = w9Var.d;
                if (i < i4 + i5) {
                    return -1;
                }
                i -= i5;
            } else if (i3 == 1) {
                i += w9Var.d;
            }
            i2++;
        }
        return i;
    }

    public final boolean g() {
        return this.b.size() > 0;
    }

    public final w9 h(Object obj, int i, int i2, int i3) {
        w9 w9Var = (w9) this.a.d();
        if (w9Var != null) {
            w9Var.a = i;
            w9Var.b = i2;
            w9Var.d = i3;
            w9Var.c = obj;
            return w9Var;
        }
        w9 w9Var2 = new w9();
        w9Var2.a = i;
        w9Var2.b = i2;
        w9Var2.d = i3;
        w9Var2.c = obj;
        return w9Var2;
    }

    public final void i(w9 w9Var) {
        this.c.add(w9Var);
        int i = w9Var.a;
        rb rbVar = this.d;
        if (i == 1) {
            rbVar.v(w9Var.b, w9Var.d);
            return;
        }
        if (i == 2) {
            int i2 = w9Var.b;
            int i3 = w9Var.d;
            RecyclerView recyclerView = (RecyclerView) rbVar.b;
            recyclerView.R(i2, i3, false);
            recyclerView.A0 = true;
            return;
        }
        if (i == 4) {
            rbVar.u(w9Var.c, w9Var.b, w9Var.d);
        } else if (i == 8) {
            rbVar.w(w9Var.b, w9Var.d);
        } else {
            g84.k(w9Var, "Unknown update op type for ");
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0185  */
    /* JADX WARN: Code duplicated, block: B:102:0x0189  */
    /* JADX WARN: Code duplicated, block: B:181:0x00a1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:182:0x011d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:185:0x0110 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:186:0x018e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:195:0x0007 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:199:0x0007 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x006d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0072  */
    /* JADX WARN: Code duplicated, block: B:32:0x0077  */
    /* JADX WARN: Code duplicated, block: B:36:0x008e  */
    /* JADX WARN: Code duplicated, block: B:37:0x0092  */
    /* JADX WARN: Code duplicated, block: B:39:0x009c  */
    /* JADX WARN: Code duplicated, block: B:73:0x011f  */
    /* JADX WARN: Code duplicated, block: B:74:0x0121  */
    /* JADX WARN: Code duplicated, block: B:76:0x0127  */
    /* JADX WARN: Code duplicated, block: B:79:0x0132  */
    /* JADX WARN: Code duplicated, block: B:82:0x013d  */
    /* JADX WARN: Code duplicated, block: B:85:0x0148  */
    /* JADX WARN: Code duplicated, block: B:86:0x014e  */
    /* JADX WARN: Code duplicated, block: B:87:0x0150  */
    /* JADX WARN: Code duplicated, block: B:89:0x0156  */
    /* JADX WARN: Code duplicated, block: B:92:0x0161  */
    /* JADX WARN: Code duplicated, block: B:95:0x016c  */
    /* JADX WARN: Code duplicated, block: B:98:0x0177  */
    public final void j() {
        ArrayList arrayList;
        int i;
        byte b;
        boolean z;
        byte b2;
        w9 w9VarH;
        int i2;
        int i3;
        int i4;
        w9 w9VarH2;
        boolean z2;
        boolean z3;
        w9 w9VarH3;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        rb rbVar = this.e;
        rbVar.getClass();
        while (true) {
            arrayList = this.b;
            int size = arrayList.size() - 1;
            boolean z4 = false;
            while (true) {
                i = 8;
                b = -1;
                if (size < 0) {
                    size = -1;
                    break;
                }
                if (((w9) arrayList.get(size)).a != 8) {
                    z4 = true;
                } else if (z4) {
                    break;
                }
                size--;
            }
            if (size == -1) {
                break;
            }
            int i13 = size + 1;
            x9 x9Var = (x9) rbVar.b;
            vc9 vc9Var = x9Var.a;
            w9 w9Var = (w9) arrayList.get(size);
            w9 w9Var2 = (w9) arrayList.get(i13);
            int i14 = w9Var2.a;
            if (i14 == 1) {
                int i15 = w9Var.d;
                int i16 = w9Var2.b;
                int i17 = i15 < i16 ? -1 : 0;
                int i18 = w9Var.b;
                if (i18 < i16) {
                    i17++;
                }
                if (i16 <= i18) {
                    w9Var.b = i18 + w9Var2.d;
                }
                int i19 = w9Var2.b;
                if (i19 <= i15) {
                    w9Var.d = i15 + w9Var2.d;
                }
                w9Var2.b = i19 + i17;
                arrayList.set(size, w9Var2);
                arrayList.set(i13, w9Var);
            } else if (i14 == 2) {
                int i20 = w9Var.b;
                int i21 = w9Var.d;
                int i22 = w9Var2.b;
                if (i20 < i21) {
                    z3 = i22 == i20 && w9Var2.d == i21 - i20;
                    z2 = false;
                } else if (i22 == i21 + 1 && w9Var2.d == i20 - i21) {
                    z3 = true;
                    z2 = true;
                } else {
                    z2 = true;
                    z3 = false;
                }
                if (i21 < i22) {
                    w9Var2.b = i22 - 1;
                } else {
                    int i23 = w9Var2.d;
                    if (i21 < i22 + i23) {
                        w9Var2.d = i23 - 1;
                        w9Var.a = 2;
                        w9Var.d = 1;
                        if (w9Var2.d == 0) {
                            arrayList.remove(i13);
                            w9Var2.c = null;
                            vc9Var.c(w9Var2);
                        }
                    }
                }
                int i24 = w9Var.b;
                int i25 = w9Var2.b;
                if (i24 <= i25) {
                    w9Var2.b = i25 + 1;
                } else {
                    int i26 = i25 + w9Var2.d;
                    if (i24 < i26) {
                        w9VarH3 = x9Var.h(null, 2, i24 + 1, i26 - i24);
                        w9Var2.d = w9Var.b - w9Var2.b;
                    }
                    if (z3) {
                        arrayList.set(size, w9Var2);
                        arrayList.remove(i13);
                        w9Var.c = null;
                        vc9Var.c(w9Var);
                    } else {
                        if (z2) {
                            if (w9VarH3 != null) {
                                i11 = w9Var.b;
                                if (i11 > w9VarH3.b) {
                                    w9Var.b = i11 - w9VarH3.d;
                                }
                                i12 = w9Var.d;
                                if (i12 > w9VarH3.b) {
                                    w9Var.d = i12 - w9VarH3.d;
                                }
                            }
                            i9 = w9Var.b;
                            if (i9 > w9Var2.b) {
                                w9Var.b = i9 - w9Var2.d;
                            }
                            i10 = w9Var.d;
                            if (i10 > w9Var2.b) {
                                w9Var.d = i10 - w9Var2.d;
                            }
                        } else {
                            if (w9VarH3 != null) {
                                i7 = w9Var.b;
                                if (i7 >= w9VarH3.b) {
                                    w9Var.b = i7 - w9VarH3.d;
                                }
                                i8 = w9Var.d;
                                if (i8 >= w9VarH3.b) {
                                    w9Var.d = i8 - w9VarH3.d;
                                }
                            }
                            i5 = w9Var.b;
                            if (i5 >= w9Var2.b) {
                                w9Var.b = i5 - w9Var2.d;
                            }
                            i6 = w9Var.d;
                            if (i6 >= w9Var2.b) {
                                w9Var.d = i6 - w9Var2.d;
                            }
                        }
                        arrayList.set(size, w9Var2);
                        if (w9Var.b != w9Var.d) {
                            arrayList.set(i13, w9Var);
                        } else {
                            arrayList.remove(i13);
                        }
                        if (w9VarH3 != null) {
                            arrayList.add(size, w9VarH3);
                        }
                    }
                }
                w9VarH3 = null;
                if (z3) {
                    arrayList.set(size, w9Var2);
                    arrayList.remove(i13);
                    w9Var.c = null;
                    vc9Var.c(w9Var);
                } else {
                    if (z2) {
                        if (w9VarH3 != null) {
                            i11 = w9Var.b;
                            if (i11 > w9VarH3.b) {
                                w9Var.b = i11 - w9VarH3.d;
                            }
                            i12 = w9Var.d;
                            if (i12 > w9VarH3.b) {
                                w9Var.d = i12 - w9VarH3.d;
                            }
                        }
                        i9 = w9Var.b;
                        if (i9 > w9Var2.b) {
                            w9Var.b = i9 - w9Var2.d;
                        }
                        i10 = w9Var.d;
                        if (i10 > w9Var2.b) {
                            w9Var.d = i10 - w9Var2.d;
                        }
                    } else {
                        if (w9VarH3 != null) {
                            i7 = w9Var.b;
                            if (i7 >= w9VarH3.b) {
                                w9Var.b = i7 - w9VarH3.d;
                            }
                            i8 = w9Var.d;
                            if (i8 >= w9VarH3.b) {
                                w9Var.d = i8 - w9VarH3.d;
                            }
                        }
                        i5 = w9Var.b;
                        if (i5 >= w9Var2.b) {
                            w9Var.b = i5 - w9Var2.d;
                        }
                        i6 = w9Var.d;
                        if (i6 >= w9Var2.b) {
                            w9Var.d = i6 - w9Var2.d;
                        }
                    }
                    arrayList.set(size, w9Var2);
                    if (w9Var.b != w9Var.d) {
                        arrayList.set(i13, w9Var);
                    } else {
                        arrayList.remove(i13);
                    }
                    if (w9VarH3 != null) {
                        arrayList.add(size, w9VarH3);
                    }
                }
            } else if (i14 == 4) {
                int i27 = w9Var.d;
                int i28 = w9Var2.b;
                if (i27 < i28) {
                    w9Var2.b = i28 - 1;
                } else {
                    int i29 = w9Var2.d;
                    if (i27 < i28 + i29) {
                        w9Var2.d = i29 - 1;
                        w9VarH = x9Var.h(w9Var2.c, 4, w9Var.b, 1);
                    }
                    i2 = w9Var.b;
                    i3 = w9Var2.b;
                    if (i2 <= i3) {
                        w9Var2.b = i3 + 1;
                    } else {
                        i4 = i3 + w9Var2.d;
                        if (i2 < i4) {
                            int i30 = i4 - i2;
                            w9VarH2 = x9Var.h(w9Var2.c, 4, i2 + 1, i30);
                            w9Var2.d -= i30;
                        }
                        arrayList.set(i13, w9Var);
                        if (w9Var2.d > 0) {
                            arrayList.set(size, w9Var2);
                        } else {
                            arrayList.remove(size);
                            w9Var2.c = null;
                            vc9Var.c(w9Var2);
                        }
                        if (w9VarH != null) {
                            arrayList.add(size, w9VarH);
                        }
                        if (w9VarH2 != null) {
                            arrayList.add(size, w9VarH2);
                        }
                    }
                    w9VarH2 = null;
                    arrayList.set(i13, w9Var);
                    if (w9Var2.d > 0) {
                        arrayList.set(size, w9Var2);
                    } else {
                        arrayList.remove(size);
                        w9Var2.c = null;
                        vc9Var.c(w9Var2);
                    }
                    if (w9VarH != null) {
                        arrayList.add(size, w9VarH);
                    }
                    if (w9VarH2 != null) {
                        arrayList.add(size, w9VarH2);
                    }
                }
                w9VarH = null;
                i2 = w9Var.b;
                i3 = w9Var2.b;
                if (i2 <= i3) {
                    w9Var2.b = i3 + 1;
                } else {
                    i4 = i3 + w9Var2.d;
                    if (i2 < i4) {
                        int i31 = i4 - i2;
                        w9VarH2 = x9Var.h(w9Var2.c, 4, i2 + 1, i31);
                        w9Var2.d -= i31;
                    }
                    arrayList.set(i13, w9Var);
                    if (w9Var2.d > 0) {
                        arrayList.set(size, w9Var2);
                    } else {
                        arrayList.remove(size);
                        w9Var2.c = null;
                        vc9Var.c(w9Var2);
                    }
                    if (w9VarH != null) {
                        arrayList.add(size, w9VarH);
                    }
                    if (w9VarH2 != null) {
                        arrayList.add(size, w9VarH2);
                    }
                }
                w9VarH2 = null;
                arrayList.set(i13, w9Var);
                if (w9Var2.d > 0) {
                    arrayList.set(size, w9Var2);
                } else {
                    arrayList.remove(size);
                    w9Var2.c = null;
                    vc9Var.c(w9Var2);
                }
                if (w9VarH != null) {
                    arrayList.add(size, w9VarH);
                }
                if (w9VarH2 != null) {
                    arrayList.add(size, w9VarH2);
                }
            }
        }
        int size2 = arrayList.size();
        int i32 = 0;
        while (i32 < size2) {
            w9 w9VarH4 = (w9) arrayList.get(i32);
            int i33 = w9VarH4.a;
            if (i33 != 1) {
                vc9 vc9Var2 = this.a;
                rb rbVar2 = this.d;
                if (i33 == 2) {
                    int i34 = w9VarH4.b;
                    int i35 = w9VarH4.d + i34;
                    int i36 = i34;
                    int i37 = 0;
                    byte b3 = -1;
                    while (i36 < i35) {
                        if (rbVar2.s(i36) != null || a(i36)) {
                            if (b3 == 0) {
                                d(h(null, 2, i34, i37));
                                z = true;
                            } else {
                                z = false;
                            }
                            b2 = 1;
                        } else {
                            if (b3 == 1) {
                                i(h(null, 2, i34, i37));
                                z = true;
                            } else {
                                z = false;
                            }
                            b2 = 0;
                        }
                        if (z) {
                            i36 -= i37;
                            i35 -= i37;
                            i37 = 1;
                        } else {
                            i37++;
                        }
                        i36++;
                        b3 = b2;
                    }
                    if (i37 != w9VarH4.d) {
                        w9VarH4.c = null;
                        vc9Var2.c(w9VarH4);
                        w9VarH4 = h(null, 2, i34, i37);
                    }
                    if (b3 == 0) {
                        d(w9VarH4);
                    } else {
                        i(w9VarH4);
                    }
                } else if (i33 == 4) {
                    int i38 = w9VarH4.b;
                    int i39 = w9VarH4.d + i38;
                    int i40 = i38;
                    int i41 = 0;
                    while (i38 < i39) {
                        if (rbVar2.s(i38) != null || a(i38)) {
                            if (b == 0) {
                                d(h(w9VarH4.c, 4, i40, i41));
                                i40 = i38;
                                i41 = 0;
                            }
                            b = 1;
                        } else {
                            if (b == 1) {
                                i(h(w9VarH4.c, 4, i40, i41));
                                i40 = i38;
                                i41 = 0;
                            }
                            b = 0;
                        }
                        i41++;
                        i38++;
                    }
                    if (i41 != w9VarH4.d) {
                        Object obj = w9VarH4.c;
                        w9VarH4.c = null;
                        vc9Var2.c(w9VarH4);
                        w9VarH4 = h(obj, 4, i40, i41);
                    }
                    if (b == 0) {
                        d(w9VarH4);
                    } else {
                        i(w9VarH4);
                    }
                } else if (i33 == i) {
                    i(w9VarH4);
                }
            } else {
                i(w9VarH4);
            }
            i32++;
            i = 8;
            b = -1;
        }
        arrayList.clear();
    }

    public final void k(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            w9 w9Var = (w9) arrayList.get(i);
            w9Var.c = null;
            this.a.c(w9Var);
        }
        arrayList.clear();
    }

    public final int l(int i, int i2) {
        int i3;
        int i4;
        ArrayList arrayList = this.c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            w9 w9Var = (w9) arrayList.get(size);
            int i5 = w9Var.a;
            int i6 = w9Var.b;
            if (i5 == 8) {
                int i7 = w9Var.d;
                if (i6 < i7) {
                    i4 = i7;
                    i3 = i6;
                } else {
                    i3 = i7;
                    i4 = i6;
                }
                if (i < i3 || i > i4) {
                    if (i < i6) {
                        if (i2 == 1) {
                            w9Var.b = i6 + 1;
                            w9Var.d = i7 + 1;
                        } else if (i2 == 2) {
                            w9Var.b = i6 - 1;
                            w9Var.d = i7 - 1;
                        }
                    }
                } else if (i3 == i6) {
                    if (i2 == 1) {
                        w9Var.d = i7 + 1;
                    } else if (i2 == 2) {
                        w9Var.d = i7 - 1;
                    }
                    i++;
                } else {
                    if (i2 == 1) {
                        w9Var.b = i6 + 1;
                    } else if (i2 == 2) {
                        w9Var.b = i6 - 1;
                    }
                    i--;
                }
            } else if (i6 <= i) {
                if (i5 == 1) {
                    i -= w9Var.d;
                } else if (i5 == 2) {
                    i += w9Var.d;
                }
            } else if (i2 == 1) {
                w9Var.b = i6 + 1;
            } else if (i2 == 2) {
                w9Var.b = i6 - 1;
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            w9 w9Var2 = (w9) arrayList.get(size2);
            int i8 = w9Var2.a;
            int i9 = w9Var2.d;
            vc9 vc9Var = this.a;
            if (i8 == 8) {
                if (i9 == w9Var2.b || i9 < 0) {
                    arrayList.remove(size2);
                    w9Var2.c = null;
                    vc9Var.c(w9Var2);
                }
            } else if (i9 <= 0) {
                arrayList.remove(size2);
                w9Var2.c = null;
                vc9Var.c(w9Var2);
            }
        }
        return i;
    }
}
