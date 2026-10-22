package defpackage;

import java.lang.annotation.Annotation;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class aw5 extends lp0 implements Comparable {
    public static final de x = new de(1);
    public final boolean b;
    public final s65 c;
    public final as5 d;
    public final z86 e;
    public final z86 f;
    public yv5 k;
    public yv5 n;
    public yv5 p;
    public yv5 q;
    public transient x86 r;
    public transient de t;

    public aw5(aw5 aw5Var, z86 z86Var) {
        this.c = aw5Var.c;
        this.d = aw5Var.d;
        this.f = aw5Var.f;
        this.e = z86Var;
        this.k = aw5Var.k;
        this.n = aw5Var.n;
        this.p = aw5Var.p;
        this.q = aw5Var.q;
        this.b = aw5Var.b;
    }

    public static yv5 A(yv5 yv5Var, s79 s79Var) {
        od odVar = (od) ((od) yv5Var.a).v0(s79Var);
        yv5 yv5Var2 = yv5Var.b;
        if (yv5Var2 != null) {
            yv5Var = yv5Var.c(A(yv5Var2, s79Var));
        }
        return odVar == yv5Var.a ? yv5Var : new yv5(odVar, yv5Var.b, yv5Var.c, yv5Var.d, yv5Var.e, yv5Var.f);
    }

    public static Set C(yv5 yv5Var, Set set) {
        while (yv5Var != null) {
            z86 z86Var = yv5Var.c;
            if (yv5Var.d && z86Var != null) {
                if (set == null) {
                    set = new HashSet();
                }
                set.add(z86Var);
            }
            yv5Var = yv5Var.b;
        }
        return set;
    }

    public static s79 E(yv5 yv5Var) {
        s79 s79Var = ((od) yv5Var.a).N;
        yv5 yv5Var2 = yv5Var.b;
        return yv5Var2 != null ? s79.l(s79Var, E(yv5Var2)) : s79Var;
    }

    public static int F(pd pdVar) {
        String name = pdVar.P.getName();
        if (!name.startsWith("get") || name.length() <= 3) {
            return (!name.startsWith("is") || name.length() <= 2) ? 3 : 2;
        }
        return 1;
    }

    public static boolean G(yv5 yv5Var, z86 z86Var) {
        while (yv5Var != null) {
            if (yv5Var.d && z86Var.equals(yv5Var.c)) {
                return true;
            }
            yv5Var = yv5Var.b;
        }
        return false;
    }

    public static s79 H(int i, yv5... yv5VarArr) {
        s79 s79VarE = E(yv5VarArr[i]);
        do {
            i++;
            if (i >= yv5VarArr.length) {
                return s79VarE;
            }
        } while (yv5VarArr[i] == null);
        return s79.l(s79VarE, H(i, yv5VarArr));
    }

    public static boolean t(yv5 yv5Var) {
        while (yv5Var != null) {
            if (yv5Var.c != null && yv5Var.d) {
                return true;
            }
            yv5Var = yv5Var.b;
        }
        return false;
    }

    public static boolean u(yv5 yv5Var) {
        while (yv5Var != null) {
            z86 z86Var = yv5Var.c;
            if (z86Var != null && !z86Var.a.isEmpty()) {
                return true;
            }
            yv5Var = yv5Var.b;
        }
        return false;
    }

    public static boolean w(yv5 yv5Var) {
        z86 z86Var;
        while (yv5Var != null) {
            if (!yv5Var.f && (z86Var = yv5Var.c) != null && !z86Var.a.isEmpty()) {
                return true;
            }
            yv5Var = yv5Var.b;
        }
        return false;
    }

    public static boolean x(yv5 yv5Var) {
        while (yv5Var != null) {
            if (yv5Var.f) {
                return true;
            }
            yv5Var = yv5Var.b;
        }
        return false;
    }

    public static boolean y(yv5 yv5Var) {
        while (yv5Var != null) {
            if (yv5Var.e) {
                return true;
            }
            yv5Var = yv5Var.b;
        }
        return false;
    }

    public final void B(Set set, HashMap map, yv5 yv5Var) {
        String strC;
        for (yv5 yv5Var2 = yv5Var; yv5Var2 != null; yv5Var2 = yv5Var2.b) {
            z86 z86Var = yv5Var2.c;
            if (yv5Var2.d && z86Var != null) {
                aw5 aw5Var = (aw5) map.get(z86Var);
                if (aw5Var == null) {
                    aw5Var = new aw5(this.c, this.d, this.b, this.f, z86Var);
                    map.put(z86Var, aw5Var);
                }
                if (yv5Var == this.k) {
                    aw5Var.k = yv5Var2.c(aw5Var.k);
                } else if (yv5Var == this.p) {
                    aw5Var.p = yv5Var2.c(aw5Var.p);
                } else if (yv5Var == this.q) {
                    aw5Var.q = yv5Var2.c(aw5Var.q);
                } else {
                    if (yv5Var != this.n) {
                        y5.g(this, "Internal error: mismatched accessors, property: ");
                        return;
                    }
                    aw5Var.n = yv5Var2.c(aw5Var.n);
                }
            } else if (yv5Var2.e) {
                StringBuilder sb = new StringBuilder("Conflicting/ambiguous property name definitions (implicit name ");
                z86 z86Var2 = this.e;
                if (z86Var2 == null) {
                    Annotation[] annotationArr = u81.a;
                    strC = "[null]";
                } else {
                    strC = u81.c(z86Var2.a);
                }
                sb.append(strC);
                sb.append("): found multiple explicit names: ");
                sb.append(set);
                sb.append(", but also implicit accessor: ");
                sb.append(yv5Var2);
                throw new IllegalStateException(sb.toString());
            }
        }
    }

    public final pd I(pd pdVar, pd pdVar2) {
        Class<?> declaringClass = pdVar.P.getDeclaringClass();
        Class<?> declaringClass2 = pdVar2.P.getDeclaringClass();
        if (declaringClass != declaringClass2) {
            if (!declaringClass.isAssignableFrom(declaringClass2)) {
                if (!declaringClass2.isAssignableFrom(declaringClass)) {
                }
            }
        }
        String name = pdVar2.P.getName();
        char c = 2;
        char c2 = (!name.startsWith("set") || name.length() <= 3) ? (char) 2 : (char) 1;
        String name2 = pdVar.P.getName();
        if (name2.startsWith("set") && name2.length() > 3) {
            c = 1;
        }
        if (c2 != c) {
            return c2 < c ? pdVar2 : pdVar;
        }
        as5 as5Var = this.d;
        if (as5Var == null) {
            return null;
        }
        return as5Var.e0(pdVar, pdVar2);
    }

    public final void J(aw5 aw5Var) {
        yv5 yv5VarA = this.k;
        yv5 yv5Var = aw5Var.k;
        if (yv5VarA == null) {
            yv5VarA = yv5Var;
        } else if (yv5Var != null) {
            yv5VarA = yv5VarA.a(yv5Var);
        }
        this.k = yv5VarA;
        yv5 yv5VarA2 = this.n;
        yv5 yv5Var2 = aw5Var.n;
        if (yv5VarA2 == null) {
            yv5VarA2 = yv5Var2;
        } else if (yv5Var2 != null) {
            yv5VarA2 = yv5VarA2.a(yv5Var2);
        }
        this.n = yv5VarA2;
        yv5 yv5VarA3 = this.p;
        yv5 yv5Var3 = aw5Var.p;
        if (yv5VarA3 == null) {
            yv5VarA3 = yv5Var3;
        } else if (yv5Var3 != null) {
            yv5VarA3 = yv5VarA3.a(yv5Var3);
        }
        this.p = yv5VarA3;
        yv5 yv5VarA4 = this.q;
        yv5 yv5Var4 = aw5Var.q;
        if (yv5VarA4 == null) {
            yv5VarA4 = yv5Var4;
        } else if (yv5Var4 != null) {
            yv5VarA4 = yv5VarA4.a(yv5Var4);
        }
        this.q = yv5VarA4;
    }

    public final boolean K() {
        return x(this.k) || x(this.p) || x(this.q) || x(this.n);
    }

    public final boolean L() {
        return y(this.k) || y(this.p) || y(this.q) || y(this.n);
    }

    public final Object M(zv5 zv5Var) {
        yv5 yv5Var;
        yv5 yv5Var2;
        Object objK = null;
        if (this.d != null) {
            if (this.b) {
                yv5 yv5Var3 = this.p;
                if (yv5Var3 != null) {
                    objK = zv5Var.k((od) yv5Var3.a);
                }
            } else {
                yv5 yv5Var4 = this.n;
                objK = yv5Var4 != null ? zv5Var.k((od) yv5Var4.a) : null;
                if (objK == null && (yv5Var = this.q) != null) {
                    objK = zv5Var.k((od) yv5Var.a);
                }
            }
            if (objK == null && (yv5Var2 = this.k) != null) {
                return zv5Var.k((od) yv5Var2.a);
            }
        }
        return objK;
    }

    public final od N() {
        if (this.b) {
            return e();
        }
        od odVarF = f();
        if (odVarF == null && (odVarF = o()) == null) {
            odVarF = g();
        }
        return odVarF == null ? e() : odVarF;
    }

    @Override // defpackage.lp0
    public final boolean a() {
        if (this.n != null || this.q != null) {
            return true;
        }
        yv5 yv5Var = this.k;
        return yv5Var != null && y(yv5Var);
    }

    @Override // defpackage.lp0
    public final qk4 b() {
        od odVarE = e();
        as5 as5Var = this.d;
        qk4 qk4VarZ = as5Var == null ? null : as5Var.z(odVarE);
        return qk4VarZ == null ? qk4.e : qk4VarZ;
    }

    @Override // defpackage.lp0
    public final de c() {
        de deVar = this.t;
        de deVar2 = x;
        if (deVar != null) {
            if (deVar == deVar2) {
                return null;
            }
            return deVar;
        }
        de deVar3 = (de) M(new nh(this, 11));
        if (deVar3 != null) {
            deVar2 = deVar3;
        }
        this.t = deVar2;
        return deVar3;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        aw5 aw5Var = (aw5) obj;
        if (this.n != null) {
            if (aw5Var.n == null) {
                return -1;
            }
        } else if (aw5Var.n != null) {
            return 1;
        }
        return j().compareTo(aw5Var.j());
    }

    @Override // defpackage.lp0
    public final Class[] d() {
        return (Class[]) M(new km8(this));
    }

    @Override // defpackage.lp0
    public final td f() {
        yv5 yv5Var = this.n;
        if (yv5Var == null) {
            return null;
        }
        do {
            td tdVar = (td) yv5Var.a;
            if (tdVar.O instanceof jd) {
                return tdVar;
            }
            yv5Var = yv5Var.b;
        } while (yv5Var != null);
        return (td) this.n.a;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002e  */
    /* JADX WARN: Code duplicated, block: B:17:0x0040 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0042  */
    /* JADX WARN: Code duplicated, block: B:23:0x0046 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0043 A[SYNTHETIC] */
    @Override // defpackage.lp0
    public final ld g() {
        boolean zIsStatic;
        yv5 yv5Var = this.k;
        if (yv5Var == null) {
            return null;
        }
        ld ldVar = (ld) yv5Var.a;
        for (yv5 yv5Var2 = yv5Var.b; yv5Var2 != null; yv5Var2 = yv5Var2.b) {
            ld ldVar2 = (ld) yv5Var2.a;
            Class<?> declaringClass = ldVar.O.getDeclaringClass();
            Class<?> declaringClass2 = ldVar2.O.getDeclaringClass();
            if (declaringClass == declaringClass2) {
                zIsStatic = Modifier.isStatic(ldVar.A());
                if (zIsStatic != Modifier.isStatic(ldVar2.A())) {
                    q.h("Multiple fields representing property \"", j(), "\": ", ldVar.q0(), " vs ", ldVar2.q0());
                    return null;
                }
                if (zIsStatic) {
                    ldVar = ldVar2;
                }
            } else if (declaringClass.isAssignableFrom(declaringClass2)) {
                ldVar = ldVar2;
            } else if (declaringClass2.isAssignableFrom(declaringClass)) {
                continue;
            } else {
                zIsStatic = Modifier.isStatic(ldVar.A());
                if (zIsStatic != Modifier.isStatic(ldVar2.A())) {
                    q.h("Multiple fields representing property \"", j(), "\": ", ldVar.q0(), " vs ", ldVar2.q0());
                    return null;
                }
                if (zIsStatic) {
                    ldVar = ldVar2;
                }
            }
        }
        return ldVar;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0035  */
    /* JADX WARN: Code duplicated, block: B:21:0x003f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x0041  */
    /* JADX WARN: Code duplicated, block: B:29:0x0045 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x0042 A[SYNTHETIC] */
    @Override // defpackage.lp0
    public final pd h() {
        int iF;
        int iF2;
        yv5 yv5Var = this.p;
        if (yv5Var == null) {
            return null;
        }
        yv5 yv5Var2 = yv5Var.b;
        if (yv5Var2 == null) {
            return (pd) yv5Var.a;
        }
        while (true) {
            Object obj = yv5Var.a;
            if (yv5Var2 == null) {
                this.p = yv5Var.e();
                return (pd) obj;
            }
            Object obj2 = yv5Var2.a;
            pd pdVar = (pd) obj;
            Class<?> declaringClass = pdVar.P.getDeclaringClass();
            pd pdVar2 = (pd) obj2;
            Class<?> declaringClass2 = pdVar2.P.getDeclaringClass();
            if (declaringClass == declaringClass2) {
                iF = F(pdVar2);
                iF2 = F(pdVar);
                if (iF != iF2) {
                    q.h("Conflicting getter definitions for property \"", j(), "\": ", pdVar.q0(), " vs ", pdVar2.q0());
                    return null;
                }
                if (iF < iF2) {
                    yv5Var = yv5Var2;
                }
            } else if (declaringClass.isAssignableFrom(declaringClass2)) {
                yv5Var = yv5Var2;
            } else if (declaringClass2.isAssignableFrom(declaringClass)) {
                continue;
            } else {
                iF = F(pdVar2);
                iF2 = F(pdVar);
                if (iF != iF2) {
                    q.h("Conflicting getter definitions for property \"", j(), "\": ", pdVar.q0(), " vs ", pdVar2.q0());
                    return null;
                }
                if (iF < iF2) {
                    yv5Var = yv5Var2;
                }
            }
            yv5Var2 = yv5Var2.b;
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001d  */
    /* JADX WARN: Code duplicated, block: B:74:0x0106  */
    /* JADX WARN: Code duplicated, block: B:80:0x0116 A[PHI: r4 r9
      0x0116: PHI (r4v8 sp5) = (r4v4 sp5), (r4v4 sp5), (r4v4 sp5), (r4v3 sp5) binds: [B:87:0x0126, B:89:0x0133, B:90:0x0135, B:78:0x0113] A[DONT_GENERATE, DONT_INLINE]
      0x0116: PHI (r9v6 sp5) = (r9v3 sp5), (r9v3 sp5), (r9v3 sp5), (r9v2 sp5) binds: [B:87:0x0126, B:89:0x0133, B:90:0x0135, B:78:0x0113] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // defpackage.lp0
    public final x86 i() {
        od odVar;
        x86 x86Var;
        boolean z;
        Class cls;
        sp5 sp5Var;
        Boolean boolL;
        if (this.r == null) {
            boolean z2 = this.b;
            if (z2) {
                yv5 yv5Var = this.p;
                if (yv5Var != null) {
                    odVar = (od) yv5Var.a;
                } else {
                    yv5 yv5Var2 = this.k;
                    if (yv5Var2 != null) {
                        odVar = (od) yv5Var2.a;
                    } else {
                        odVar = null;
                    }
                }
            } else {
                yv5 yv5Var3 = this.n;
                if (yv5Var3 != null) {
                    odVar = (od) yv5Var3.a;
                } else {
                    yv5 yv5Var4 = this.q;
                    if (yv5Var4 != null) {
                        odVar = (od) yv5Var4.a;
                    } else {
                        yv5 yv5Var5 = this.k;
                        if (yv5Var5 != null) {
                            odVar = (od) yv5Var5.a;
                        } else {
                            yv5 yv5Var6 = this.p;
                            if (yv5Var6 != null) {
                                odVar = (od) yv5Var6.a;
                            } else {
                                odVar = null;
                            }
                        }
                    }
                }
            }
            if (odVar == null) {
                this.r = x86.q;
            } else {
                as5 as5Var = this.d;
                Boolean boolY = as5Var.Y(odVar);
                String strW = as5Var.w(odVar);
                Integer numB = as5Var.B(odVar);
                String strV = as5Var.v(odVar);
                if (boolY == null && numB == null && strV == null) {
                    x86 x86Var2 = x86.q;
                    if (strW != null) {
                        x86Var2 = new x86(x86Var2.a, strW, x86Var2.c, x86Var2.d, x86Var2.e, x86Var2.f, x86Var2.k);
                    }
                    this.r = x86Var2;
                } else {
                    x86 x86Var3 = x86.n;
                    if (strW != null || numB != null || strV != null) {
                        x86Var = new x86(boolY, strW, numB, strV, null, null, null);
                    } else if (boolY == null) {
                        x86Var = x86.q;
                    } else {
                        x86Var = boolY.booleanValue() ? x86.n : x86.p;
                    }
                    this.r = x86Var;
                }
                if (!z2) {
                    x86 x86Var4 = this.r;
                    od odVarE = e();
                    if (odVarE == null || (boolL = as5Var.l(odVar)) == null) {
                        z = true;
                    } else if (boolL.booleanValue()) {
                        z = false;
                        x86Var4 = new x86(x86Var4.a, x86Var4.b, x86Var4.c, x86Var4.d, new us2(21), x86Var4.f, x86Var4.k);
                    } else {
                        z = false;
                    }
                    fm4 fm4VarL = as5Var.L(odVar);
                    sp5 sp5Var2 = fm4VarL.a;
                    sp5 sp5Var3 = sp5.a;
                    if (sp5Var2 == sp5Var3) {
                        sp5Var2 = null;
                    }
                    sp5 sp5Var4 = fm4VarL.b;
                    if (sp5Var4 == sp5Var3) {
                        sp5Var4 = null;
                    }
                    s65 s65Var = this.c;
                    if (z || sp5Var2 == null || sp5Var4 == null) {
                        if (odVar instanceof pd) {
                            pd pdVar = (pd) odVar;
                            if (pdVar.P.getParameterCount() > 0) {
                                cls = pdVar.y0(0).f;
                            } else {
                                cls = odVar.D().f;
                            }
                        } else {
                            cls = odVar.D().f;
                        }
                        s65Var.e(cls);
                    }
                    if (z || sp5Var2 == null || sp5Var4 == null) {
                        t65 t65Var = (t65) s65Var;
                        t65Var.k.getClass();
                        if (sp5Var2 == null) {
                            sp5Var2 = null;
                        }
                        if (sp5Var4 == null) {
                            sp5Var4 = null;
                        }
                        if (z) {
                            t65Var.k.getClass();
                            if (!Boolean.TRUE.equals(null) || odVarE == null) {
                                sp5Var = sp5Var2;
                            } else {
                                sp5Var = sp5Var2;
                                x86Var4 = new x86(x86Var4.a, x86Var4.b, x86Var4.c, x86Var4.d, new us2(21), x86Var4.f, x86Var4.k);
                            }
                        } else {
                            sp5Var = sp5Var2;
                        }
                    } else {
                        sp5Var = sp5Var2;
                    }
                    sp5 sp5Var5 = sp5Var4;
                    if (sp5Var != null || sp5Var5 != null) {
                        x86Var4 = new x86(x86Var4.a, x86Var4.b, x86Var4.c, x86Var4.d, x86Var4.e, sp5Var, sp5Var5);
                    }
                    this.r = x86Var4;
                }
            }
        }
        return this.r;
    }

    @Override // defpackage.lp0
    public final String j() {
        z86 z86Var = this.e;
        if (z86Var == null) {
            return null;
        }
        return z86Var.a;
    }

    @Override // defpackage.lp0
    public final gc8 k() {
        if (this.b) {
            jb9 jb9VarH = h();
            return (jb9VarH == null && (jb9VarH = g()) == null) ? lc8.K : jb9VarH.D();
        }
        jb9 jb9VarF = f();
        if (jb9VarF == null) {
            pd pdVarO = o();
            if (pdVarO != null) {
                return pdVarO.y0(0);
            }
            jb9VarF = g();
        }
        return (jb9VarF == null && (jb9VarF = h()) == null) ? lc8.K : jb9VarF.D();
    }

    @Override // defpackage.lp0
    public final Class l() {
        return k().f;
    }

    @Override // defpackage.lp0
    public final pd o() {
        Object obj;
        yv5 yv5Var = this.q;
        if (yv5Var == null) {
            return null;
        }
        yv5 yv5Var2 = yv5Var.b;
        if (yv5Var2 == null) {
            return (pd) yv5Var.a;
        }
        while (true) {
            Object obj2 = yv5Var.a;
            if (yv5Var2 == null) {
                this.q = yv5Var.e();
                return (pd) obj2;
            }
            yv5 yv5Var3 = yv5Var2.b;
            Object obj3 = yv5Var2.a;
            pd pdVarI = I((pd) obj2, (pd) obj3);
            if (pdVarI != obj2) {
                if (pdVarI != obj3) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(obj2);
                    arrayList.add(obj3);
                    while (true) {
                        obj = yv5Var.a;
                        if (yv5Var3 == null) {
                            break;
                        }
                        Object obj4 = yv5Var3.a;
                        pd pdVarI2 = I((pd) obj, (pd) obj4);
                        if (pdVarI2 != obj) {
                            if (pdVarI2 == obj4) {
                                arrayList.clear();
                                yv5Var = yv5Var3;
                            } else {
                                arrayList.add(obj4);
                            }
                        }
                        yv5Var3 = yv5Var3.b;
                    }
                    if (arrayList.isEmpty()) {
                        this.q = yv5Var.e();
                        return (pd) obj;
                    }
                    c6.f(dj7.l("Conflicting setter definitions for property \"", j(), "\": ", (String) arrayList.stream().map(new wm0(2)).collect(Collectors.joining(" vs "))));
                    return null;
                }
                yv5Var = yv5Var2;
            }
            yv5Var2 = yv5Var3;
        }
    }

    @Override // defpackage.lp0
    public final void p() {
        N();
    }

    @Override // defpackage.lp0
    public final boolean r() {
        return u(this.k) || u(this.p) || u(this.q) || t(this.n);
    }

    @Override // defpackage.lp0
    public final boolean s() {
        Boolean bool = (Boolean) M(new tr9(this, 12));
        return bool != null && bool.booleanValue();
    }

    public final String toString() {
        return "[Property '" + this.e + "'; ctors: " + this.n + ", field(s): " + this.k + ", getter(s): " + this.p + ", setter(s): " + this.q + "]";
    }

    public aw5(s65 s65Var, as5 as5Var, boolean z, z86 z86Var, z86 z86Var2) {
        this.c = s65Var;
        this.d = as5Var;
        this.f = z86Var;
        this.e = z86Var2;
        this.b = z;
    }
}
