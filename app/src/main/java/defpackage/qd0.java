package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qd0 {
    public final String a;
    public final rd0 b;

    public qd0(String str, rd0 rd0Var) {
        this.a = str;
        this.b = rd0Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof qd0)) {
            return false;
        }
        qd0 qd0Var = (qd0) obj;
        return this.a.equals(qd0Var.a) && this.b.equals(qd0Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() ^ ((this.a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "ImmutableEntry{value=" + this.a + ", metadata=" + this.b + "}";
    }
}
