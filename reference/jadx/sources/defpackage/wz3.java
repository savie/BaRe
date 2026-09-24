package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wz3 {
    public final String a;
    public final Integer b;
    public final String c;

    public wz3(Integer num, String str, String str2) {
        str.getClass();
        this.a = str;
        this.b = num;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wz3)) {
            return false;
        }
        wz3 wz3Var = (wz3) obj;
        return pe4.d(this.a, wz3Var.a) && pe4.d(this.b, wz3Var.b) && this.c.equals(wz3Var.c);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        Integer num = this.b;
        return this.c.hashCode() + ((iHashCode + (num == null ? 0 : num.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GoogleDriveBatchDeleteFailure(fileId=");
        sb.append(this.a);
        sb.append(", statusCode=");
        sb.append(this.b);
        sb.append(", bodyPreview=");
        return dj7.n(sb, this.c, ")");
    }
}
