package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pt5 {
    public final String a;
    public final String b;
    public final long c;
    public final String d;
    public final long e;
    public final long f;
    public final boolean g;

    public pt5(String str, String str2, long j, String str3, long j2, long j3, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = str3;
        this.e = j2;
        this.f = j3;
        this.g = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof pt5)) {
            return false;
        }
        pt5 pt5Var = (pt5) obj;
        return pe4.d(this.a, pt5Var.a) && this.b.equals(pt5Var.b) && this.c == pt5Var.c && pe4.d(this.d, pt5Var.d) && this.e == pt5Var.e && this.f == pt5Var.f && this.g == pt5Var.g;
    }

    public final int hashCode() {
        String str = this.a;
        int iF = xs1.f(this.c, fz5.g((str == null ? 0 : str.hashCode()) * 31, 31, this.b), 31);
        String str2 = this.d;
        return Boolean.hashCode(this.g) + xs1.f(this.f, xs1.f(this.e, (iF + (str2 != null ? str2.hashCode() : 0)) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("OneDriveItem(id=", this.a, ", name=", this.b, ", size=");
        sbP.append(this.c);
        sbP.append(", parentPath=");
        sbP.append(this.d);
        fz5.r(sbP, ", createdTimeMillis=", this.e, ", modifiedTimeMillis=");
        sbP.append(this.f);
        sbP.append(", isFolder=");
        sbP.append(this.g);
        sbP.append(")");
        return sbP.toString();
    }
}
