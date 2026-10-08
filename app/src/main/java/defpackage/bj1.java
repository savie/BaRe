package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bj1 {
    public final int a;
    public final jj1 b;

    public bj1(int i, jj1 jj1Var) {
        this.a = i;
        this.b = jj1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bj1)) {
            return false;
        }
        bj1 bj1Var = (bj1) obj;
        return this.a == bj1Var.a && this.b.equals(bj1Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "IndexedProbeResult(index=" + this.a + ", result=" + this.b + ")";
    }
}
