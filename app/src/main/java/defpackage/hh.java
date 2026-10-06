package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hh {
    public final long a;
    public final long b;
    public final String c;
    public final String d;
    public final boolean e;
    public final boolean f;

    public hh(long j, long j2, String str, String str2, boolean z, boolean z2) {
        this.a = j;
        this.b = j2;
        this.c = str;
        this.d = str2;
        this.e = z;
        this.f = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hh)) {
            return false;
        }
        hh hhVar = (hh) obj;
        return this.a == hhVar.a && this.b == hhVar.b && pe4.d(this.c, hhVar.c) && pe4.d(this.d, hhVar.d) && this.e == hhVar.e && this.f == hhVar.f;
    }

    public final int hashCode() {
        int iF = xs1.f(this.b, Long.hashCode(this.a) * 31, 31);
        String str = this.c;
        int iHashCode = (iF + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        return Boolean.hashCode(this.f) + fz5.h((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31, 31, this.e);
    }

    public final String toString() {
        StringBuilder sbT = dj7.t("ParsedManifestInfo(versionCode=", ", versionCodeMajor=", this.a);
        sbT.append(this.b);
        sbT.append(", versionName=");
        sbT.append(this.c);
        sbT.append(", applicationClassName=");
        sbT.append(this.d);
        sbT.append(", hasSplits=");
        sbT.append(this.e);
        sbT.append(", hasSharedLibs=");
        sbT.append(this.f);
        sbT.append(")");
        return sbT.toString();
    }
}
