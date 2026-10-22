package defpackage;

import java.lang.reflect.Modifier;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p70 extends tn7 implements iv1 {
    public final gc8 c;
    public final kp0 d;
    public final rc8 e;
    public final em4 f;
    public final fk5 k;
    public transient od2 n;
    public final Object p;
    public final boolean q;

    public p70(mh6 mh6Var, rc8 rc8Var, em4 em4Var) {
        super(mh6Var);
        this.c = mh6Var.G;
        this.d = null;
        this.e = rc8Var;
        this.f = em4Var;
        this.k = null;
        this.p = null;
        this.q = false;
        this.n = f96.i;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0026  */
    /* JADX WARN: Code duplicated, block: B:19:0x0037  */
    /* JADX WARN: Code duplicated, block: B:22:0x0045  */
    @Override // defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        em4 em4VarV;
        qk4 qk4VarC;
        pk4 pk4Var;
        Object obj;
        boolean z;
        boolean zY;
        boolean zI;
        Object objC;
        v77 v77Var = c87Var.a;
        rc8 rc8Var = this.e;
        rc8 rc8VarA = rc8Var != null ? rc8Var.a(kp0Var) : rc8Var;
        Object objL = null;
        if (kp0Var != null) {
            od odVarA = kp0Var.a();
            as5 as5VarD = v77Var.d();
            if (odVarA == null || (objC = as5VarD.c(odVarA)) == null) {
                em4VarV = null;
            } else {
                em4VarV = c87Var.E(odVarA, objC);
            }
        } else {
            em4VarV = null;
        }
        em4 em4Var = this.f;
        gc8 gc8Var = this.c;
        if (em4VarV == null) {
            if (em4Var == null) {
                if (gc8Var.z0()) {
                    zI = false;
                } else if (Modifier.isFinal(gc8Var.f.getModifiers()) || gc8Var.q) {
                    zI = true;
                } else {
                    as5 as5VarD2 = v77Var.d();
                    if (kp0Var != null && kp0Var.a() != null) {
                        am4 am4VarJ = as5VarD2.J(kp0Var.a());
                        if (am4VarJ == am4.b) {
                            zI = true;
                        } else if (am4VarJ == am4.a) {
                            zI = false;
                        }
                    }
                    zI = v77Var.i(u65.USE_STATIC_TYPING);
                }
                em4VarV = zI ? c87Var.m(gc8Var, kp0Var) : em4Var;
            } else {
                em4VarV = c87Var.v(em4Var, kp0Var);
            }
        }
        em4 em4VarJ = tn7.j(c87Var, kp0Var, em4VarV);
        p70 p70Var = (this.d == kp0Var && rc8Var == rc8VarA && em4Var == em4VarJ) ? this : new p70(this, kp0Var, rc8VarA, em4VarJ, this.k, this.p, this.q);
        if (kp0Var != null && (qk4VarC = kp0Var.c(v77Var, this.a)) != null && (pk4Var = qk4VarC.b) != pk4.e) {
            int iOrdinal = pk4Var.ordinal();
            if (iOrdinal != 1) {
                pk4 pk4Var2 = pk4.c;
                if (iOrdinal != 2) {
                    if (iOrdinal == 3) {
                        obj = pk4Var2;
                        z = true;
                    } else if (iOrdinal != 4) {
                        if (iOrdinal == 5) {
                            objL = c87Var.x(qk4VarC.d);
                            zY = objL != null ? c87Var.y(objL) : false;
                        }
                        obj = objL;
                        z = zY;
                    } else {
                        objL = iz1.l(gc8Var);
                        if (objL != null && objL.getClass().isArray()) {
                            objL = zh8.p(objL);
                        }
                    }
                } else if (gc8Var.C()) {
                    objL = pk4Var2;
                }
                obj = objL;
                z = true;
            } else {
                obj = objL;
                z = true;
            }
            if (this.p != obj || this.q != z) {
                return new p70(p70Var, p70Var.d, p70Var.e, p70Var.f, p70Var.k, obj, z);
            }
        }
        return p70Var;
    }

    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        AtomicReference atomicReference = (AtomicReference) obj;
        if (atomicReference.get() == null) {
            return true;
        }
        Object obj2 = atomicReference.get();
        if (obj2 == null) {
            return this.q;
        }
        Object obj3 = this.p;
        if (obj3 == null) {
            return false;
        }
        em4 em4VarO = this.f;
        if (em4VarO == null) {
            try {
                em4VarO = o(c87Var, obj2.getClass());
            } catch (yk4 e) {
                throw new er3(e);
            }
        }
        return obj3 == pk4.c ? em4VarO.c(c87Var, obj2) : obj3.equals(obj2);
    }

    @Override // defpackage.em4
    public final boolean d() {
        return this.k != null;
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) throws ag4 {
        Object obj2 = ((AtomicReference) obj).get();
        if (obj2 == null) {
            if (this.k == null) {
                c87Var.h(fk4Var);
                return;
            }
            return;
        }
        em4 em4VarO = this.f;
        if (em4VarO == null) {
            em4VarO = o(c87Var, obj2.getClass());
        }
        rc8 rc8Var = this.e;
        if (rc8Var != null) {
            em4VarO.f(obj2, fk4Var, c87Var, rc8Var);
        } else {
            em4VarO.e(obj2, fk4Var, c87Var);
        }
    }

    @Override // defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) throws ag4 {
        Object obj2 = ((AtomicReference) obj).get();
        if (obj2 == null) {
            if (this.k == null) {
                c87Var.h(fk4Var);
            }
        } else {
            em4 em4VarO = this.f;
            if (em4VarO == null) {
                em4VarO = o(c87Var, obj2.getClass());
            }
            em4VarO.f(obj2, fk4Var, c87Var, rc8Var);
        }
    }

    @Override // defpackage.em4
    public final em4 g(fk5 fk5Var) {
        em4 em4Var;
        em4 em4Var2 = this.f;
        if (em4Var2 != null) {
            em4 em4VarG = em4Var2.g(fk5Var);
            if (em4VarG != em4Var2) {
                em4Var = em4VarG;
            }
            return this;
        }
        em4Var = em4Var2;
        fk5 fk5Var2 = this.k;
        fk5 dk5Var = fk5Var2 == null ? fk5Var : new dk5(fk5Var, fk5Var2);
        if (em4Var2 != em4Var || fk5Var2 != dk5Var) {
            return new p70(this, this.d, this.e, em4Var, dk5Var, this.p, this.q);
        }
        return this;
    }

    public final em4 o(c87 c87Var, Class cls) {
        em4 em4VarX = this.n.x(cls);
        if (em4VarX != null) {
            return em4VarX;
        }
        gc8 gc8Var = this.c;
        boolean zU0 = gc8Var.u0();
        kp0 kp0Var = this.d;
        em4 em4VarM = zU0 ? c87Var.m(c87Var.e(gc8Var, cls), kp0Var) : c87Var.n(cls, kp0Var);
        fk5 fk5Var = this.k;
        if (fk5Var != null) {
            em4VarM = em4VarM.g(fk5Var);
        }
        this.n = this.n.s(cls, em4VarM);
        return em4VarM;
    }

    public p70(p70 p70Var, kp0 kp0Var, rc8 rc8Var, em4 em4Var, fk5 fk5Var, Object obj, boolean z) {
        super(p70Var);
        this.c = p70Var.c;
        this.n = f96.i;
        this.d = kp0Var;
        this.e = rc8Var;
        this.f = em4Var;
        this.k = fk5Var;
        this.p = obj;
        this.q = z;
    }
}
