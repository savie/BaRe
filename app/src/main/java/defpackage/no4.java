package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class no4 extends nb4 {
    public static final no4 a = new no4();

    @Override // defpackage.nb4
    public final String a() {
        return ".key";
    }

    @Override // defpackage.nb4
    public final boolean b(qn5 qn5Var) {
        return true;
    }

    @Override // defpackage.nb4
    public final hk5 c(m61 m61Var, qn5 qn5Var) {
        zm5.s(qn5Var instanceof fq7);
        return new hk5(m61.b((String) qn5Var.getValue()), qv2.e);
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ((hk5) obj).a.compareTo(((hk5) obj2).a);
    }

    @Override // defpackage.nb4
    public final hk5 d() {
        return hk5.d;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        return obj instanceof no4;
    }

    public final int hashCode() {
        return 37;
    }

    public final String toString() {
        return "KeyIndex";
    }
}
