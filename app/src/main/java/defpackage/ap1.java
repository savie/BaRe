package defpackage;

import java.util.Collection;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ap1 implements lj6 {
    public final xk1 a;
    public final ro b;
    public final String c;
    public final ln5 d;
    public final vb8 e;

    public ap1(ai5 ai5Var, vb8 vb8Var, ln5 ln5Var, String str) {
        this.a = new xk1(ai5Var, vb8Var, null);
        this.b = new ro(ai5Var);
        this.d = ln5Var;
        this.e = vb8Var;
        this.c = str;
    }

    @Override // defpackage.bw1
    public final void a(ev5 ev5Var, Object obj) throws kd5 {
        Collection collection = (Collection) obj;
        ev5 parent = ev5Var.getParent();
        if (!ev5Var.j()) {
            ev5Var.remove();
        }
        for (Object obj2 : collection) {
            if (obj2 != null) {
                Class cls = (Class) this.d.b;
                Class<?> cls2 = obj2.getClass();
                if (!cls.isAssignableFrom(cls2)) {
                    throw new kd5("Entry %s does not match %s for %s", cls2, cls, this.e);
                }
                this.b.w(parent, obj2, cls, this.c);
            }
        }
    }

    @Override // defpackage.bw1
    public final Object b(mc4 mc4Var) throws kd5 {
        Collection collection = (Collection) this.a.h();
        if (collection == null) {
            return null;
        }
        e(mc4Var, collection);
        return collection;
    }

    @Override // defpackage.bw1
    public final Object c(mc4 mc4Var, Object obj) throws kd5 {
        Collection collection = (Collection) obj;
        if (collection == null) {
            return b(mc4Var);
        }
        e(mc4Var, collection);
        return collection;
    }

    @Override // defpackage.bw1
    public final boolean d(mc4 mc4Var) {
        mc4 parent = mc4Var.getParent();
        Class cls = (Class) this.d.b;
        String name = mc4Var.getName();
        while (mc4Var != null) {
            if (!this.b.v(mc4Var, cls)) {
                return false;
            }
            mc4Var = parent.f(name);
        }
        return true;
    }

    public final void e(mc4 mc4Var, Collection collection) throws kd5 {
        mc4 parent = mc4Var.getParent();
        String name = mc4Var.getName();
        while (mc4Var != null) {
            ln5 ln5Var = this.d;
            Object objR = this.b.r(mc4Var, (Class) ln5Var.b);
            Class<?> cls = objR.getClass();
            if (!((Class) ln5Var.b).isAssignableFrom(cls)) {
                throw new kd5("Entry %s does not match %s for %s", cls, ln5Var, this.e);
            }
            collection.add(objR);
            mc4Var = parent.f(name);
        }
    }
}
