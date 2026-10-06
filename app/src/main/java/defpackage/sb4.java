package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sb4 implements Iterable {
    public static final ra4 d = new ra4(Collections.EMPTY_LIST, null);
    public final qn5 a;
    public ra4 b;
    public final nb4 c;

    public sb4(qn5 qn5Var, nb4 nb4Var) {
        this.c = nb4Var;
        this.a = qn5Var;
        this.b = null;
    }

    public static sb4 d(qn5 qn5Var) {
        return new sb4(qn5Var, g66.a);
    }

    public final void c() {
        if (this.b == null) {
            no4 no4Var = no4.a;
            nb4 nb4Var = this.c;
            boolean zEquals = nb4Var.equals(no4Var);
            ra4 ra4Var = d;
            if (zEquals) {
                this.b = ra4Var;
                return;
            }
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (hk5 hk5Var : this.a) {
                z = z || nb4Var.b(hk5Var.b);
                arrayList.add(new hk5(hk5Var.a, hk5Var.b));
            }
            if (z) {
                this.b = new ra4(arrayList, nb4Var);
            } else {
                this.b = ra4Var;
            }
        }
    }

    public final sb4 e(m61 m61Var, qn5 qn5Var) {
        qn5 qn5Var2 = this.a;
        qn5 qn5VarO = qn5Var2.O(m61Var, qn5Var);
        ra4 ra4Var = this.b;
        ra4 ra4Var2 = d;
        boolean zM = x13.m(ra4Var, ra4Var2);
        nb4 nb4Var = this.c;
        if (zM && !nb4Var.b(qn5Var)) {
            return new sb4(qn5VarO, nb4Var, ra4Var2);
        }
        ra4 ra4Var3 = this.b;
        if (ra4Var3 == null || x13.m(ra4Var3, ra4Var2)) {
            return new sb4(qn5VarO, nb4Var, null);
        }
        qn5 qn5VarM = qn5Var2.m(m61Var);
        ra4 ra4Var4 = this.b;
        hk5 hk5Var = new hk5(m61Var, qn5VarM);
        oa4 oa4Var = ra4Var4.a;
        oa4 oa4VarO = oa4Var.o(hk5Var);
        if (oa4VarO != oa4Var) {
            ra4Var4 = new ra4(oa4VarO);
        }
        if (!qn5Var.isEmpty()) {
            ra4Var4 = new ra4(ra4Var4.a.l(null, new hk5(m61Var, qn5Var)));
        }
        return new sb4(qn5VarO, nb4Var, ra4Var4);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        c();
        return x13.m(this.b, d) ? this.a.iterator() : this.b.iterator();
    }

    public sb4(qn5 qn5Var, nb4 nb4Var, ra4 ra4Var) {
        this.c = nb4Var;
        this.a = qn5Var;
        this.b = ra4Var;
    }
}
