package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mi2 {
    public boolean a;
    public boolean b;
    public Object c;
    public Object d;
    public List e;
    public Object f;
    public Object g;
    public Object h;

    public static final void a(mi2 mi2Var, fw6 fw6Var) throws Throwable {
        Object bn6Var;
        gu2 gu2Var = (gu2) mi2Var.d;
        f(fw6Var);
        vc2 vc2Var = (vc2) mi2Var.c;
        co6 co6Var = vc2Var.g;
        co6 co6Var2 = co6.c;
        if (co6Var == co6Var2) {
            ly8.t("PRAGMA journal_mode = WAL", fw6Var);
        } else {
            ly8.t("PRAGMA journal_mode = TRUNCATE", fw6Var);
        }
        if (vc2Var.g == co6Var2) {
            ly8.t("PRAGMA synchronous = NORMAL", fw6Var);
        } else {
            ly8.t("PRAGMA synchronous = FULL", fw6Var);
        }
        nw6 nw6VarP0 = fw6Var.p0("PRAGMA user_version");
        try {
            nw6VarP0.i0();
            int i = (int) nw6VarP0.getLong(0);
            k55.d(nw6VarP0, null);
            int i2 = gu2Var.a;
            if (i != i2) {
                ly8.t("BEGIN EXCLUSIVE TRANSACTION", fw6Var);
                try {
                    if (i == 0) {
                        mi2Var.j(fw6Var);
                    } else {
                        mi2Var.k(fw6Var, i, i2);
                    }
                    ly8.t("PRAGMA user_version = " + i2, fw6Var);
                    bn6Var = be8.a;
                } catch (Throwable th) {
                    bn6Var = new bn6(th);
                }
                if (!(bn6Var instanceof bn6)) {
                    ly8.t("END TRANSACTION", fw6Var);
                }
                Throwable thA = en6.a(bn6Var);
                if (thA != null) {
                    ly8.t("ROLLBACK TRANSACTION", fw6Var);
                    throw thA;
                }
            }
            mi2Var.l(fw6Var);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                k55.d(nw6VarP0, th2);
                throw th3;
            }
        }
    }

    public static void f(fw6 fw6Var) {
        nw6 nw6VarP0 = fw6Var.p0("PRAGMA busy_timeout");
        try {
            nw6VarP0.i0();
            long j = nw6VarP0.getLong(0);
            k55.d(nw6VarP0, null);
            if (j < 3000) {
                ly8.t("PRAGMA busy_timeout = 3000", fw6Var);
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                k55.d(nw6VarP0, th);
                throw th2;
            }
        }
    }

    public void b(ni2 ni2Var, int i, ArrayList arrayList, sq6 sq6Var) {
        pr8 pr8Var = ni2Var.d;
        sq6 sq6Var2 = pr8Var.c;
        ni2 ni2Var2 = pr8Var.i;
        ni2 ni2Var3 = pr8Var.h;
        if (sq6Var2 == null) {
            pt1 pt1Var = (pt1) this.c;
            if (pr8Var == pt1Var.d || pr8Var == pt1Var.e) {
                return;
            }
            if (sq6Var == null) {
                sq6Var = new sq6();
                sq6Var.a = null;
                sq6Var.b = new ArrayList();
                sq6Var.a = pr8Var;
                arrayList.add(sq6Var);
            }
            pr8Var.c = sq6Var;
            sq6Var.b.add(pr8Var);
            for (ki2 ki2Var : ni2Var3.k) {
                if (ki2Var instanceof ni2) {
                    b((ni2) ki2Var, i, arrayList, sq6Var);
                }
            }
            for (ki2 ki2Var2 : ni2Var2.k) {
                if (ki2Var2 instanceof ni2) {
                    b((ni2) ki2Var2, i, arrayList, sq6Var);
                }
            }
            if (i == 1 && (pr8Var instanceof dk8)) {
                for (ki2 ki2Var3 : ((dk8) pr8Var).k.k) {
                    if (ki2Var3 instanceof ni2) {
                        b((ni2) ki2Var3, i, arrayList, sq6Var);
                    }
                }
            }
            Iterator it = ni2Var3.l.iterator();
            while (it.hasNext()) {
                b((ni2) it.next(), i, arrayList, sq6Var);
            }
            Iterator it2 = ni2Var2.l.iterator();
            while (it2.hasNext()) {
                b((ni2) it2.next(), i, arrayList, sq6Var);
            }
            if (i == 1 && (pr8Var instanceof dk8)) {
                Iterator it3 = ((dk8) pr8Var).k.l.iterator();
                while (it3.hasNext()) {
                    b((ni2) it3.next(), i, arrayList, sq6Var);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:102:0x01be  */
    /* JADX WARN: Code duplicated, block: B:105:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:114:0x021a  */
    /* JADX WARN: Code duplicated, block: B:123:0x025d  */
    /* JADX WARN: Code duplicated, block: B:146:0x0303  */
    /* JADX WARN: Code duplicated, block: B:149:0x0315  */
    /* JADX WARN: Code duplicated, block: B:150:0x0328  */
    /* JADX WARN: Code duplicated, block: B:156:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:157:0x02f8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:158:0x00bc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:159:0x00d7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:160:0x0118 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:165:0x01b0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:166:0x01fc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:167:0x0226 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:169:0x0268 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:171:0x0293 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:180:0x028c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:182:0x0253 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:184:0x0216 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:186:0x0211 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:187:0x01f6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:188:0x019d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:190:0x016b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:192:0x0130 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:194:0x012c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:195:0x0113 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:197:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:199:0x000a A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:61:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:66:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:95:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:96:0x01a4 A[ADDED_TO_REGION] */
    public void c(pt1 pt1Var) {
        int i;
        int iQ;
        int iK;
        int iK2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        float f;
        int i14;
        int i15;
        ArrayList<ot1> arrayList = pt1Var.q0;
        int[] iArr = pt1Var.p0;
        for (ot1 ot1Var : arrayList) {
            int[] iArr2 = ot1Var.p0;
            ys1[] ys1VarArr = ot1Var.Q;
            ys1 ys1Var = ot1Var.L;
            ys1 ys1Var2 = ot1Var.J;
            ys1 ys1Var3 = ot1Var.K;
            ys1 ys1Var4 = ot1Var.I;
            int i16 = iArr2[0];
            int i17 = iArr2[1];
            if (ot1Var.g0 == 8) {
                ot1Var.a = true;
            } else {
                float f2 = ot1Var.w;
                if (f2 < 1.0f && i16 == 3) {
                    ot1Var.r = 2;
                }
                float f3 = ot1Var.z;
                if (f3 < 1.0f && i17 == 3) {
                    ot1Var.s = 2;
                }
                if (ot1Var.W > 0.0f) {
                    if (i16 == 3 && (i17 == 2 || i17 == 1)) {
                        ot1Var.r = 3;
                    } else if (i17 == 3 && (i16 == 2 || i16 == 1)) {
                        ot1Var.s = 3;
                    } else if (i16 == 3 && i17 == 3) {
                        if (ot1Var.r == 0) {
                            ot1Var.r = 3;
                        }
                        if (ot1Var.s == 0) {
                            ot1Var.s = 3;
                        }
                    }
                }
                if (i16 == 3 && ot1Var.r == 1 && (ys1Var4.f == null || ys1Var3.f == null)) {
                    i16 = 2;
                }
                if (i17 == 3 && ot1Var.s == 1 && (ys1Var2.f == null || ys1Var.f == null)) {
                    i17 = 2;
                }
                d64 d64Var = ot1Var.d;
                d64Var.d = i16;
                int i18 = ot1Var.r;
                d64Var.a = i18;
                dk8 dk8Var = ot1Var.e;
                dk8Var.d = i17;
                int i19 = ot1Var.s;
                dk8Var.a = i19;
                if (i16 == 4 || i16 == 1) {
                    if (i17 == 4) {
                        if (i17 != 1) {
                            i3 = 2;
                            if (i17 != 2) {
                                if (i16 != 3) {
                                    i4 = i17;
                                    i5 = 1;
                                } else if (i17 == i3 && i17 != 1) {
                                    i4 = i17;
                                    i6 = 3;
                                    i5 = 1;
                                    if (i4 != i6) {
                                        i7 = i4;
                                        i8 = i3;
                                        i9 = 1;
                                        i10 = i16;
                                    } else if (i16 == i3 && i16 != i5) {
                                        i11 = i6;
                                        i7 = i4;
                                        i8 = i3;
                                        i9 = 1;
                                        i10 = i16;
                                        if (i10 != i11 && i7 == i11) {
                                            if (i18 == i9 || i19 == i9) {
                                                h(i8, 0, i8, 0, ot1Var);
                                                ot1Var.d.e.m = ot1Var.q();
                                                ot1Var.e.e.m = ot1Var.k();
                                            } else if (i19 == 2 && i18 == 2 && iArr[0] == i5 && iArr[i9] == i5) {
                                                h(i5, (int) ((f2 * pt1Var.q()) + 0.5f), i5, (int) ((f3 * pt1Var.k()) + 0.5f), ot1Var);
                                                ot1Var.d.e.d(ot1Var.q());
                                                ot1Var.e.e.d(ot1Var.k());
                                                ot1Var.a = true;
                                            }
                                        }
                                    } else if (i19 == i6) {
                                        if (i16 == i3) {
                                            h(i3, 0, i3, 0, ot1Var);
                                        }
                                        int iQ2 = ot1Var.q();
                                        f = ot1Var.W;
                                        if (ot1Var.X == -1) {
                                            f = 1.0f / f;
                                        }
                                        h(i5, iQ2, i5, (int) ((iQ2 * f) + 0.5f), ot1Var);
                                        ot1Var.d.e.d(ot1Var.q());
                                        ot1Var.e.e.d(ot1Var.k());
                                        ot1Var.a = true;
                                    } else {
                                        i7 = i4;
                                        i5 = i5;
                                        i12 = i3;
                                        if (i19 == 1) {
                                            h(i16, 0, i12, 0, ot1Var);
                                            ot1Var.e.e.m = ot1Var.k();
                                        } else {
                                            i10 = i16;
                                            if (i19 == 2) {
                                                i13 = iArr[1];
                                                if (i13 != i5 || i13 == 4) {
                                                    h(i10, ot1Var.q(), i5, (int) ((f3 * pt1Var.k()) + 0.5f), ot1Var);
                                                    ot1Var.d.e.d(ot1Var.q());
                                                    ot1Var.e.e.d(ot1Var.k());
                                                    ot1Var.a = true;
                                                } else {
                                                    i8 = i12;
                                                    i9 = 1;
                                                }
                                            } else if (ys1VarArr[2].f != null || ys1VarArr[3].f == null) {
                                                h(i12, 0, i7, 0, ot1Var);
                                                ot1Var.d.e.d(ot1Var.q());
                                                ot1Var.e.e.d(ot1Var.k());
                                                ot1Var.a = true;
                                            } else {
                                                i8 = i12;
                                                i9 = 1;
                                            }
                                        }
                                    }
                                    i11 = 3;
                                    if (i10 != i11) {
                                    }
                                } else if (i18 == 3) {
                                    if (i17 == i3) {
                                        h(i3, 0, i3, 0, ot1Var);
                                    }
                                    int iK3 = ot1Var.k();
                                    h(1, (int) ((iK3 * ot1Var.W) + 0.5f), 1, iK3, ot1Var);
                                    ot1Var.d.e.d(ot1Var.q());
                                    ot1Var.e.e.d(ot1Var.k());
                                    ot1Var.a = true;
                                } else {
                                    i14 = i3;
                                    if (i18 == 1) {
                                        h(i14, 0, i17, 0, ot1Var);
                                        ot1Var.d.e.m = ot1Var.q();
                                    } else {
                                        i3 = i14;
                                        if (i18 == 2) {
                                            i15 = iArr[0];
                                            if (i15 != 1 || i15 == 4) {
                                                h(1, (int) ((f2 * pt1Var.q()) + 0.5f), i17, ot1Var.k(), ot1Var);
                                                ot1Var.d.e.d(ot1Var.q());
                                                ot1Var.e.e.d(ot1Var.k());
                                                ot1Var.a = true;
                                            } else {
                                                i5 = 1;
                                                i4 = i17;
                                            }
                                        } else {
                                            i5 = 1;
                                            i4 = i17;
                                            if (ys1VarArr[0].f != null || ys1VarArr[1].f == null) {
                                                h(i3, 0, i4, 0, ot1Var);
                                                ot1Var.d.e.d(ot1Var.q());
                                                ot1Var.e.e.d(ot1Var.k());
                                                ot1Var.a = true;
                                            }
                                        }
                                    }
                                }
                                i6 = 3;
                                if (i4 != i6) {
                                    if (i16 == i3) {
                                    }
                                    if (i19 == i6) {
                                        if (i16 == i3) {
                                            h(i3, 0, i3, 0, ot1Var);
                                        }
                                        int iQ3 = ot1Var.q();
                                        f = ot1Var.W;
                                        if (ot1Var.X == -1) {
                                            f = 1.0f / f;
                                        }
                                        h(i5, iQ3, i5, (int) ((iQ3 * f) + 0.5f), ot1Var);
                                        ot1Var.d.e.d(ot1Var.q());
                                        ot1Var.e.e.d(ot1Var.k());
                                        ot1Var.a = true;
                                    } else {
                                        i7 = i4;
                                        i5 = i5;
                                        i12 = i3;
                                        if (i19 == 1) {
                                            h(i16, 0, i12, 0, ot1Var);
                                            ot1Var.e.e.m = ot1Var.k();
                                        } else {
                                            i10 = i16;
                                            if (i19 == 2) {
                                                i13 = iArr[1];
                                                if (i13 != i5) {
                                                }
                                                h(i10, ot1Var.q(), i5, (int) ((f3 * pt1Var.k()) + 0.5f), ot1Var);
                                                ot1Var.d.e.d(ot1Var.q());
                                                ot1Var.e.e.d(ot1Var.k());
                                                ot1Var.a = true;
                                            } else {
                                                if (ys1VarArr[2].f != null) {
                                                }
                                                h(i12, 0, i7, 0, ot1Var);
                                                ot1Var.d.e.d(ot1Var.q());
                                                ot1Var.e.e.d(ot1Var.k());
                                                ot1Var.a = true;
                                            }
                                        }
                                    }
                                } else {
                                    i7 = i4;
                                    i8 = i3;
                                    i9 = 1;
                                    i10 = i16;
                                }
                                i11 = 3;
                                if (i10 != i11) {
                                }
                            }
                        } else {
                            i = 1;
                        }
                        iQ = ot1Var.q();
                        if (i16 == 4) {
                            iQ = (pt1Var.q() - ys1Var4.g) - ys1Var3.g;
                            i16 = i;
                        }
                        iK = ot1Var.k();
                        if (i17 == 4) {
                            iK2 = (pt1Var.k() - ys1Var2.g) - ys1Var.g;
                            i2 = i;
                        } else {
                            iK2 = iK;
                            i2 = i17;
                        }
                        h(i16, iQ, i2, iK2, ot1Var);
                        ot1Var.d.e.d(ot1Var.q());
                        ot1Var.e.e.d(ot1Var.k());
                        ot1Var.a = true;
                    }
                    i = 1;
                    iQ = ot1Var.q();
                    if (i16 == 4) {
                        iQ = (pt1Var.q() - ys1Var4.g) - ys1Var3.g;
                        i16 = i;
                    }
                    iK = ot1Var.k();
                    if (i17 == 4) {
                        iK2 = (pt1Var.k() - ys1Var2.g) - ys1Var.g;
                        i2 = i;
                    } else {
                        iK2 = iK;
                        i2 = i17;
                    }
                    h(i16, iQ, i2, iK2, ot1Var);
                    ot1Var.d.e.d(ot1Var.q());
                    ot1Var.e.e.d(ot1Var.k());
                    ot1Var.a = true;
                } else {
                    i3 = 2;
                    if (i16 == 2) {
                        if (i17 == 4) {
                            if (i17 != 1) {
                                i3 = 2;
                                if (i17 != 2) {
                                }
                            } else {
                                i = 1;
                            }
                            iQ = ot1Var.q();
                            if (i16 == 4) {
                                iQ = (pt1Var.q() - ys1Var4.g) - ys1Var3.g;
                                i16 = i;
                            }
                            iK = ot1Var.k();
                            if (i17 == 4) {
                                iK2 = (pt1Var.k() - ys1Var2.g) - ys1Var.g;
                                i2 = i;
                            } else {
                                iK2 = iK;
                                i2 = i17;
                            }
                            h(i16, iQ, i2, iK2, ot1Var);
                            ot1Var.d.e.d(ot1Var.q());
                            ot1Var.e.e.d(ot1Var.k());
                            ot1Var.a = true;
                        }
                        i = 1;
                        iQ = ot1Var.q();
                        if (i16 == 4) {
                            iQ = (pt1Var.q() - ys1Var4.g) - ys1Var3.g;
                            i16 = i;
                        }
                        iK = ot1Var.k();
                        if (i17 == 4) {
                            iK2 = (pt1Var.k() - ys1Var2.g) - ys1Var.g;
                            i2 = i;
                        } else {
                            iK2 = iK;
                            i2 = i17;
                        }
                        h(i16, iQ, i2, iK2, ot1Var);
                        ot1Var.d.e.d(ot1Var.q());
                        ot1Var.e.e.d(ot1Var.k());
                        ot1Var.a = true;
                    }
                    if (i16 != 3) {
                        if (i17 == i3) {
                        }
                        if (i18 == 3) {
                            if (i17 == i3) {
                                h(i3, 0, i3, 0, ot1Var);
                            }
                            int iK4 = ot1Var.k();
                            h(1, (int) ((iK4 * ot1Var.W) + 0.5f), 1, iK4, ot1Var);
                            ot1Var.d.e.d(ot1Var.q());
                            ot1Var.e.e.d(ot1Var.k());
                            ot1Var.a = true;
                        } else {
                            i14 = i3;
                            if (i18 == 1) {
                                h(i14, 0, i17, 0, ot1Var);
                                ot1Var.d.e.m = ot1Var.q();
                            } else {
                                i3 = i14;
                                if (i18 == 2) {
                                    i15 = iArr[0];
                                    if (i15 != 1) {
                                    }
                                    h(1, (int) ((f2 * pt1Var.q()) + 0.5f), i17, ot1Var.k(), ot1Var);
                                    ot1Var.d.e.d(ot1Var.q());
                                    ot1Var.e.e.d(ot1Var.k());
                                    ot1Var.a = true;
                                } else {
                                    i5 = 1;
                                    i4 = i17;
                                    if (ys1VarArr[0].f != null) {
                                    }
                                    h(i3, 0, i4, 0, ot1Var);
                                    ot1Var.d.e.d(ot1Var.q());
                                    ot1Var.e.e.d(ot1Var.k());
                                    ot1Var.a = true;
                                }
                            }
                        }
                    } else {
                        i4 = i17;
                        i5 = 1;
                    }
                    i6 = 3;
                    if (i4 != i6) {
                        if (i16 == i3) {
                        }
                        if (i19 == i6) {
                            if (i16 == i3) {
                                h(i3, 0, i3, 0, ot1Var);
                            }
                            int iQ4 = ot1Var.q();
                            f = ot1Var.W;
                            if (ot1Var.X == -1) {
                                f = 1.0f / f;
                            }
                            h(i5, iQ4, i5, (int) ((iQ4 * f) + 0.5f), ot1Var);
                            ot1Var.d.e.d(ot1Var.q());
                            ot1Var.e.e.d(ot1Var.k());
                            ot1Var.a = true;
                        } else {
                            i7 = i4;
                            i5 = i5;
                            i12 = i3;
                            if (i19 == 1) {
                                h(i16, 0, i12, 0, ot1Var);
                                ot1Var.e.e.m = ot1Var.k();
                            } else {
                                i10 = i16;
                                if (i19 == 2) {
                                    i13 = iArr[1];
                                    if (i13 != i5) {
                                    }
                                    h(i10, ot1Var.q(), i5, (int) ((f3 * pt1Var.k()) + 0.5f), ot1Var);
                                    ot1Var.d.e.d(ot1Var.q());
                                    ot1Var.e.e.d(ot1Var.k());
                                    ot1Var.a = true;
                                } else {
                                    if (ys1VarArr[2].f != null) {
                                    }
                                    h(i12, 0, i7, 0, ot1Var);
                                    ot1Var.d.e.d(ot1Var.q());
                                    ot1Var.e.e.d(ot1Var.k());
                                    ot1Var.a = true;
                                }
                            }
                        }
                    } else {
                        i7 = i4;
                        i8 = i3;
                        i9 = 1;
                        i10 = i16;
                    }
                    i11 = 3;
                    if (i10 != i11) {
                    }
                }
            }
        }
    }

    public void d() {
        pt1 pt1Var = (pt1) this.c;
        ArrayList arrayList = (ArrayList) this.f;
        ArrayList<pr8> arrayList2 = (ArrayList) this.e;
        arrayList2.clear();
        pt1 pt1Var2 = (pt1) this.d;
        pt1Var2.d.f();
        pt1Var2.e.f();
        arrayList2.add(pt1Var2.d);
        arrayList2.add(pt1Var2.e);
        HashSet hashSet = null;
        for (ot1 ot1Var : pt1Var2.q0) {
            if (ot1Var instanceof b24) {
                c24 c24Var = new c24(ot1Var);
                ot1Var.d.f();
                ot1Var.e.f();
                c24Var.f = ((b24) ot1Var).u0;
                arrayList2.add(c24Var);
            } else {
                if (ot1Var.x()) {
                    if (ot1Var.b == null) {
                        ot1Var.b = new j31(ot1Var, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(ot1Var.b);
                } else {
                    arrayList2.add(ot1Var.d);
                }
                if (ot1Var.y()) {
                    if (ot1Var.c == null) {
                        ot1Var.c = new j31(ot1Var, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(ot1Var.c);
                } else {
                    arrayList2.add(ot1Var.e);
                }
                if (ot1Var instanceof d44) {
                    arrayList2.add(new c44(ot1Var));
                }
            }
        }
        if (hashSet != null) {
            arrayList2.addAll(hashSet);
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            ((pr8) it.next()).f();
        }
        for (pr8 pr8Var : arrayList2) {
            if (pr8Var.b != pt1Var2) {
                pr8Var.d();
            }
        }
        arrayList.clear();
        g(pt1Var.d, 0, arrayList);
        g(pt1Var.e, 1, arrayList);
        this.a = false;
    }

    public int e(pt1 pt1Var, int i) {
        ArrayList arrayList;
        int i2;
        long j;
        float f;
        long j2;
        ArrayList arrayList2 = (ArrayList) this.f;
        int size = arrayList2.size();
        long j3 = 0;
        int i3 = 0;
        long jMax = 0;
        while (i3 < size) {
            pr8 pr8Var = ((sq6) arrayList2.get(i3)).a;
            if (!(pr8Var instanceof j31) ? !(i != 0 ? (pr8Var instanceof dk8) : (pr8Var instanceof d64)) : ((j31) pr8Var).f != i) {
                ni2 ni2Var = (i == 0 ? pt1Var.d : pt1Var.e).h;
                ni2 ni2Var2 = (i == 0 ? pt1Var.d : pt1Var.e).i;
                ni2 ni2Var3 = pr8Var.h;
                ni2 ni2Var4 = pr8Var.i;
                boolean zContains = ni2Var3.l.contains(ni2Var);
                boolean zContains2 = ni2Var4.l.contains(ni2Var2);
                long j4 = pr8Var.j();
                if (zContains && zContains2) {
                    long jB = sq6.b(ni2Var3, j3);
                    arrayList = arrayList2;
                    long jA = sq6.a(ni2Var4, j3);
                    long j5 = jB - j4;
                    int i4 = ni2Var4.f;
                    i2 = i3;
                    if (j5 >= (-i4)) {
                        j5 += (long) i4;
                    }
                    long j6 = ni2Var3.f;
                    long j7 = ((-jA) - j4) - j6;
                    if (j7 >= j6) {
                        j7 -= j6;
                    }
                    ot1 ot1Var = pr8Var.b;
                    if (i == 0) {
                        f = ot1Var.d0;
                    } else if (i == 1) {
                        f = ot1Var.e0;
                    } else {
                        ot1Var.getClass();
                        f = -1.0f;
                    }
                    if (f > 0.0f) {
                        j2 = (long) ((j5 / (1.0f - f)) + (j7 / f));
                    } else {
                        j2 = 0;
                    }
                    float f2 = j2;
                    j = (((long) ni2Var3.f) + ((((long) ((f2 * f) + 0.5f)) + j4) + ((long) xs1.e(1.0f, f, f2, 0.5f)))) - ((long) ni2Var4.f);
                } else {
                    arrayList = arrayList2;
                    i2 = i3;
                    if (zContains) {
                        j = Math.max(sq6.b(ni2Var3, ni2Var3.f), ((long) ni2Var3.f) + j4);
                    } else if (zContains2) {
                        j = Math.max(-sq6.a(ni2Var4, ni2Var4.f), ((long) (-ni2Var4.f)) + j4);
                    } else {
                        j = (pr8Var.j() + ((long) ni2Var3.f)) - ((long) ni2Var4.f);
                    }
                }
            } else {
                arrayList = arrayList2;
                j = j3;
                i2 = i3;
            }
            jMax = Math.max(jMax, j);
            i3 = i2 + 1;
            arrayList2 = arrayList;
            j3 = 0;
        }
        return (int) jMax;
    }

    public void g(pr8 pr8Var, int i, ArrayList arrayList) {
        ni2 ni2Var = pr8Var.h;
        ni2 ni2Var2 = pr8Var.i;
        for (ki2 ki2Var : ni2Var.k) {
            if (ki2Var instanceof ni2) {
                b((ni2) ki2Var, i, arrayList, null);
            } else if (ki2Var instanceof pr8) {
                b(((pr8) ki2Var).h, i, arrayList, null);
            }
        }
        for (ki2 ki2Var2 : ni2Var2.k) {
            if (ki2Var2 instanceof ni2) {
                b((ni2) ki2Var2, i, arrayList, null);
            } else if (ki2Var2 instanceof pr8) {
                b(((pr8) ki2Var2).i, i, arrayList, null);
            }
        }
        if (i == 1) {
            for (ki2 ki2Var3 : ((dk8) pr8Var).k.k) {
                if (ki2Var3 instanceof ni2) {
                    b((ni2) ki2Var3, i, arrayList, null);
                }
            }
        }
    }

    public void h(int i, int i2, int i3, int i4, ot1 ot1Var) {
        ap0 ap0Var = (ap0) this.h;
        ap0Var.a = i;
        ap0Var.b = i3;
        ap0Var.c = i2;
        ap0Var.d = i4;
        ((et1) this.g).b(ot1Var, ap0Var);
        ot1Var.O(ap0Var.e);
        ot1Var.L(ap0Var.f);
        ot1Var.E = ap0Var.h;
        ot1Var.I(ap0Var.g);
    }

    public void i() {
        mi2 mi2Var;
        ro0 ro0Var;
        for (ot1 ot1Var : ((pt1) this.c).q0) {
            if (!ot1Var.a) {
                int[] iArr = ot1Var.p0;
                boolean z = false;
                int i = iArr[0];
                int i2 = iArr[1];
                int i3 = ot1Var.r;
                int i4 = ot1Var.s;
                boolean z2 = i == 2 || (i == 3 && i3 == 1);
                if (i2 == 2 || (i2 == 3 && i4 == 1)) {
                    z = true;
                }
                rl2 rl2Var = ot1Var.d.e;
                boolean z3 = rl2Var.j;
                rl2 rl2Var2 = ot1Var.e.e;
                boolean z4 = rl2Var2.j;
                boolean z5 = z2;
                if (z3 && z4) {
                    mi2Var = this;
                    mi2Var.h(1, rl2Var.g, 1, rl2Var2.g, ot1Var);
                    ot1Var.a = true;
                } else if (z3 && z) {
                    mi2Var = this;
                    mi2Var.h(1, rl2Var.g, 2, rl2Var2.g, ot1Var);
                    dk8 dk8Var = ot1Var.e;
                    if (i2 == 3) {
                        dk8Var.e.m = ot1Var.k();
                    } else {
                        dk8Var.e.d(ot1Var.k());
                        ot1Var.a = true;
                    }
                } else {
                    mi2Var = this;
                    if (z4 && z5) {
                        mi2Var.h(2, rl2Var.g, 1, rl2Var2.g, ot1Var);
                        d64 d64Var = ot1Var.d;
                        if (i == 3) {
                            d64Var.e.m = ot1Var.q();
                        } else {
                            d64Var.e.d(ot1Var.q());
                            ot1Var.a = true;
                        }
                    }
                }
                if (ot1Var.a && (ro0Var = ot1Var.e.l) != null) {
                    ro0Var.d(ot1Var.a0);
                }
                this = mi2Var;
            }
        }
    }

    public void j(fw6 fw6Var) {
        gu2 gu2Var = (gu2) this.d;
        fw6Var.getClass();
        nw6 nw6VarP0 = fw6Var.p0("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z = false;
            if (nw6VarP0.i0() && nw6VarP0.getLong(0) == 0) {
                z = true;
            }
            k55.d(nw6VarP0, null);
            gu2Var.a(fw6Var);
            if (!z) {
                ko6 ko6VarW = gu2Var.w(fw6Var);
                if (!ko6VarW.a) {
                    throw new IllegalStateException(("Pre-packaged database has an invalid schema: " + ko6VarW.b).toString());
                }
            }
            m(fw6Var);
            gu2Var.s(fw6Var);
            Iterator it = this.e.iterator();
            while (it.hasNext()) {
                ((ao6) it.next()).getClass();
                if (fw6Var instanceof ms7) {
                    ((ms7) fw6Var).a.getClass();
                }
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                k55.d(nw6VarP0, th);
                throw th2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0059  */
    public void k(fw6 fw6Var, int i, int i2) {
        boolean z;
        gu2 gu2Var = (gu2) this.d;
        fw6Var.getClass();
        vc2 vc2Var = (vc2) this.c;
        List listQ = g67.q(vc2Var.d, i, i2);
        if (listQ != null) {
            gu2Var.v(fw6Var);
            Iterator it = listQ.iterator();
            if (it.hasNext()) {
                throw eq3.h(it);
            }
            ko6 ko6VarW = gu2Var.w(fw6Var);
            if (ko6VarW.a) {
                gu2Var.u(fw6Var);
                m(fw6Var);
                return;
            } else {
                throw new IllegalStateException(("Migration didn't properly handle: " + ko6VarW.b).toString());
            }
        }
        vc2Var.getClass();
        if (i <= i2 || !vc2Var.k) {
            Set set = vc2Var.l;
            if (!vc2Var.j || (set != null && set.contains(Integer.valueOf(i)))) {
                z = false;
            } else {
                z = true;
            }
        } else {
            z = false;
        }
        if (z) {
            throw new IllegalStateException(("A migration from " + i + " to " + i2 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* functions.").toString());
        }
        if (vc2Var.o) {
            nw6 nw6VarP0 = fw6Var.p0("SELECT name, type FROM sqlite_master WHERE type = 'table' OR type = 'view'");
            try {
                ww4 ww4VarP = nc8.p();
                while (nw6VarP0.i0()) {
                    String strR = nw6VarP0.R(0);
                    if (!uq7.V(strR, "sqlite_", false) && !strR.equals("android_metadata")) {
                        ww4VarP.add(new pw5(strR, Boolean.valueOf(pe4.d(nw6VarP0.R(1), "view"))));
                    }
                }
                ww4 ww4VarH = nc8.h(ww4VarP);
                k55.d(nw6VarP0, null);
                ListIterator listIterator = ww4VarH.listIterator(0);
                while (true) {
                    vw4 vw4Var = (vw4) listIterator;
                    if (!vw4Var.hasNext()) {
                        break;
                    }
                    pw5 pw5Var = (pw5) vw4Var.next();
                    String str = (String) pw5Var.a;
                    if (((Boolean) pw5Var.b).booleanValue()) {
                        ly8.t("DROP VIEW IF EXISTS `" + str + '`', fw6Var);
                    } else {
                        ly8.t("DROP TABLE IF EXISTS `" + str + '`', fw6Var);
                    }
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    k55.d(nw6VarP0, th);
                    throw th2;
                }
            }
        } else {
            gu2Var.c(fw6Var);
        }
        Iterator it2 = this.e.iterator();
        while (it2.hasNext()) {
            ((ao6) it2.next()).getClass();
            if (fw6Var instanceof ms7) {
                ((ms7) fw6Var).a.getClass();
            }
        }
        gu2Var.a(fw6Var);
    }

    public void l(fw6 fw6Var) throws Throwable {
        Object bn6Var;
        fw6Var.getClass();
        gu2 gu2Var = (gu2) this.d;
        nw6 nw6VarP0 = fw6Var.p0("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name = 'room_master_table'");
        try {
            boolean z = nw6VarP0.i0() && nw6VarP0.getLong(0) != 0;
            k55.d(nw6VarP0, null);
            if (z) {
                nw6 nw6VarP1 = fw6Var.p0("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1");
                try {
                    String strR = nw6VarP1.i0() ? nw6VarP1.R(0) : null;
                    k55.d(nw6VarP1, null);
                    if (!((String) gu2Var.b).equals(strR) && !((String) gu2Var.c).equals(strR)) {
                        throw new IllegalStateException(("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: " + ((String) gu2Var.b) + ", found: " + strR).toString());
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        k55.d(nw6VarP1, th);
                        throw th2;
                    }
                }
            } else {
                ly8.t("BEGIN EXCLUSIVE TRANSACTION", fw6Var);
                try {
                    ko6 ko6VarW = gu2Var.w(fw6Var);
                    if (!ko6VarW.a) {
                        throw new IllegalStateException(("Pre-packaged database has an invalid schema: " + ko6VarW.b).toString());
                    }
                    gu2Var.u(fw6Var);
                    m(fw6Var);
                    bn6Var = be8.a;
                    if (!(bn6Var instanceof bn6)) {
                        ly8.t("END TRANSACTION", fw6Var);
                    }
                    Throwable thA = en6.a(bn6Var);
                    if (thA != null) {
                        ly8.t("ROLLBACK TRANSACTION", fw6Var);
                        throw thA;
                    }
                } catch (Throwable th3) {
                    bn6Var = new bn6(th3);
                }
            }
            gu2Var.t(fw6Var);
            for (ao6 ao6Var : this.e) {
                ao6Var.getClass();
                if (fw6Var instanceof ms7) {
                    is3 is3Var = ((ms7) fw6Var).a;
                    is3Var.getClass();
                    ao6Var.a.invoke(is3Var);
                }
            }
            this.a = true;
        } catch (Throwable th4) {
            try {
                throw th4;
            } catch (Throwable th5) {
                k55.d(nw6VarP0, th4);
                throw th5;
            }
        }
    }

    public void m(fw6 fw6Var) {
        ly8.t("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)", fw6Var);
        ly8.t("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + ((String) ((gu2) this.d).b) + "')", fw6Var);
    }
}
