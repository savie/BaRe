package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class r75 {
    public final String a;
    public final nd4 b;

    public r75(String str, nd4 nd4Var) {
        this.a = str;
        this.b = nd4Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r75)) {
            return false;
        }
        r75 r75Var = (r75) obj;
        return this.a.equals(r75Var.a) && this.b.equals(r75Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "MatchGroup(value=" + this.a + ", range=" + this.b + ')';
    }
}
