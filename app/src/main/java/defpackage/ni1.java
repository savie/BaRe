package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ni1 {
    public final Long a;
    public final Long b;

    public ni1(Long l, Long l2) {
        this.a = l;
        this.b = l2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ni1)) {
            return false;
        }
        ni1 ni1Var = (ni1) obj;
        return pe4.d(this.a, ni1Var.a) && pe4.d(this.b, ni1Var.b);
    }

    public final int hashCode() {
        Long l = this.a;
        int iHashCode = (l == null ? 0 : l.hashCode()) * 31;
        Long l2 = this.b;
        return iHashCode + (l2 != null ? l2.hashCode() : 0);
    }

    public final String toString() {
        String strC;
        String strC2 = null;
        Long l = this.a;
        if (l != null) {
            long jLongValue = l.longValue();
            p93 p93Var = p93.a;
            strC = p93.c(Long.valueOf(jLongValue));
        } else {
            strC = null;
        }
        Long l2 = this.b;
        if (l2 != null) {
            long jLongValue2 = l2.longValue();
            p93 p93Var2 = p93.a;
            strC2 = p93.c(Long.valueOf(jLongValue2));
        }
        return eq3.l("CloudQuota(usage=", strC, ", limit=", strC2, ")");
    }
}
