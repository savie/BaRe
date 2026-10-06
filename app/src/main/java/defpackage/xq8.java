package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xq8 {
    public String a;
    public boolean b;
    public Long c;
    public Long d;
    public Long e;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xq8)) {
            return false;
        }
        xq8 xq8Var = (xq8) obj;
        return pe4.d(this.a, xq8Var.a) && this.b == xq8Var.b && pe4.d(this.c, xq8Var.c) && pe4.d(this.d, xq8Var.d) && pe4.d(this.e, xq8Var.e);
    }

    public final int hashCode() {
        String str = this.a;
        int iH = fz5.h((str == null ? 0 : str.hashCode()) * 31, 31, this.b);
        Long l = this.c;
        int iHashCode = (iH + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.d;
        int iHashCode2 = (iHashCode + (l2 == null ? 0 : l2.hashCode())) * 31;
        Long l3 = this.e;
        return iHashCode2 + (l3 != null ? l3.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        boolean z = this.b;
        Long l = this.c;
        Long l2 = this.d;
        Long l3 = this.e;
        StringBuilder sb = new StringBuilder("ResourceBuilder(href=");
        sb.append(str);
        sb.append(", isDirectory=");
        sb.append(z);
        sb.append(", contentLength=");
        fz5.q(sb, l, ", createdAtMillis=", l2, ", modifiedAtMillis=");
        sb.append(l3);
        sb.append(")");
        return sb.toString();
    }
}
