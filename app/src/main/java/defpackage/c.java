package defpackage;

import java.io.EOFException;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c {
    public static final hy0 a;
    public static final hy0 b;
    public static final hy0 c;
    public static final hy0 d;
    public static final hy0 e;

    static {
        hy0 hy0Var = hy0.d;
        a = ge.v("/");
        b = ge.v("\\");
        c = ge.v("/\\");
        d = ge.v(".");
        e = ge.v("..");
    }

    public static final int a(ey5 ey5Var) {
        hy0 hy0Var = ey5Var.a;
        if (hy0Var.d() != 0) {
            if (hy0Var.i(0) != 47) {
                if (hy0Var.i(0) == 92) {
                    if (hy0Var.d() > 2 && hy0Var.i(1) == 92) {
                        hy0 hy0Var2 = b;
                        hy0Var2.getClass();
                        int iF = hy0Var.f(hy0Var2.h(), 2);
                        return iF == -1 ? hy0Var.d() : iF;
                    }
                } else if (hy0Var.d() > 2 && hy0Var.i(1) == 58 && hy0Var.i(2) == 92) {
                    char cI = (char) hy0Var.i(0);
                    if ('a' <= cI && cI < '{') {
                        return 3;
                    }
                    if ('A' <= cI && cI < '[') {
                        return 3;
                    }
                }
            }
            return 1;
        }
        return -1;
    }

    public static final ey5 b(ey5 ey5Var, ey5 ey5Var2, boolean z) {
        ey5Var2.getClass();
        if (a(ey5Var2) != -1 || ey5Var2.c() != null) {
            return ey5Var2;
        }
        hy0 hy0VarC = c(ey5Var);
        if (hy0VarC == null && (hy0VarC = c(ey5Var2)) == null) {
            hy0VarC = f(ey5.b);
        }
        nw0 nw0Var = new nw0();
        nw0Var.D(ey5Var.a);
        if (nw0Var.b > 0) {
            nw0Var.D(hy0VarC);
        }
        nw0Var.D(ey5Var2.a);
        return d(nw0Var, z);
    }

    public static final hy0 c(ey5 ey5Var) {
        hy0 hy0Var = ey5Var.a;
        hy0 hy0Var2 = a;
        if (hy0.g(hy0Var, hy0Var2) != -1) {
            return hy0Var2;
        }
        hy0 hy0Var3 = ey5Var.a;
        hy0 hy0Var4 = b;
        if (hy0.g(hy0Var3, hy0Var4) != -1) {
            return hy0Var4;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x012a A[EDGE_INSN: B:101:0x012a->B:84:0x012a BREAK  A[LOOP:1: B:53:0x00b9->B:116:0x00b9], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:102:0x0118 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:114:0x00df A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:127:0x0136 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:57:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:58:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:86:0x0131 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:87:0x0133  */
    /* JADX WARN: Code duplicated, block: B:91:0x0148  */
    public static final ey5 d(nw0 nw0Var, boolean z) throws EOFException {
        hy0 hy0Var;
        long j;
        char cH;
        boolean z2;
        ArrayList arrayList;
        boolean zX;
        hy0 hy0Var2;
        int size;
        int i;
        long jT;
        hy0 hy0VarO;
        hy0 hy0Var3;
        nw0 nw0Var2 = new nw0();
        hy0 hy0VarE = null;
        int i2 = 0;
        while (true) {
            hy0 hy0Var4 = a;
            hy0Var4.getClass();
            if (!nw0Var.n(0L, hy0Var4, hy0Var4.d())) {
                hy0Var = b;
                hy0Var.getClass();
                if (!nw0Var.n(0L, hy0Var, hy0Var.d())) {
                    break;
                }
            }
            byte b2 = nw0Var.readByte();
            if (hy0VarE == null) {
                hy0VarE = e(b2);
            }
            i2++;
        }
        boolean z3 = i2 >= 2 && pe4.d(hy0VarE, hy0Var);
        hy0 hy0Var5 = c;
        if (z3) {
            hy0VarE.getClass();
            nw0Var2.D(hy0VarE);
            nw0Var2.D(hy0VarE);
        } else {
            if (i2 <= 0) {
                long jT2 = nw0Var.T(hy0Var5);
                if (hy0VarE == null) {
                    hy0VarE = jT2 == -1 ? f(ey5.b) : e(nw0Var.h(jT2));
                }
                if (pe4.d(hy0VarE, hy0Var) && nw0Var.b >= 2) {
                    j = -1;
                    if (nw0Var.h(1L) == 58 && (('a' <= (cH = (char) nw0Var.h(0L)) && cH < '{') || ('A' <= cH && cH < '['))) {
                        if (jT2 == 2) {
                            nw0Var2.f0(nw0Var, 3L);
                        } else {
                            nw0Var2.f0(nw0Var, 2L);
                        }
                    }
                }
                if (nw0Var2.b > 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                arrayList = new ArrayList();
                while (true) {
                    zX = nw0Var.x();
                    hy0Var2 = d;
                    if (!zX) {
                        break;
                    }
                    jT = nw0Var.T(hy0Var5);
                    if (jT == j) {
                        hy0VarO = nw0Var.o(nw0Var.b);
                    } else {
                        hy0VarO = nw0Var.o(jT);
                        nw0Var.readByte();
                    }
                    hy0Var3 = e;
                    if (pe4.d(hy0VarO, hy0Var3)) {
                        if (z2 || !arrayList.isEmpty()) {
                            if (z || (!z2 && (arrayList.isEmpty() || pe4.d(el1.a1(arrayList), hy0Var3)))) {
                                arrayList.add(hy0VarO);
                            } else if (!z3 || arrayList.size() != 1) {
                                if (!arrayList.isEmpty()) {
                                    arrayList.remove(arrayList.size() - 1);
                                }
                            }
                        }
                    } else if (pe4.d(hy0VarO, hy0Var2) && !pe4.d(hy0VarO, hy0.d)) {
                        arrayList.add(hy0VarO);
                    }
                }
                size = arrayList.size();
                for (i = 0; i < size; i++) {
                    if (i > 0) {
                        nw0Var2.D(hy0VarE);
                    }
                    nw0Var2.D((hy0) arrayList.get(i));
                }
                if (nw0Var2.b == 0) {
                    nw0Var2.D(hy0Var2);
                }
                return new ey5(nw0Var2.o(nw0Var2.b));
            }
            hy0VarE.getClass();
            nw0Var2.D(hy0VarE);
        }
        j = -1;
        if (nw0Var2.b > 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        arrayList = new ArrayList();
        while (true) {
            zX = nw0Var.x();
            hy0Var2 = d;
            if (!zX) {
                break;
                break;
            }
            jT = nw0Var.T(hy0Var5);
            if (jT == j) {
                hy0VarO = nw0Var.o(nw0Var.b);
            } else {
                hy0VarO = nw0Var.o(jT);
                nw0Var.readByte();
            }
            hy0Var3 = e;
            if (pe4.d(hy0VarO, hy0Var3)) {
                if (z2) {
                }
                if (z) {
                }
                arrayList.add(hy0VarO);
            } else if (pe4.d(hy0VarO, hy0Var2)) {
            }
        }
        size = arrayList.size();
        while (i < size) {
            if (i > 0) {
                nw0Var2.D(hy0VarE);
            }
            nw0Var2.D((hy0) arrayList.get(i));
        }
        if (nw0Var2.b == 0) {
            nw0Var2.D(hy0Var2);
        }
        return new ey5(nw0Var2.o(nw0Var2.b));
    }

    public static final hy0 e(byte b2) {
        if (b2 == 47) {
            return a;
        }
        if (b2 == 92) {
            return b;
        }
        c6.f(fz5.j(b2, "not a directory separator: "));
        return null;
    }

    public static final hy0 f(String str) {
        if (pe4.d(str, "/")) {
            return a;
        }
        if (pe4.d(str, "\\")) {
            return b;
        }
        c6.f(xs1.j("not a directory separator: ", str));
        return null;
    }
}
