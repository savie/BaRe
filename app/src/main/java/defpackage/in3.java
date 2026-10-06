package defpackage;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class in3 extends qo0 {
    public boolean e;
    public final gv7 f = new gv7(new bk(this, 20));
    public final LinkedHashMap g = new LinkedHashMap();
    public final ex6 h = new ex6();
    public final ex6 i = new ex6();
    public final ix6 j = new ix6();
    public final ix6 k = new ix6();
    public final gv7 l = new gv7(new el(14));
    public final LinkedHashMap m = new LinkedHashMap();

    public final zn7 j(q63 q63Var) {
        Object next;
        Iterator it = l().iterator();
        while (it.hasNext()) {
            next = it.next();
            if (uq7.V(q63Var.v(), ((zn7) next).n().v(), false)) {
                return (zn7) next;
            }
        }
        next = null;
        return (zn7) next;
    }

    public final hn3 k() {
        hn3 hn3Var = (hn3) this.i.d();
        return hn3Var == null ? (hn3) this.f.getValue() : hn3Var;
    }

    public final List l() {
        return (List) this.l.getValue();
    }

    public final void m(q63 q63Var, bt3 bt3Var) {
        zn4 zn4Var = zn4.a;
        zn4.c(new gn3(0, this, q63Var, bt3Var));
    }
}
