package defpackage;

import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class er4 extends LinkedHashMap implements Iterable {
    public final q27 a;

    public er4(q27 q27Var) {
        this.a = q27Var;
    }

    public final er4 d() {
        er4 er4Var = new er4(this.a);
        Iterator it = iterator();
        while (it.hasNext()) {
            uq4 uq4Var = (uq4) it.next();
            if (uq4Var != null) {
                er4Var.put(uq4Var.a(), uq4Var);
            }
        }
        return er4Var;
    }

    public final boolean e(ai5 ai5Var) {
        q27 q27Var = this.a;
        if (q27Var == null) {
            return ((i87) ai5Var.e).b;
        }
        return ((i87) ai5Var.e).b && q27Var.a();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return values().iterator();
    }
}
