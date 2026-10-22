package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hk5 {
    public static final hk5 c = new hk5(m61.b, qv2.e);
    public static final hk5 d = new hk5(m61.c, qn5.s);
    public final m61 a;
    public final qn5 b;

    public hk5(m61 m61Var, qn5 qn5Var) {
        this.a = m61Var;
        this.b = qn5Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || hk5.class != obj.getClass()) {
            return false;
        }
        hk5 hk5Var = (hk5) obj;
        return this.a.equals(hk5Var.a) && this.b.equals(hk5Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.a.hashCode() * 31);
    }

    public final String toString() {
        return "NamedNode{name=" + this.a + ", node=" + this.b + '}';
    }
}
