package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pm {
    public final String a;
    public final String b;
    public final Boolean c;
    public final Boolean d;
    public final Boolean e;
    public final String f;

    public pm(String str, String str2, Boolean bool, Boolean bool2, Boolean bool3, String str3) {
        str.getClass();
        str2.getClass();
        this.a = str;
        this.b = str2;
        this.c = bool;
        this.d = bool2;
        this.e = bool3;
        this.f = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pm)) {
            return false;
        }
        pm pmVar = (pm) obj;
        return pe4.d(this.a, pmVar.a) && pe4.d(this.b, pmVar.b) && pe4.d(this.c, pmVar.c) && pe4.d(this.d, pmVar.d) && pe4.d(this.e, pmVar.e) && pe4.d(this.f, pmVar.f);
    }

    public final int hashCode() {
        int iG = fz5.g(this.a.hashCode() * 31, 31, this.b);
        Boolean bool = this.c;
        int iHashCode = (iG + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.d;
        int iHashCode2 = (iHashCode + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.e;
        int iHashCode3 = (iHashCode2 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        String str = this.f;
        return iHashCode3 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("AppCachedDataItem(pkgName=", this.a, ", name=", this.b, ", isInstalled=");
        sbP.append(this.c);
        sbP.append(", isEnabled=");
        sbP.append(this.d);
        sbP.append(", isLaunchable=");
        sbP.append(this.e);
        sbP.append(", locale=");
        sbP.append(this.f);
        sbP.append(")");
        return sbP.toString();
    }
}
