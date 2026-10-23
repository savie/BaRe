package defpackage;

import java.text.DateFormat;
import java.util.Collections;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c87 {
    public static final i33 r = new i33(Object.class);
    public static final le8 t = new le8(0, Object.class);
    public final v77 a;
    public final ji8 b;
    public final la c;
    public transient k55 d;
    public final le8 e;
    public final qp5 f;
    public final i33 k;
    public final lf6 n;
    public DateFormat p;
    public final boolean q;

    public c87(c87 c87Var, v77 v77Var, ji8 ji8Var) {
        this.e = t;
        this.f = qp5.d;
        i33 i33Var = r;
        this.k = i33Var;
        this.b = ji8Var;
        this.a = v77Var;
        la laVar = c87Var.c;
        this.c = laVar;
        this.e = c87Var.e;
        qp5 qp5Var = c87Var.f;
        this.f = qp5Var;
        this.k = c87Var.k;
        this.q = qp5Var == i33Var;
        v77Var.getClass();
        this.d = v77Var.e;
        lf6 lf6Var = (lf6) ((AtomicReference) laVar.b).get();
        if (lf6Var == null) {
            synchronized (laVar) {
                lf6Var = (lf6) ((AtomicReference) laVar.b).get();
                if (lf6Var == null) {
                    lf6 lf6Var2 = new lf6((wp4) laVar.a);
                    ((AtomicReference) laVar.b).set(lf6Var2);
                    lf6Var = lf6Var2;
                }
            }
        }
        this.n = lf6Var;
    }

    public final Object A(Class cls, String str) throws ag4 {
        if (cls != null) {
            s().b(null, cls, lc8.d);
        }
        B(str);
        throw null;
    }

    public final Object B(String str) throws ag4 {
        throw new ag4(((uf2) this).G, str);
    }

    public final void C(wo0 wo0Var, lp0 lp0Var, String str, Object... objArr) throws ag4 {
        String strK;
        if (objArr.length > 0) {
            str = String.format(str, objArr);
        }
        String strJ = lp0Var.j();
        if (strJ != null) {
            if (strJ.length() > 500) {
                strJ = strJ.substring(0, 500) + "]...[" + strJ.substring(strJ.length() - 500);
            }
            strK = eq3.k("\"", strJ, "\"");
        } else {
            strK = "[N/A]";
        }
        StringBuilder sbP = u48.p("Invalid definition for property ", strK, " (of type ", u81.t(wo0Var.a.f), "): ");
        sbP.append(str);
        throw new ag4(((uf2) this).G, sbP.toString());
    }

    public final void D(wo0 wo0Var, String str, Object... objArr) throws ag4 {
        String strT = u81.t(wo0Var.a.f);
        if (objArr.length > 0) {
            str = String.format(str, objArr);
        }
        throw new ag4(((uf2) this).G, dj7.l("Invalid type definition for type ", strT, ": ", str));
    }

    public abstract em4 E(jb9 jb9Var, Object obj);

    public final em4 a(gc8 gc8Var) throws yk4 {
        try {
            em4 em4VarC = c(gc8Var);
            if (em4VarC == null) {
                return em4VarC;
            }
            la laVar = this.c;
            synchronized (laVar) {
                try {
                    wp4 wp4Var = (wp4) laVar.a;
                    if (wp4Var.a.g(new oc8(gc8Var), em4VarC, false) == null) {
                        ((AtomicReference) laVar.b).set(null);
                    }
                    if (em4VarC instanceof op0) {
                        ((op0) em4VarC).t(this);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return em4VarC;
        } catch (IllegalArgumentException e) {
            throw new yk4(((uf2) this).G, u81.g(e), e);
        }
    }

    public final em4 b(Class cls) throws ag4 {
        gc8 gc8VarC = this.a.c(cls);
        try {
            em4 em4VarC = c(gc8VarC);
            if (em4VarC == null) {
                return em4VarC;
            }
            la laVar = this.c;
            synchronized (laVar) {
                try {
                    wp4 wp4Var = (wp4) laVar.a;
                    Object objG = wp4Var.a.g(new oc8(cls, false), em4VarC, false);
                    wp4 wp4Var2 = (wp4) laVar.a;
                    Object objG2 = wp4Var2.a.g(new oc8(gc8VarC), em4VarC, false);
                    if (objG == null || objG2 == null) {
                        ((AtomicReference) laVar.b).set(null);
                    }
                    if (em4VarC instanceof op0) {
                        ((op0) em4VarC).t(this);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return em4VarC;
        } catch (IllegalArgumentException e) {
            B(u81.g(e));
            throw null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:280:0x04cd  */
    /* JADX WARN: Code duplicated, block: B:282:0x04d9  */
    /* JADX WARN: Code duplicated, block: B:284:0x04dd  */
    /* JADX WARN: Code duplicated, block: B:285:0x04e0  */
    /* JADX WARN: Code duplicated, block: B:286:0x04e9  */
    /* JADX WARN: Code duplicated, block: B:288:0x04f1  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:731:0x0d3d  */
    /* JADX WARN: Code duplicated, block: B:98:0x0190  */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:289:0x04f5
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public final defpackage.em4 c(defpackage.gc8 r46) throws defpackage.ag4 {
        /*
            Method dump skipped, instruction units count: 3420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.c87.c(gc8):em4");
    }

    public final DateFormat d() {
        DateFormat dateFormat = this.p;
        if (dateFormat != null) {
            return dateFormat;
        }
        DateFormat dateFormat2 = (DateFormat) this.a.b.e.clone();
        this.p = dateFormat2;
        return dateFormat2;
    }

    public final gc8 e(gc8 gc8Var, Class cls) {
        return gc8Var.w0(cls) ? gc8Var : this.a.b.a.g(gc8Var, cls, true);
    }

    public final void f(Object obj) {
        if (!(obj instanceof Class)) {
            m0.f(obj.getClass().getName(), "; expected type Converter or Class<Converter> instead", "AnnotationIntrospector returned Converter definition of type ");
            return;
        }
        Class cls = (Class) obj;
        if (cls == zv1.class || u81.o(cls)) {
            return;
        }
        if (!cw1.class.isAssignableFrom(cls)) {
            m0.f(cls.getName(), "; expected Class<Converter>", "AnnotationIntrospector returned Class ");
            return;
        }
        v77 v77Var = this.a;
        v77Var.g();
        if (u81.f(cls, v77Var.i(u65.CAN_OVERRIDE_ACCESS_MODIFIERS)) == null) {
            return;
        }
        e6.d();
    }

    public final void g(String str, Object obj, fk4 fk4Var) {
        fk4Var.u(str);
        if (obj != null) {
            o(obj.getClass()).e(obj, fk4Var, this);
        } else if (this.q) {
            fk4Var.v();
        } else {
            this.f.getClass();
            fk4Var.v();
        }
    }

    public final void h(fk4 fk4Var) {
        if (this.q) {
            fk4Var.v();
        } else {
            this.f.e(null, fk4Var, this);
        }
    }

    public final em4 i(gc8 gc8Var, kp0 kp0Var) {
        em4 em4VarA = this.n.a(gc8Var);
        return (em4VarA == null && (em4VarA = this.c.i(gc8Var)) == null && (em4VarA = a(gc8Var)) == null) ? t(gc8Var.f) : w(em4VarA, kp0Var);
    }

    public final em4 j(Class cls, kp0 kp0Var) {
        em4 em4VarB = this.n.b(cls);
        if (em4VarB == null) {
            la laVar = this.c;
            em4 em4VarK = laVar.k(cls);
            if (em4VarK == null) {
                em4VarB = laVar.i(this.a.c(cls));
                if (em4VarB == null && (em4VarB = b(cls)) == null) {
                    return t(cls);
                }
            } else {
                em4VarB = em4VarK;
            }
        }
        return w(em4VarB, kp0Var);
    }

    public final em4 k(gc8 gc8Var, kp0 kp0Var) {
        em4 em4VarF = this.b.f(this, gc8Var);
        if (em4VarF instanceof op0) {
            ((op0) em4VarF).t(this);
        }
        return w(em4VarF, kp0Var);
    }

    public abstract mw8 l(Object obj, v86 v86Var);

    public final em4 m(gc8 gc8Var, kp0 kp0Var) {
        em4 em4VarA = this.n.a(gc8Var);
        return (em4VarA == null && (em4VarA = this.c.i(gc8Var)) == null && (em4VarA = a(gc8Var)) == null) ? t(gc8Var.f) : v(em4VarA, kp0Var);
    }

    public final em4 n(Class cls, kp0 kp0Var) {
        em4 em4VarB = this.n.b(cls);
        if (em4VarB == null) {
            la laVar = this.c;
            em4 em4VarK = laVar.k(cls);
            if (em4VarK == null) {
                em4VarB = laVar.i(this.a.c(cls));
                if (em4VarB == null && (em4VarB = b(cls)) == null) {
                    return t(cls);
                }
            } else {
                em4VarB = em4VarK;
            }
        }
        return v(em4VarB, kp0Var);
    }

    public final em4 o(Class cls) {
        em4 em4Var;
        em4 em4Var2;
        lf6 lf6Var = this.n;
        kf6 kf6Var = lf6Var.a[lf6Var.b & (cls.getName().hashCode() + 1)];
        if (kf6Var == null) {
            em4Var = null;
            break;
        }
        if (kf6Var.c != cls || !kf6Var.e) {
            while (true) {
                kf6Var = kf6Var.b;
                if (kf6Var == null) {
                    em4Var = null;
                    break;
                }
                if (kf6Var.c == cls && kf6Var.e) {
                    em4Var = kf6Var.a;
                    break;
                }
            }
        } else {
            em4Var = kf6Var.a;
        }
        if (em4Var != null) {
            return em4Var;
        }
        la laVar = this.c;
        synchronized (laVar) {
            em4Var2 = (em4) ((wp4) laVar.a).a.get(new oc8(cls, true));
        }
        if (em4Var2 != null) {
            return em4Var2;
        }
        em4 em4VarQ = q(cls, null);
        ji8 ji8Var = this.b;
        v77 v77Var = this.a;
        sc8 sc8VarH = ji8Var.h(v77Var, v77Var.c(cls));
        if (sc8VarH != null) {
            em4VarQ = new tc8(sc8VarH.a(null), em4VarQ);
        }
        la laVar2 = this.c;
        synchronized (laVar2) {
            try {
                if (((wp4) laVar2.a).a.g(new oc8(cls, true), em4VarQ, false) == null) {
                    ((AtomicReference) laVar2.b).set(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return em4VarQ;
    }

    public final em4 p(gc8 gc8Var, kp0 kp0Var) throws yk4 {
        if (gc8Var == null) {
            throw new yk4(((uf2) this).G, "Null passed for `valueType` of `findValueSerializer()`", null);
        }
        em4 em4VarA = this.n.a(gc8Var);
        return (em4VarA == null && (em4VarA = this.c.i(gc8Var)) == null && (em4VarA = a(gc8Var)) == null) ? t(gc8Var.f) : w(em4VarA, kp0Var);
    }

    public final em4 q(Class cls, kp0 kp0Var) {
        em4 em4VarB = this.n.b(cls);
        if (em4VarB == null) {
            la laVar = this.c;
            em4 em4VarK = laVar.k(cls);
            if (em4VarK == null) {
                em4VarB = laVar.i(this.a.c(cls));
                if (em4VarB == null && (em4VarB = b(cls)) == null) {
                    return t(cls);
                }
            } else {
                em4VarB = em4VarK;
            }
        }
        return w(em4VarB, kp0Var);
    }

    public final Object r(Object obj) {
        Object obj2;
        HashMap map = ((bv1) this.d).k;
        if (map == null || (obj2 = map.get(obj)) == null) {
            return Collections.EMPTY_MAP.get(obj);
        }
        if (obj2 == bv1.p) {
            return null;
        }
        return obj2;
    }

    public final lc8 s() {
        return this.a.b.a;
    }

    public final em4 t(Class cls) {
        return cls == Object.class ? this.e : new le8(0, cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final em4 v(em4 em4Var, kp0 kp0Var) {
        return (em4Var == 0 || !(em4Var instanceof iv1)) ? em4Var : ((iv1) em4Var).a(this, kp0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final em4 w(em4 em4Var, kp0 kp0Var) {
        return (em4Var == 0 || !(em4Var instanceof iv1)) ? em4Var : ((iv1) em4Var).a(this, kp0Var);
    }

    public abstract Object x(Class cls);

    public abstract boolean y(Object obj);

    public final v86 z(kr5 kr5Var) {
        Class cls = kr5Var.b;
        v77 v77Var = this.a;
        v77Var.g();
        ir5 ir5Var = (ir5) u81.f(cls, v77Var.i(u65.CAN_OVERRIDE_ACCESS_MODIFIERS));
        Class cls2 = kr5Var.d;
        v86 v86Var = (v86) ir5Var;
        return cls2 == v86Var.a ? v86Var : new v86(v86Var.b, cls2);
    }

    public c87() {
        this.e = t;
        this.f = qp5.d;
        this.k = r;
        this.a = null;
        this.b = null;
        this.c = new la(6);
        this.n = null;
        this.d = null;
        this.q = true;
    }
}
