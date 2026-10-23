package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oa2 {
    public final na2 a;
    public final na2 b;
    public final double c;

    public oa2(na2 na2Var, na2 na2Var2, double d) {
        this.a = na2Var;
        this.b = na2Var2;
        this.c = d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oa2)) {
            return false;
        }
        oa2 oa2Var = (oa2) obj;
        return this.a == oa2Var.a && this.b == oa2Var.b && Double.compare(this.c, oa2Var.c) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.c) + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "DataCollectionStatus(performance=" + this.a + ", crashlytics=" + this.b + ", sessionSamplingRate=" + this.c + ')';
    }
}
