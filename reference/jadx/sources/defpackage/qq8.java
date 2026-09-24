package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qq8 {
    public final String a;
    public final String b;
    public final boolean c;
    public final Long d;
    public final Long e;
    public final Long f;

    public qq8(String str, String str2, boolean z, Long l, Long l2, Long l3) {
        this.a = str;
        this.b = str2;
        this.c = z;
        this.d = l;
        this.e = l2;
        this.f = l3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qq8)) {
            return false;
        }
        qq8 qq8Var = (qq8) obj;
        return this.a.equals(qq8Var.a) && this.b.equals(qq8Var.b) && this.c == qq8Var.c && pe4.d(this.d, qq8Var.d) && pe4.d(this.e, qq8Var.e) && pe4.d(this.f, qq8Var.f);
    }

    public final int hashCode() {
        int iH = fz5.h(fz5.g(this.a.hashCode() * 31, 31, this.b), 31, this.c);
        Long l = this.d;
        int iHashCode = (iH + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.e;
        int iHashCode2 = (iHashCode + (l2 == null ? 0 : l2.hashCode())) * 31;
        Long l3 = this.f;
        return iHashCode2 + (l3 != null ? l3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("WebDavResource(href=", this.a, ", name=", this.b, ", isDirectory=");
        sbP.append(this.c);
        sbP.append(", contentLength=");
        sbP.append(this.d);
        sbP.append(", createdAtMillis=");
        sbP.append(this.e);
        sbP.append(", modifiedAtMillis=");
        sbP.append(this.f);
        sbP.append(")");
        return sbP.toString();
    }
}
