package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class er2 {
    public final long a;
    public final Long b;

    public er2(long j, Long l) {
        this.a = j;
        this.b = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof er2)) {
            return false;
        }
        er2 er2Var = (er2) obj;
        return this.a == er2Var.a && pe4.d(this.b, er2Var.b);
    }

    public final int hashCode() {
        int iHashCode = Long.hashCode(this.a) * 31;
        Long l = this.b;
        return iHashCode + (l == null ? 0 : l.hashCode());
    }

    public final String toString() {
        return "DropboxSpaceUsage(used=" + this.a + ", allocated=" + this.b + ")";
    }
}
