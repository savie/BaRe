package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class oj3 {
    public final pj3 a;
    public final Long b;
    public final Long c;
    public final Long d;
    public final Integer e;

    public oj3(pj3 pj3Var, Long l, Long l2, Long l3, Integer num) {
        pj3Var.getClass();
        this.a = pj3Var;
        this.b = l;
        this.c = l2;
        this.d = l3;
        this.e = num;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof oj3)) {
            return false;
        }
        oj3 oj3Var = (oj3) obj;
        return this.a == oj3Var.a && pe4.d(this.b, oj3Var.b) && pe4.d(this.c, oj3Var.c) && pe4.d(this.d, oj3Var.d) && pe4.d(this.e, oj3Var.e);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Long l = this.b;
        int iHashCode2 = (iHashCode + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.c;
        int iHashCode3 = (iHashCode2 + (l2 == null ? 0 : l2.hashCode())) * 31;
        Long l3 = this.d;
        int iHashCode4 = (iHashCode3 + (l3 == null ? 0 : l3.hashCode())) * 31;
        Integer num = this.e;
        return iHashCode4 + (num != null ? num.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FolderBackupDetailsPart(key=");
        sb.append(this.a);
        sb.append(", originalSizeBytes=");
        sb.append(this.b);
        sb.append(", backupSizeBytes=");
        fz5.q(sb, this.c, ", manifestSizeBytes=", this.d, ", backupCount=");
        sb.append(this.e);
        sb.append(")");
        return sb.toString();
    }
}
