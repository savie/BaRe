package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ef6 {
    public final gy5 a;
    public final gy5 b;
    public final qn5 c;

    public ef6(ff6 ff6Var) {
        List list = ff6Var.a;
        this.a = list != null ? new gy5(list) : null;
        List list2 = ff6Var.b;
        this.b = list2 != null ? new gy5(list2) : null;
        this.c = xh8.a(ff6Var.c, qv2.e);
    }

    public final qn5 a(gy5 gy5Var, qn5 qn5Var, qn5 qn5Var2) {
        boolean z = true;
        gy5 gy5Var2 = this.a;
        int iCompareTo = gy5Var2 == null ? 1 : gy5Var.compareTo(gy5Var2);
        gy5 gy5Var3 = this.b;
        int iCompareTo2 = gy5Var3 == null ? -1 : gy5Var.compareTo(gy5Var3);
        boolean z2 = gy5Var2 != null && gy5Var.g(gy5Var2);
        boolean z3 = gy5Var3 != null && gy5Var.g(gy5Var3);
        if (iCompareTo > 0 && iCompareTo2 < 0 && !z3) {
            return qn5Var2;
        }
        if (iCompareTo > 0 && z3 && qn5Var2.Z()) {
            return qn5Var2;
        }
        if (iCompareTo > 0 && iCompareTo2 == 0) {
            zm5.s(z3);
            zm5.s(!qn5Var2.Z());
            return qn5Var.Z() ? qv2.e : qn5Var;
        }
        if (!z2 && !z3) {
            if (iCompareTo2 <= 0 && iCompareTo > 0) {
                z = false;
            }
            zm5.s(z);
            return qn5Var;
        }
        HashSet hashSet = new HashSet();
        Iterator it = qn5Var.iterator();
        while (it.hasNext()) {
            hashSet.add(((hk5) it.next()).a);
        }
        Iterator it2 = qn5Var2.iterator();
        while (it2.hasNext()) {
            hashSet.add(((hk5) it2.next()).a);
        }
        ArrayList<m61> arrayList = new ArrayList(hashSet.size() + 1);
        arrayList.addAll(hashSet);
        if (!qn5Var2.n().isEmpty() || !qn5Var.n().isEmpty()) {
            arrayList.add(m61.d);
        }
        qn5 qn5VarO = qn5Var;
        for (m61 m61Var : arrayList) {
            qn5 qn5VarM = qn5Var.m(m61Var);
            qn5 qn5VarA = a(gy5Var.d(m61Var), qn5Var.m(m61Var), qn5Var2.m(m61Var));
            if (qn5VarA != qn5VarM) {
                qn5VarO = qn5VarO.O(m61Var, qn5VarA);
            }
        }
        return qn5VarO;
    }

    public final String toString() {
        return "RangeMerge{optExclusiveStart=" + this.a + ", optInclusiveEnd=" + this.b + ", snap=" + this.c + '}';
    }
}
