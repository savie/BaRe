package defpackage;

import java.io.IOException;
import java.lang.reflect.Modifier;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kn4 extends tn7 implements iv1 {
    public final od c;
    public final rc8 d;
    public final em4 e;
    public final kp0 f;
    public final gc8 k;
    public final boolean n;
    public final Set p;
    public transient od2 q;

    /* JADX WARN: Illegal instructions before constructor call */
    public kn4(kn4 kn4Var, kp0 kp0Var, rc8 rc8Var, em4 em4Var, boolean z) {
        Class cls = kn4Var.a;
        super(cls == null ? Object.class : cls);
        this.c = kn4Var.c;
        this.k = kn4Var.k;
        this.d = rc8Var;
        this.e = em4Var;
        this.f = kp0Var;
        this.n = z;
        this.p = kn4Var.p;
        this.q = f96.i;
    }

    @Override // defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        rc8 rc8VarA = this.d;
        if (rc8VarA != null) {
            rc8VarA = rc8VarA.a(kp0Var);
        }
        boolean z = this.n;
        em4 em4Var = this.e;
        if (em4Var != null) {
            return p(kp0Var, rc8VarA, c87Var.v(em4Var, kp0Var), z);
        }
        boolean zI = c87Var.a.i(u65.USE_STATIC_TYPING);
        gc8 gc8Var = this.k;
        if (!zI && !Modifier.isFinal(gc8Var.f.getModifiers())) {
            return kp0Var != this.f ? p(kp0Var, rc8VarA, em4Var, z) : this;
        }
        em4 em4VarM = c87Var.m(gc8Var, kp0Var);
        if (em4VarM != null) {
            Set set = this.p;
            if (!set.isEmpty()) {
                em4VarM = em4VarM.i(set);
            }
        }
        Class cls = gc8Var.f;
        boolean zQ = false;
        if (!cls.isPrimitive() ? cls == String.class || cls == Integer.class || cls == Boolean.class || cls == Double.class : cls == Integer.TYPE || cls == Boolean.TYPE || cls == Double.TYPE) {
            zQ = u81.q(em4VarM);
        }
        return p(kp0Var, rc8VarA, em4VarM, zQ);
    }

    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        Object objS0 = this.c.s0(obj);
        if (objS0 == null) {
            return true;
        }
        em4 em4VarO = this.e;
        if (em4VarO == null) {
            try {
                em4VarO = o(c87Var, objS0.getClass());
            } catch (yk4 e) {
                throw new er3(e);
            }
        }
        return em4VarO.c(c87Var, objS0);
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) throws IOException {
        od odVar = this.c;
        try {
            Object objS0 = odVar.s0(obj);
            if (objS0 == null) {
                c87Var.h(fk4Var);
                return;
            }
            em4 em4VarO = this.e;
            if (em4VarO == null) {
                em4VarO = o(c87Var, objS0.getClass());
            }
            rc8 rc8Var = this.d;
            if (rc8Var != null) {
                em4VarO.f(objS0, fk4Var, c87Var, rc8Var);
            } else {
                em4VarO.e(objS0, fk4Var, c87Var);
            }
        } catch (Exception e) {
            tn7.n(c87Var, e, obj, odVar.B() + "()");
            throw null;
        }
    }

    @Override // defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) throws IOException {
        od odVar = this.c;
        try {
            Object objS0 = odVar.s0(obj);
            if (objS0 == null) {
                c87Var.h(fk4Var);
                return;
            }
            em4 em4VarO = this.e;
            if (em4VarO == null) {
                em4VarO = o(c87Var, objS0.getClass());
            } else if (this.n) {
                nw8 nw8VarE = rc8Var.e(fk4Var, rc8Var.d(obj, mm4.VALUE_STRING));
                em4VarO.e(objS0, fk4Var, c87Var);
                rc8Var.f(fk4Var, nw8VarE);
                return;
            }
            em4VarO.f(objS0, fk4Var, c87Var, new jn4(rc8Var, obj));
        } catch (Exception e) {
            tn7.n(c87Var, e, obj, odVar.B() + "()");
            throw null;
        }
    }

    public final em4 o(c87 c87Var, Class cls) {
        em4 em4VarX = this.q.x(cls);
        if (em4VarX != null) {
            return em4VarX;
        }
        gc8 gc8Var = this.k;
        boolean zU0 = gc8Var.u0();
        Set set = this.p;
        kp0 kp0Var = this.f;
        if (!zU0) {
            em4 em4VarN = c87Var.n(cls, kp0Var);
            if (em4VarN != null && !set.isEmpty()) {
                em4VarN = em4VarN.i(set);
            }
            this.q = this.q.s(cls, em4VarN);
            return em4VarN;
        }
        gc8 gc8VarE = c87Var.e(gc8Var, cls);
        em4 em4VarM = c87Var.m(gc8VarE, kp0Var);
        if (em4VarM != null && !set.isEmpty()) {
            em4VarM = em4VarM.i(set);
        }
        od2 od2Var = this.q;
        od2Var.getClass();
        this.q = od2Var.s(gc8VarE.f, em4VarM);
        return em4VarM;
    }

    public final kn4 p(kp0 kp0Var, rc8 rc8Var, em4 em4Var, boolean z) {
        return (this.f == kp0Var && this.d == rc8Var && this.e == em4Var && z == this.n) ? this : new kn4(this, kp0Var, rc8Var, em4Var, z);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(@JsonValue serializer for method ");
        od odVar = this.c;
        sb.append(odVar.p0());
        sb.append("#");
        sb.append(odVar.B());
        sb.append(")");
        return sb.toString();
    }

    public kn4(od odVar, rc8 rc8Var, em4 em4Var, Set set) {
        super(odVar.D());
        this.c = odVar;
        this.k = odVar.D();
        this.d = rc8Var;
        this.e = em4Var;
        this.f = null;
        this.n = true;
        this.p = set;
        this.q = f96.i;
    }
}
