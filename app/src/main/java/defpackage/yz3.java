package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class yz3 {
    public final String a;
    public final String b;
    public final long c;
    public final long d;
    public final long e;
    public final String f;
    public final List g;
    public final boolean h;
    public final String i;

    public yz3(String str, String str2, long j, long j2, long j3, String str3, List list, boolean z, String str4) {
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = j2;
        this.e = j3;
        this.f = str3;
        this.g = list;
        this.h = z;
        this.i = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yz3)) {
            return false;
        }
        yz3 yz3Var = (yz3) obj;
        return pe4.d(this.a, yz3Var.a) && this.b.equals(yz3Var.b) && this.c == yz3Var.c && this.d == yz3Var.d && this.e == yz3Var.e && pe4.d(this.f, yz3Var.f) && this.g.equals(yz3Var.g) && this.h == yz3Var.h && pe4.d(this.i, yz3Var.i);
    }

    public final int hashCode() {
        String str = this.a;
        int iF = xs1.f(this.e, xs1.f(this.d, xs1.f(this.c, fz5.g((str == null ? 0 : str.hashCode()) * 31, 31, this.b), 31), 31), 31);
        String str2 = this.f;
        int iH = fz5.h(fz5.i(this.g, (iF + (str2 == null ? 0 : str2.hashCode())) * 31, 31), 31, this.h);
        String str3 = this.i;
        return iH + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("GoogleDriveFile(id=", this.a, ", name=", this.b, ", size=");
        sbP.append(this.c);
        fz5.r(sbP, ", createdTimeMillis=", this.d, ", modifiedTimeMillis=");
        sbP.append(this.e);
        sbP.append(", thumbnailLink=");
        sbP.append(this.f);
        sbP.append(", parents=");
        sbP.append(this.g);
        sbP.append(", trashed=");
        sbP.append(this.h);
        return eq3.n(sbP, ", mimeType=", this.i, ")");
    }
}
