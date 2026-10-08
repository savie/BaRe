package defpackage;

import java.util.Collection;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class s56 implements lj6 {
    public final xk1 a;
    public final cy6 b;
    public final String c;
    public final ln5 d;

    public s56(ai5 ai5Var, vb8 vb8Var, ln5 ln5Var, String str) {
        this.a = new xk1(ai5Var, vb8Var, null);
        this.b = new cy6(ai5Var, ln5Var, null);
        this.c = str;
        this.d = ln5Var;
    }

    @Override // defpackage.bw1
    public final void a(ev5 ev5Var, Object obj) {
        ev5 parent = ev5Var.getParent();
        int iA = ev5Var.a();
        if (!ev5Var.j()) {
            ev5Var.remove();
        }
        for (Object obj2 : (Collection) obj) {
            if (obj2 != null) {
                ev5 ev5VarI = parent.i(this.c);
                if (!this.a.e(this.d, obj2, ev5VarI)) {
                    ((cv5) ev5VarI).h = iA;
                    this.b.a(ev5VarI, obj2);
                }
            }
        }
    }

    @Override // defpackage.bw1
    public final Object b(mc4 mc4Var) throws kd5 {
        Collection collection = (Collection) this.a.h();
        if (collection == null) {
            return null;
        }
        mc4 parent = mc4Var.getParent();
        String name = mc4Var.getName();
        while (mc4Var != null) {
            Object objB = this.b.b(mc4Var);
            if (objB != null) {
                collection.add(objB);
            }
            mc4Var = parent.f(name);
        }
        return collection;
    }

    @Override // defpackage.bw1
    public final Object c(mc4 mc4Var, Object obj) throws kd5 {
        Collection collection = (Collection) obj;
        if (collection == null) {
            return b(mc4Var);
        }
        mc4 parent = mc4Var.getParent();
        String name = mc4Var.getName();
        while (mc4Var != null) {
            Object objB = this.b.b(mc4Var);
            if (objB != null) {
                collection.add(objB);
            }
            mc4Var = parent.f(name);
        }
        return collection;
    }

    @Override // defpackage.bw1
    public final boolean d(mc4 mc4Var) {
        mc4 parent = mc4Var.getParent();
        String name = mc4Var.getName();
        while (mc4Var != null) {
            this.b.d(mc4Var);
            mc4Var = parent.f(name);
        }
        return true;
    }
}
