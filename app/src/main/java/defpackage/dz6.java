package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dz6 {
    public final long a;
    public final Long b;
    public final long c;
    public final boolean d;

    public dz6(long j, Long l, long j2, boolean z) {
        this.a = j;
        this.b = l;
        this.c = j2;
        this.d = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dz6)) {
            return false;
        }
        dz6 dz6Var = (dz6) obj;
        return this.a == dz6Var.a && pe4.d(this.b, dz6Var.b) && this.c == dz6Var.c && this.d == dz6Var.d;
    }

    public final int hashCode() {
        int iHashCode = Long.hashCode(this.a) * 31;
        Long l = this.b;
        return Boolean.hashCode(this.d) + xs1.f(this.c, (iHashCode + (l == null ? 0 : l.hashCode())) * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ArchiveByteProgress(bytesProcessed=");
        sb.append(this.a);
        sb.append(", totalBytes=");
        sb.append(this.b);
        fz5.r(sb, ", bytesPerSecond=", this.c, ", completed=");
        return dj7.p(sb, this.d, ")");
    }
}
