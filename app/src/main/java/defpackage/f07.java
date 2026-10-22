package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f07 {
    public final i07 a;
    public final k07 b;
    public final l07 c;
    public final m07 d;
    public final String e;
    public final long f;
    public final Long g;

    public f07(i07 i07Var, k07 k07Var, l07 l07Var, m07 m07Var, String str, long j, Long l) {
        i07Var.getClass();
        k07Var.getClass();
        l07Var.getClass();
        m07Var.getClass();
        this.a = i07Var;
        this.b = k07Var;
        this.c = l07Var;
        this.d = m07Var;
        this.e = str;
        this.f = j;
        this.g = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f07)) {
            return false;
        }
        f07 f07Var = (f07) obj;
        return this.a == f07Var.a && this.b == f07Var.b && this.c == f07Var.c && this.d == f07Var.d && pe4.d(this.e, f07Var.e) && this.f == f07Var.f && pe4.d(this.g, f07Var.g);
    }

    public final int hashCode() {
        int iHashCode = (this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31;
        String str = this.e;
        int iF = xs1.f(this.f, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31);
        Long l = this.g;
        return iF + (l != null ? l.hashCode() : 0);
    }

    public final String toString() {
        return "SbaProgressEvent(operation=" + this.a + ", phase=" + this.b + ", stage=" + this.c + ", state=" + this.d + ", entryName=" + this.e + ", bytesProcessed=" + this.f + ", totalBytes=" + this.g + ")";
    }
}
