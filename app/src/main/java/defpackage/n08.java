package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class n08 {
    public final String a;
    public final String b;
    public final Long c;

    public n08(String str, String str2, Long l) {
        this.a = str;
        this.b = str2;
        this.c = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n08)) {
            return false;
        }
        n08 n08Var = (n08) obj;
        return this.a.equals(n08Var.a) && this.b.equals(n08Var.b) && pe4.d(this.c, n08Var.c);
    }

    public final int hashCode() {
        int iG = fz5.g(this.a.hashCode() * 31, 31, this.b);
        Long l = this.c;
        return iG + (l == null ? 0 : l.hashCode());
    }

    public final String toString() {
        StringBuilder sbP = u48.p("TeraBoxTokenResponse(accessToken=", this.a, ", refreshToken=", this.b, ", expiresInSeconds=");
        sbP.append(this.c);
        sbP.append(")");
        return sbP.toString();
    }
}
