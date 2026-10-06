package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qt5 {
    public final Long a;
    public final Long b;

    public qt5(Long l, Long l2) {
        this.a = l;
        this.b = l2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qt5)) {
            return false;
        }
        qt5 qt5Var = (qt5) obj;
        return pe4.d(this.a, qt5Var.a) && pe4.d(this.b, qt5Var.b);
    }

    public final int hashCode() {
        Long l = this.a;
        int iHashCode = (l == null ? 0 : l.hashCode()) * 31;
        Long l2 = this.b;
        return iHashCode + (l2 != null ? l2.hashCode() : 0);
    }

    public final String toString() {
        return "OneDriveQuota(used=" + this.a + ", total=" + this.b + ")";
    }
}
