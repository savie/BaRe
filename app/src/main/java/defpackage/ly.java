package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ly {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ly)) {
            return false;
        }
        ly lyVar = (ly) obj;
        return pe4.d(this.a, lyVar.a) && pe4.d(this.b, lyVar.b) && pe4.d(this.c, lyVar.c) && pe4.d(this.d, lyVar.d) && pe4.d(this.e, lyVar.e) && pe4.d(this.f, lyVar.f) && pe4.d(this.g, lyVar.g);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.e;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.g;
        return iHashCode6 + (str7 != null ? str7.hashCode() : 0);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        String str3 = this.c;
        String str4 = this.d;
        String str5 = this.e;
        String str6 = this.f;
        String str7 = this.g;
        StringBuilder sbP = u48.p("AppSsaidProperties(id=", str, ", name=", str2, ", value=");
        xs1.t(sbP, str3, ", packageName=", str4, ", defaultValue=");
        xs1.t(sbP, str5, ", defaultSysSet=", str6, ", tag=");
        return dj7.n(sbP, str7, ")");
    }
}
