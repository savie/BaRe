package defpackage;

import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class i65 extends fu1 implements iv1 {
    public final kp0 c;
    public final boolean d;
    public final gc8 e;
    public final gc8 f;
    public final em4 k;
    public final em4 n;
    public final rc8 p;
    public od2 q;
    public final Object r;
    public final boolean t;

    public i65(i65 i65Var, em4 em4Var, em4 em4Var2, Object obj, boolean z) {
        super(0, Map.class);
        this.e = i65Var.e;
        this.f = i65Var.f;
        this.d = i65Var.d;
        this.p = i65Var.p;
        this.k = em4Var;
        this.n = em4Var2;
        this.q = f96.i;
        this.c = i65Var.c;
        this.r = obj;
        this.t = z;
    }

    @Override // defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        em4 em4VarE;
        em4 em4VarE2;
        boolean zY;
        boolean z;
        Object obj;
        qk4 qk4VarC;
        pk4 pk4Var;
        v77 v77Var = c87Var.a;
        as5 as5VarD = v77Var.d();
        Object objL = null;
        od odVarA = kp0Var == null ? null : kp0Var.a();
        if (odVarA != null) {
            Object objK = as5VarD.k(odVarA);
            em4VarE2 = objK != null ? c87Var.E(odVarA, objK) : null;
            Object objC = as5VarD.c(odVarA);
            em4VarE = objC != null ? c87Var.E(odVarA, objC) : null;
        } else {
            em4VarE = null;
            em4VarE2 = null;
        }
        if (em4VarE == null) {
            em4VarE = this.n;
        }
        em4 em4VarJ = tn7.j(c87Var, kp0Var, em4VarE);
        gc8 gc8Var = this.f;
        if (em4VarJ == null && this.d && !gc8Var.z0()) {
            em4VarJ = c87Var.i(gc8Var, kp0Var);
        }
        em4 em4Var = em4VarJ;
        if (em4VarE2 == null) {
            em4VarE2 = this.k;
        }
        em4 em4VarK = em4VarE2 == null ? c87Var.k(this.e, kp0Var) : c87Var.w(em4VarE2, kp0Var);
        if (kp0Var != null && (qk4VarC = kp0Var.c(v77Var, null)) != null && (pk4Var = qk4VarC.b) != pk4.e) {
            int iOrdinal = pk4Var.ordinal();
            zY = true;
            if (iOrdinal != 1) {
                pk4 pk4Var2 = pk4.c;
                if (iOrdinal != 2) {
                    if (iOrdinal == 3) {
                        z = true;
                        obj = pk4Var2;
                    } else if (iOrdinal == 4) {
                        objL = iz1.l(gc8Var);
                        if (objL != null && objL.getClass().isArray()) {
                            objL = zh8.p(objL);
                        }
                    } else if (iOrdinal != 5) {
                        zY = false;
                    } else {
                        objL = c87Var.x(qk4VarC.d);
                        if (objL != null) {
                            zY = c87Var.y(objL);
                        }
                    }
                } else if (gc8Var.C()) {
                    objL = pk4Var2;
                }
            }
            return new i65(this, em4VarK, em4Var, obj, z);
        }
        objL = this.r;
        zY = this.t;
        z = zY;
        obj = objL;
        return new i65(this, em4VarK, em4Var, obj, z);
    }

    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        Object value = ((Map.Entry) obj).getValue();
        if (value == null) {
            return this.t;
        }
        Object obj2 = this.r;
        if (obj2 == null) {
            return false;
        }
        em4 em4Var = this.n;
        if (em4Var == null) {
            Class<?> cls = value.getClass();
            em4 em4VarX = this.q.x(cls);
            if (em4VarX == null) {
                try {
                    od2 od2Var = this.q;
                    kp0 kp0Var = this.c;
                    od2Var.getClass();
                    em4 em4VarJ = c87Var.j(cls, kp0Var);
                    od2 od2VarS = od2Var.s(cls, em4VarJ);
                    if (od2Var != od2VarS) {
                        this.q = od2VarS;
                    }
                    em4Var = em4VarJ;
                } catch (yk4 unused) {
                    return false;
                }
            } else {
                em4Var = em4VarX;
            }
        }
        return obj2 == pk4.c ? em4Var.c(c87Var, value) : obj2.equals(value);
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) throws IOException {
        Map.Entry entry = (Map.Entry) obj;
        fk4Var.Y(entry);
        p(entry, fk4Var, c87Var);
        fk4Var.q();
    }

    @Override // defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) throws IOException {
        Map.Entry entry = (Map.Entry) obj;
        fk4Var.g(entry);
        nw8 nw8VarE = rc8Var.e(fk4Var, rc8Var.d(entry, mm4.START_OBJECT));
        p(entry, fk4Var, c87Var);
        rc8Var.f(fk4Var, nw8VarE);
    }

    @Override // defpackage.fu1
    public final fu1 o(rc8 rc8Var) {
        return new i65(this, this.k, this.n, this.r, this.t);
    }

    public final void p(Map.Entry entry, fk4 fk4Var, c87 c87Var) throws IOException {
        em4 em4Var;
        Object key = entry.getKey();
        em4 em4Var2 = key == null ? c87Var.k : this.k;
        Object value = entry.getValue();
        if (value != null) {
            em4Var = this.n;
            if (em4Var == null) {
                Class<?> cls = value.getClass();
                em4 em4VarX = this.q.x(cls);
                if (em4VarX == null) {
                    gc8 gc8Var = this.f;
                    boolean zU0 = gc8Var.u0();
                    od2 od2Var = this.q;
                    kp0 kp0Var = this.c;
                    if (zU0) {
                        ib ibVarG = od2Var.g(c87Var.e(gc8Var, cls), c87Var, kp0Var);
                        od2 od2Var2 = (od2) ibVarG.c;
                        if (od2Var != od2Var2) {
                            this.q = od2Var2;
                        }
                        em4Var = (em4) ibVarG.b;
                    } else {
                        od2Var.getClass();
                        em4VarX = c87Var.j(cls, kp0Var);
                        od2 od2VarS = od2Var.s(cls, em4VarX);
                        if (od2Var != od2VarS) {
                            this.q = od2VarS;
                        }
                        em4Var = em4VarX;
                    }
                } else {
                    em4Var = em4VarX;
                }
            }
            Object obj = this.r;
            if (obj != null) {
                if (obj == pk4.c) {
                    if (em4Var.c(c87Var, value)) {
                        return;
                    }
                } else if (obj.equals(value)) {
                    return;
                }
            }
        } else if (this.t) {
            return;
        } else {
            em4Var = c87Var.f;
        }
        em4Var2.e(key, fk4Var, c87Var);
        rc8 rc8Var = this.p;
        try {
            if (rc8Var == null) {
                em4Var.e(value, fk4Var, c87Var);
            } else {
                em4Var.f(value, fk4Var, c87Var, rc8Var);
            }
        } catch (Exception e) {
            tn7.n(c87Var, e, entry, "" + key);
            throw null;
        }
    }

    public i65(gc8 gc8Var, gc8 gc8Var2, gc8 gc8Var3, boolean z, sc8 sc8Var, kp0 kp0Var) {
        super(gc8Var);
        this.e = gc8Var2;
        this.f = gc8Var3;
        this.d = z;
        this.p = sc8Var;
        this.c = kp0Var;
        this.q = f96.i;
        this.r = null;
        this.t = false;
    }
}
