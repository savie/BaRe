package defpackage;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n18 implements lj6 {
    public final xk1 a;
    public final cy6 b;

    public n18(ai5 ai5Var, au1 au1Var) {
        ln5 ln5Var = new ln5(String.class, 4);
        this.a = new xk1(ai5Var, au1Var, null);
        this.b = new cy6(ai5Var, ln5Var, null);
    }

    @Override // defpackage.bw1
    public final void a(ev5 ev5Var, Object obj) {
        ev5 parent = ev5Var.getParent();
        Iterator it = ((Collection) obj).iterator();
        while (it.hasNext()) {
            this.b.a(parent, it.next());
        }
    }

    @Override // defpackage.bw1
    public final Object b(mc4 mc4Var) throws kd5 {
        gd4 gd4VarG = this.a.g(mc4Var);
        Object objD = gd4VarG.d();
        if (gd4VarG.c()) {
            return gd4VarG.d();
        }
        c(mc4Var, objD);
        return objD;
    }

    @Override // defpackage.bw1
    public final Object c(mc4 mc4Var, Object obj) throws kd5 {
        Collection collection = (Collection) obj;
        Object objB = this.b.b(mc4Var);
        if (objB != null) {
            collection.add(objB);
        }
        return obj;
    }

    @Override // defpackage.bw1
    public final boolean d(mc4 mc4Var) {
        return true;
    }
}
