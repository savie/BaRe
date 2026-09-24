package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class dk2 extends ek2 {
    public final String a;
    public final boolean b;
    public final boolean c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;

    public dk2(String str, boolean z, boolean z2, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.a = str;
        this.b = z;
        this.c = z2;
        this.d = str2;
        this.e = str3;
        this.f = str4;
        this.g = str5;
        this.h = str6;
        this.i = str7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dk2)) {
            return false;
        }
        dk2 dk2Var = (dk2) obj;
        return pe4.d(this.a, dk2Var.a) && this.b == dk2Var.b && this.c == dk2Var.c && pe4.d(this.d, dk2Var.d) && pe4.d(this.e, dk2Var.e) && pe4.d(this.f, dk2Var.f) && pe4.d(this.g, dk2Var.g) && this.h.equals(dk2Var.h) && pe4.d(this.i, dk2Var.i);
    }

    public final int hashCode() {
        String str = this.a;
        int iH = fz5.h(fz5.h((str == null ? 0 : str.hashCode()) * 31, 31, this.b), 31, this.c);
        String str2 = this.d;
        int iHashCode = (iH + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.e;
        int iHashCode2 = (iHashCode + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f;
        int iHashCode3 = (iHashCode2 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.g;
        int iG = fz5.g((iHashCode3 + (str5 == null ? 0 : str5.hashCode())) * 31, 31, this.h);
        String str6 = this.i;
        return iG + (str6 != null ? str6.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("StorageInfo(apkSize=");
        sb.append(this.a);
        sb.append(", hasSplits=");
        sb.append(this.b);
        sb.append(", hasSharedLibs=");
        sb.append(this.c);
        sb.append(", dataSize=");
        sb.append(this.d);
        sb.append(", extDataSize=");
        xs1.t(sb, this.e, ", mediaSize=", this.f, ", expansionSize=");
        xs1.t(sb, this.g, ", infoString=", this.h, ", versionInfo=");
        return dj7.n(sb, this.i, ")");
    }
}
