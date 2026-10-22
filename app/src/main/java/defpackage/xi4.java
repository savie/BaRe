package defpackage;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xi4 extends qj4 implements Iterable {
    public final ArrayList a;

    public xi4() {
        this.a = new ArrayList();
    }

    @Override // defpackage.qj4
    public final qj4 c() {
        ArrayList arrayList = this.a;
        if (arrayList.isEmpty()) {
            return new xi4();
        }
        xi4 xi4Var = new xi4(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            xi4Var.p(((qj4) it.next()).c());
        }
        return xi4Var;
    }

    @Override // defpackage.qj4
    public final BigDecimal d() {
        return t().d();
    }

    @Override // defpackage.qj4
    public final boolean e() {
        return t().e();
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof xi4) && ((xi4) obj).a.equals(this.a);
        }
        return true;
    }

    @Override // defpackage.qj4
    public final int f() {
        return t().f();
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.a.iterator();
    }

    @Override // defpackage.qj4
    public final long l() {
        return t().l();
    }

    @Override // defpackage.qj4
    public final String o() {
        return t().o();
    }

    public final void p(qj4 qj4Var) {
        if (qj4Var == null) {
            qj4Var = el4.a;
        }
        this.a.add(qj4Var);
    }

    public final void s(String str) {
        this.a.add(str == null ? el4.a : new kl4(str));
    }

    public final qj4 t() {
        ArrayList arrayList = this.a;
        int size = arrayList.size();
        if (size == 1) {
            return (qj4) arrayList.get(0);
        }
        l0.e(fz5.j(size, "Array must have size 1, but has size "));
        return null;
    }

    public xi4(int i) {
        this.a = new ArrayList(i);
    }
}
