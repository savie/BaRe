package defpackage;

import java.io.IOException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uf2 extends c87 implements Serializable {
    public transient pw8 G;
    public transient AbstractMap x;
    public transient ArrayList y;

    public static IOException F(pw8 pw8Var, Exception exc) {
        if (exc instanceof IOException) {
            return (IOException) exc;
        }
        String strG = u81.g(exc);
        if (strG == null) {
            strG = "[no message for " + exc.getClass().getName() + "]";
        }
        return new yk4(pw8Var, strG, exc);
    }

    @Override // defpackage.c87
    public final em4 E(jb9 jb9Var, Object obj) throws ag4 {
        em4 em4Var;
        if (obj instanceof em4) {
            em4Var = (em4) obj;
        } else {
            if (!(obj instanceof Class)) {
                jb9Var.D();
                B("AnnotationIntrospector returned serializer definition of type " + obj.getClass().getName() + "; expected type JsonSerializer or Class<JsonSerializer> instead");
                throw null;
            }
            Class cls = (Class) obj;
            if (cls == cm4.class || u81.o(cls)) {
                return null;
            }
            if (!em4.class.isAssignableFrom(cls)) {
                jb9Var.D();
                B("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<JsonSerializer>");
                throw null;
            }
            v77 v77Var = this.a;
            v77Var.g();
            em4Var = (em4) u81.f(cls, v77Var.i(u65.CAN_OVERRIDE_ACCESS_MODIFIERS));
        }
        if (em4Var instanceof op0) {
            ((op0) em4Var).t(this);
        }
        return em4Var;
    }

    public final void G(pw8 pw8Var, Object obj) {
        this.G = pw8Var;
        if (obj == null) {
            try {
                this.f.getClass();
                pw8Var.v();
                return;
            } catch (Exception e) {
                throw F(pw8Var, e);
            }
        }
        Class<?> cls = obj.getClass();
        em4 em4VarO = o(cls);
        v77 v77Var = this.a;
        v77Var.getClass();
        if (!v77Var.l(x77.WRAP_ROOT_VALUE)) {
            try {
                em4VarO.e(obj, pw8Var, this);
                return;
            } catch (Exception e2) {
                throw F(pw8Var, e2);
            }
        }
        op6 op6Var = v77Var.f;
        op6Var.getClass();
        l81 l81Var = new l81();
        l81Var.b = cls;
        String name = cls.getName();
        l81Var.a = name;
        l81Var.c = name.hashCode();
        wp4 wp4Var = op6Var.a;
        z86 z86VarE = (z86) wp4Var.a.get(l81Var);
        if (z86VarE == null) {
            gc8 gc8VarC = v77Var.c(cls);
            ((xo0) v77Var.b.b).getClass();
            wo0 wo0VarP0 = xo0.p0(v77Var, gc8VarC);
            if (wo0VarP0 == null) {
                wo0VarP0 = wo0.d(v77Var, gc8VarC, xo0.q0(v77Var, gc8VarC, v77Var));
            }
            z86VarE = v77Var.d().E(wo0VarP0.e);
            if (z86VarE == null || z86VarE.a.isEmpty()) {
                z86VarE = z86.a(cls.getSimpleName());
            }
            wp4Var.a.g(l81Var, z86VarE, false);
        }
        try {
            pw8Var.W();
            String str = z86VarE.a;
            z77 z77Var = z86VarE.c;
            if (z77Var == null) {
                z77Var = v77Var == null ? new z77(str) : new z77(str);
                z86VarE.c = z77Var;
            }
            pw8Var.r(z77Var);
            em4VarO.e(obj, pw8Var, this);
            pw8Var.q();
        } catch (Exception e3) {
            throw F(pw8Var, e3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0061  */
    /* JADX WARN: Code duplicated, block: B:29:0x0067  */
    @Override // defpackage.c87
    public final mw8 l(Object obj, v86 v86Var) {
        ir5 ir5Var;
        ir5 ir5Var2;
        AbstractMap abstractMap = this.x;
        if (abstractMap == null) {
            this.x = this.a.l(x77.USE_EQUALITY_FOR_OBJECT_ID) ? new HashMap() : new IdentityHashMap();
        } else {
            mw8 mw8Var = (mw8) abstractMap.get(obj);
            if (mw8Var != null) {
                return mw8Var;
            }
        }
        ArrayList arrayList = this.y;
        if (arrayList != null) {
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i < size) {
                    ir5Var = (ir5) this.y.get(i);
                    v86 v86Var2 = (v86) ir5Var;
                    v86Var2.getClass();
                    if (v86Var.a == v86Var2.a && v86Var.b == v86Var2.b) {
                        break;
                    }
                    i++;
                }
            }
            if (ir5Var == null) {
                this.y.add(v86Var);
                ir5Var2 = v86Var;
            } else {
                ir5Var2 = ir5Var;
            }
            mw8 mw8Var2 = new mw8(ir5Var2);
            this.x.put(obj, mw8Var2);
            return mw8Var2;
        }
        this.y = new ArrayList(8);
        ir5Var = null;
        if (ir5Var == null) {
            this.y.add(v86Var);
            ir5Var2 = v86Var;
        } else {
            ir5Var2 = ir5Var;
        }
        mw8 mw8Var3 = new mw8(ir5Var2);
        this.x.put(obj, mw8Var3);
        return mw8Var3;
    }

    @Override // defpackage.c87
    public final Object x(Class cls) {
        if (cls == null) {
            return null;
        }
        v77 v77Var = this.a;
        v77Var.g();
        return u81.f(cls, v77Var.i(u65.CAN_OVERRIDE_ACCESS_MODIFIERS));
    }

    @Override // defpackage.c87
    public final boolean y(Object obj) throws ag4 {
        if (obj == null) {
            return true;
        }
        try {
            return obj.equals(null);
        } catch (Exception e) {
            String name = obj.getClass().getName();
            String name2 = e.getClass().getName();
            String strG = u81.g(e);
            StringBuilder sbP = u48.p("Problem determining whether filter of type '", name, "' should filter out `null` values: (", name2, ") ");
            sbP.append(strG);
            String string = sbP.toString();
            Class<?> cls = obj.getClass();
            pw8 pw8Var = this.G;
            s().b(null, cls, lc8.d);
            ag4 ag4Var = new ag4(pw8Var, string);
            ag4Var.initCause(e);
            throw ag4Var;
        }
    }
}
