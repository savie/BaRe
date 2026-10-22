package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class cj1 {
    public final int a;
    public final kj1 b;

    public cj1(int i, kj1 kj1Var) {
        kj1Var.getClass();
        this.a = i;
        this.b = kj1Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cj1)) {
            return false;
        }
        cj1 cj1Var = (cj1) obj;
        return this.a == cj1Var.a && pe4.d(this.b, cj1Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "IndexedProbeTarget(index=" + this.a + ", target=" + this.b + ")";
    }
}
