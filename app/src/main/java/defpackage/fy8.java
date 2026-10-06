package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class fy8 {
    public final Long a;
    public final Long b;

    public fy8(Long l, Long l2) {
        this.a = l;
        this.b = l2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fy8)) {
            return false;
        }
        fy8 fy8Var = (fy8) obj;
        return pe4.d(this.a, fy8Var.a) && pe4.d(this.b, fy8Var.b);
    }

    public final int hashCode() {
        Long l = this.a;
        int iHashCode = (l == null ? 0 : l.hashCode()) * 31;
        Long l2 = this.b;
        return iHashCode + (l2 != null ? l2.hashCode() : 0);
    }

    public final String toString() {
        return "YandexDiskInfo(usedSpace=" + this.a + ", totalSpace=" + this.b + ")";
    }
}
