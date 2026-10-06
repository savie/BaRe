package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nn5 extends q61 {
    @Override // defpackage.q61
    /* JADX INFO: renamed from: c */
    public final int compareTo(qn5 qn5Var) {
        return qn5Var == this ? 0 : 1;
    }

    @Override // defpackage.q61, defpackage.qn5
    public final boolean c0(m61 m61Var) {
        return false;
    }

    @Override // defpackage.q61, java.lang.Comparable
    public final int compareTo(Object obj) {
        return ((qn5) obj) == this ? 0 : 1;
    }

    @Override // defpackage.q61
    public final boolean equals(Object obj) {
        return obj == this;
    }

    @Override // defpackage.q61, defpackage.qn5
    public final boolean isEmpty() {
        return false;
    }

    @Override // defpackage.q61, defpackage.qn5
    public final qn5 m(m61 m61Var) {
        return m61Var.equals(m61.d) ? this : qv2.e;
    }

    @Override // defpackage.q61
    public final String toString() {
        return "<Max Node>";
    }

    @Override // defpackage.q61, defpackage.qn5
    public final qn5 n() {
        return this;
    }
}
