package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class kk7 {
    public final String a;
    public final String b;
    public final String c;

    public kk7(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kk7)) {
            return false;
        }
        kk7 kk7Var = (kk7) obj;
        return pe4.d(this.a, kk7Var.a) && pe4.d(this.b, kk7Var.b) && pe4.d(this.c, kk7Var.c);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        return dj7.n(u48.p("SsaidData(id=", this.a, ", packageName=", this.b, ", value="), this.c, ")");
    }
}
