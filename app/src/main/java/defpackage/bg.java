package defpackage;

import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bg {
    public final Drawable a;
    public final String b;
    public final String c;
    public final String d;
    public final Long e;
    public final int f;
    public final long g;
    public final String h;

    public bg(Drawable drawable, String str, String str2, String str3, Long l, int i, long j, String str4) {
        this.a = drawable;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = l;
        this.f = i;
        this.g = j;
        this.h = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bg)) {
            return false;
        }
        bg bgVar = (bg) obj;
        return pe4.d(this.a, bgVar.a) && this.b.equals(bgVar.b) && pe4.d(this.c, bgVar.c) && pe4.d(this.d, bgVar.d) && pe4.d(this.e, bgVar.e) && this.f == bgVar.f && this.g == bgVar.g && pe4.d(this.h, bgVar.h);
    }

    public final int hashCode() {
        Drawable drawable = this.a;
        int iG = fz5.g((drawable == null ? 0 : drawable.hashCode()) * 31, 31, this.b);
        String str = this.c;
        int iHashCode = (iG + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l = this.e;
        int iF = xs1.f(this.g, eq3.d(this.f, (iHashCode2 + (l == null ? 0 : l.hashCode())) * 31, 31), 31);
        String str3 = this.h;
        return iF + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ApkImportPackageInfo(icon=");
        sb.append(this.a);
        sb.append(", appName=");
        sb.append(this.b);
        sb.append(", packageName=");
        xs1.t(sb, this.c, ", versionName=", this.d, ", versionCode=");
        sb.append(this.e);
        sb.append(", apkCount=");
        sb.append(this.f);
        sb.append(", totalSizeBytes=");
        sb.append(this.g);
        sb.append(", installerPackage=");
        sb.append(this.h);
        sb.append(")");
        return sb.toString();
    }
}
