package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class g66 extends nb4 {
    public static final g66 a = new g66();

    @Override // defpackage.nb4
    public final String a() {
        throw new IllegalArgumentException("Can't get query definition on priority index!");
    }

    @Override // defpackage.nb4
    public final boolean b(qn5 qn5Var) {
        return !qn5Var.n().isEmpty();
    }

    @Override // defpackage.nb4
    public final hk5 c(m61 m61Var, qn5 qn5Var) {
        return new hk5(m61Var, new fq7("[PRIORITY-POST]", qn5Var));
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        hk5 hk5Var = (hk5) obj;
        hk5 hk5Var2 = (hk5) obj2;
        qn5 qn5VarN = hk5Var.b.n();
        qn5 qn5VarN2 = hk5Var2.b.n();
        m61 m61Var = hk5Var.a;
        m61 m61Var2 = hk5Var2.a;
        int iCompareTo = qn5VarN.compareTo(qn5VarN2);
        return iCompareTo != 0 ? iCompareTo : m61Var.compareTo(m61Var2);
    }

    @Override // defpackage.nb4
    public final hk5 d() {
        return c(m61.c, qn5.s);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        return obj instanceof g66;
    }

    public final int hashCode() {
        return 3155577;
    }

    public final String toString() {
        return "PriorityIndex";
    }
}
