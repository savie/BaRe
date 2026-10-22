package defpackage;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bp1 implements lj6 {
    public final j65 a;
    public final bw1 b;
    public final bw1 c;
    public final cz4 d;
    public final ix2 e;

    public bp1(ai5 ai5Var, ix2 ix2Var, ln5 ln5Var) {
        this.a = new j65(ai5Var, ln5Var, null);
        this.b = ix2Var.d(ai5Var);
        this.c = ix2Var.b(ai5Var);
        this.d = ai5Var.n();
        this.e = ix2Var;
    }

    @Override // defpackage.bw1
    public final void a(ev5 ev5Var, Object obj) {
        ev5 parent = ev5Var.getParent();
        int iA = ev5Var.a();
        Map map = (Map) obj;
        if (!ev5Var.j()) {
            ev5Var.remove();
        }
        String strA = this.e.a();
        this.d.getClass();
        for (Object obj2 : map.keySet()) {
            ev5 ev5VarI = parent.i(strA);
            Object obj3 = map.get(obj2);
            ((cv5) ev5VarI).h = iA;
            this.c.a(ev5VarI, obj2);
            this.b.a(ev5VarI, obj3);
        }
    }

    @Override // defpackage.bw1
    public final Object b(mc4 mc4Var) {
        Map map = (Map) this.a.h();
        if (map == null) {
            return null;
        }
        e(mc4Var, map);
        return map;
    }

    @Override // defpackage.bw1
    public final Object c(mc4 mc4Var, Object obj) {
        Map map = (Map) obj;
        if (map == null) {
            return b(mc4Var);
        }
        e(mc4Var, map);
        return map;
    }

    @Override // defpackage.bw1
    public final boolean d(mc4 mc4Var) {
        mc4 parent = mc4Var.getParent();
        String name = mc4Var.getName();
        while (mc4Var != null) {
            if (!this.c.d(mc4Var) || !this.b.d(mc4Var)) {
                return false;
            }
            mc4Var = parent.f(name);
        }
        return true;
    }

    public final Map e(mc4 mc4Var, Map map) {
        mc4 parent = mc4Var.getParent();
        String name = mc4Var.getName();
        while (mc4Var != null) {
            Object objB = this.c.b(mc4Var);
            Object objB2 = this.b.b(mc4Var);
            if (map != null) {
                map.put(objB, objB2);
            }
            mc4Var = parent.f(name);
        }
        return map;
    }
}
