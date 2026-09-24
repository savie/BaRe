package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rx7 {
    public static final l15 b = o15.b(rx7.class);
    public ArrayList a = new ArrayList();

    public final qe0 a(pe0 pe0Var) {
        for (qe0 qe0Var : this.a) {
            if (qe0Var.a == pe0Var) {
                return qe0Var;
            }
        }
        return null;
    }

    public final boolean b(pe0 pe0Var) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            if (((qe0) it.next()).a == pe0Var) {
                return true;
            }
        }
        return false;
    }

    public final void c(qe0 qe0Var) {
        for (qe0 qe0Var2 : this.a) {
            if (qe0Var2.a == qe0Var.a) {
                this.a.remove(qe0Var2);
                break;
            }
        }
        this.a.add(qe0Var);
    }

    public final String toString() {
        return "TargetInfo{targetInfo=" + this.a + '}';
    }
}
