package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class vz4 {
    public final String a;
    public final Integer b;
    public final String c;

    public vz4(Integer num, String str, String str2) {
        this.a = str;
        this.b = num;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof vz4)) {
            return false;
        }
        vz4 vz4Var = (vz4) obj;
        return this.a.equals(vz4Var.a) && pe4.d(this.b, vz4Var.b) && pe4.d(this.c, vz4Var.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Integer num = this.b;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.c;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("HostParts(host=");
        sb.append(this.a);
        sb.append(", port=");
        sb.append(this.b);
        sb.append(", scheme=");
        return dj7.n(sb, this.c, ")");
    }
}
