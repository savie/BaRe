package defpackage;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.HashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class mp0 implements kp0, Serializable {
    public final Object G;
    public final Class[] H;
    public final transient HashMap I;
    public final x86 a;
    public final z77 b;
    public final z86 c;
    public final gc8 d;
    public final gc8 e;
    public gc8 f;
    public final od k;
    public final transient Method n;
    public final transient Field p;
    public em4 q;
    public em4 r;
    public rc8 t;
    public transient od2 x;
    public final boolean y;

    public mp0(lp0 lp0Var, od odVar, ee eeVar, gc8 gc8Var, em4 em4Var, sc8 sc8Var, gc8 gc8Var2, boolean z, Object obj, Class[] clsArr) {
        x86 x86VarI = lp0Var.i();
        this.a = x86VarI == null ? x86.q : x86VarI;
        this.k = odVar;
        this.b = new z77(lp0Var.j());
        lp0Var.p();
        this.c = null;
        this.d = gc8Var;
        this.q = em4Var;
        this.x = em4Var == null ? f96.i : null;
        this.t = sc8Var;
        this.e = gc8Var2;
        if (odVar instanceof ld) {
            this.n = null;
            this.p = ((ld) odVar).O;
        } else if (odVar instanceof pd) {
            this.n = ((pd) odVar).P;
            this.p = null;
        } else {
            this.n = null;
            this.p = null;
        }
        this.y = z;
        this.G = obj;
        this.r = null;
        this.H = clsArr;
    }

    @Override // defpackage.kp0
    public final od a() {
        return this.k;
    }

    @Override // defpackage.kp0
    public final bk4 b(s65 s65Var, Class cls) {
        bk4 bk4VarF = s65Var.f(cls);
        as5 as5VarD = s65Var.d();
        od odVarA = a();
        bk4 bk4VarH = odVarA != null ? as5VarD.h(odVarA) : null;
        if (bk4VarF == null) {
            return bk4VarH == null ? kp0.h : bk4VarH;
        }
        return bk4VarH == null ? bk4VarF : bk4VarF.c(bk4VarH);
    }

    @Override // defpackage.kp0
    public final qk4 c(s65 s65Var, Class cls) {
        as5 as5VarD = s65Var.d();
        od odVarA = a();
        if (odVarA == null) {
            t65 t65Var = (t65) s65Var;
            t65Var.e(cls);
            t65Var.k.getClass();
            return qk4.e;
        }
        t65 t65Var2 = (t65) s65Var;
        t65Var2.e(odVarA.C());
        t65Var2.e(cls);
        t65Var2.k.getClass();
        return qk4.e.a(as5VarD.z(odVarA));
    }

    public em4 d(od2 od2Var, Class cls, c87 c87Var) {
        ib ibVar;
        gc8 gc8Var = this.f;
        int i = 9;
        if (gc8Var != null) {
            gc8 gc8VarE = c87Var.e(gc8Var, cls);
            od2Var.getClass();
            em4 em4VarM = c87Var.m(gc8VarE, this);
            ibVar = new ib(i, em4VarM, od2Var.s(gc8VarE.f, em4VarM));
        } else {
            od2Var.getClass();
            em4 em4VarN = c87Var.n(cls, this);
            ibVar = new ib(i, em4VarN, od2Var.s(cls, em4VarN));
        }
        od2 od2Var2 = (od2) ibVar.c;
        if (od2Var != od2Var2) {
            this.x = od2Var2;
        }
        return (em4) ibVar.b;
    }

    public final boolean e(Object obj, fk4 fk4Var, c87 c87Var, em4 em4Var) throws ag4 {
        boolean zL;
        if (!em4Var.h()) {
            boolean zL2 = c87Var.a.l(x77.FAIL_ON_SELF_REFERENCES);
            z77 z77Var = this.b;
            if (!zL2) {
                zL = c87Var.a.l(x77.WRITE_SELF_REFERENCES_AS_NULL);
            } else if (!(em4Var instanceof op0)) {
                zL = false;
            } else {
                if (!(obj instanceof Throwable) || !(this.k instanceof ld) || !"cause".equals(z77Var.a)) {
                    c87Var.B("Direct self-reference leading to cycle");
                    throw null;
                }
                zL = true;
            }
            if (zL) {
                if (this.r != null) {
                    if (((cv3) fk4Var).e.b != 1) {
                        fk4Var.r(z77Var);
                    }
                    this.r.e(null, fk4Var, c87Var);
                }
                return true;
            }
        }
        return false;
    }

    public void f(em4 em4Var) {
        em4 em4Var2 = this.r;
        if (em4Var2 == null || em4Var2 == em4Var) {
            this.r = em4Var;
        } else {
            l0.e(dj7.l("Cannot override _nullSerializer: had a ", u81.e(em4Var2), ", trying to set to ", u81.e(em4Var)));
        }
    }

    public void g(em4 em4Var) {
        em4 em4Var2 = this.q;
        if (em4Var2 == null || em4Var2 == em4Var) {
            this.q = em4Var;
        } else {
            l0.e(dj7.l("Cannot override _serializer: had a ", u81.e(em4Var2), ", trying to set to ", u81.e(em4Var)));
        }
    }

    public void h(v77 v77Var) {
        boolean zI = v77Var.i(u65.OVERRIDE_PUBLIC_ACCESS_MODIFIERS);
        Member memberR0 = this.k.r0();
        if (memberR0 != null) {
            u81.d(memberR0, zI);
        }
    }

    public mp0 i(fk5 fk5Var) {
        z77 z77Var = this.b;
        String strA = fk5Var.a(z77Var.a);
        return strA.equals(z77Var.a) ? this : new mp0(this, z86.a(strA));
    }

    public void j(Object obj, fk4 fk4Var, c87 c87Var) throws ag4 {
        Method method = this.n;
        Object objInvoke = method == null ? this.p.get(obj) : method.invoke(obj, null);
        if (objInvoke == null) {
            em4 em4Var = this.r;
            if (em4Var != null) {
                em4Var.e(null, fk4Var, c87Var);
                return;
            } else {
                fk4Var.v();
                return;
            }
        }
        em4 em4VarD = this.q;
        if (em4VarD == null) {
            Class<?> cls = objInvoke.getClass();
            od2 od2Var = this.x;
            em4 em4VarX = od2Var.x(cls);
            em4VarD = em4VarX == null ? d(od2Var, cls, c87Var) : em4VarX;
        }
        Object obj2 = this.G;
        if (obj2 != null) {
            if (pk4.c == obj2) {
                if (em4VarD.c(c87Var, objInvoke)) {
                    l(fk4Var, c87Var);
                    return;
                }
            } else if (obj2.equals(objInvoke)) {
                l(fk4Var, c87Var);
                return;
            }
        }
        if (objInvoke == obj && e(obj, fk4Var, c87Var, em4VarD)) {
            return;
        }
        rc8 rc8Var = this.t;
        if (rc8Var == null) {
            em4VarD.e(objInvoke, fk4Var, c87Var);
        } else {
            em4VarD.f(objInvoke, fk4Var, c87Var, rc8Var);
        }
    }

    public void k(Object obj, fk4 fk4Var, c87 c87Var) throws ag4 {
        Method method = this.n;
        Object objInvoke = method == null ? this.p.get(obj) : method.invoke(obj, null);
        z77 z77Var = this.b;
        Object obj2 = this.G;
        if (objInvoke == null) {
            if ((obj2 == null || !c87Var.y(obj2)) && this.r != null) {
                fk4Var.r(z77Var);
                this.r.e(null, fk4Var, c87Var);
                return;
            }
            return;
        }
        em4 em4VarD = this.q;
        if (em4VarD == null) {
            Class<?> cls = objInvoke.getClass();
            od2 od2Var = this.x;
            em4 em4VarX = od2Var.x(cls);
            em4VarD = em4VarX == null ? d(od2Var, cls, c87Var) : em4VarX;
        }
        if (obj2 != null) {
            if (pk4.c == obj2) {
                if (em4VarD.c(c87Var, objInvoke)) {
                    return;
                }
            } else if (obj2.equals(objInvoke)) {
                return;
            }
        }
        if (objInvoke == obj && e(obj, fk4Var, c87Var, em4VarD)) {
            return;
        }
        fk4Var.r(z77Var);
        rc8 rc8Var = this.t;
        if (rc8Var == null) {
            em4VarD.e(objInvoke, fk4Var, c87Var);
        } else {
            em4VarD.f(objInvoke, fk4Var, c87Var, rc8Var);
        }
    }

    public final void l(fk4 fk4Var, c87 c87Var) {
        em4 em4Var = this.r;
        if (em4Var != null) {
            em4Var.e(null, fk4Var, c87Var);
        } else {
            fk4Var.v();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(40);
        sb.append("property '");
        sb.append(this.b.a);
        sb.append("' (");
        Method method = this.n;
        if (method != null) {
            sb.append("via method ");
            sb.append(method.getDeclaringClass().getName());
            sb.append("#");
            sb.append(method.getName());
        } else {
            Field field = this.p;
            if (field != null) {
                sb.append("field \"");
                sb.append(field.getDeclaringClass().getName());
                sb.append("#");
                sb.append(field.getName());
            } else {
                sb.append("virtual");
            }
        }
        em4 em4Var = this.q;
        if (em4Var == null) {
            sb.append(", no static serializer");
        } else {
            sb.append(", static serializer of type ".concat(em4Var.getClass().getName()));
        }
        sb.append(')');
        return sb.toString();
    }

    public mp0(mp0 mp0Var, boolean z) {
        this.a = mp0Var.a;
    }

    public mp0(mp0 mp0Var) {
        this(mp0Var, mp0Var.b);
    }

    public mp0(mp0 mp0Var, z86 z86Var) {
        this(mp0Var, false);
        this.b = new z77(z86Var.a);
        this.c = mp0Var.c;
        this.d = mp0Var.d;
        this.k = mp0Var.k;
        this.n = mp0Var.n;
        this.p = mp0Var.p;
        this.q = mp0Var.q;
        this.r = mp0Var.r;
        if (mp0Var.I != null) {
            this.I = new HashMap(mp0Var.I);
        }
        this.e = mp0Var.e;
        this.x = f96.i;
        this.y = mp0Var.y;
        this.G = mp0Var.G;
        this.H = mp0Var.H;
        this.t = mp0Var.t;
        this.f = mp0Var.f;
    }

    public mp0(mp0 mp0Var, z77 z77Var) {
        this(mp0Var, false);
        this.b = z77Var;
        this.c = mp0Var.c;
        this.k = mp0Var.k;
        this.d = mp0Var.d;
        this.n = mp0Var.n;
        this.p = mp0Var.p;
        this.q = mp0Var.q;
        this.r = mp0Var.r;
        if (mp0Var.I != null) {
            this.I = new HashMap(mp0Var.I);
        }
        this.e = mp0Var.e;
        this.x = f96.i;
        this.y = mp0Var.y;
        this.G = mp0Var.G;
        this.H = mp0Var.H;
        this.t = mp0Var.t;
        this.f = mp0Var.f;
    }
}
