package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mb5 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final long e;
    public final long f;
    public final long g;
    public final boolean h;

    public mb5(String str, String str2, String str3, String str4, long j, long j2, long j3, boolean z) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = j;
        this.f = j2;
        this.g = j3;
        this.h = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mb5)) {
            return false;
        }
        mb5 mb5Var = (mb5) obj;
        return this.a.equals(mb5Var.a) && pe4.d(this.b, mb5Var.b) && this.c.equals(mb5Var.c) && this.d.equals(mb5Var.d) && this.e == mb5Var.e && this.f == mb5Var.f && this.g == mb5Var.g && this.h == mb5Var.h;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return Boolean.hashCode(this.h) + xs1.f(this.g, xs1.f(this.f, xs1.f(this.e, fz5.g(fz5.g((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.c), 31, this.d), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("MegaRemoteNode(handle=", this.a, ", parentHandle=", this.b, ", name=");
        xs1.t(sbP, this.c, ", path=", this.d, ", size=");
        sbP.append(this.e);
        fz5.r(sbP, ", createdTimeSeconds=", this.f, ", modifiedTimeSeconds=");
        sbP.append(this.g);
        sbP.append(", isFolder=");
        sbP.append(this.h);
        sbP.append(")");
        return sbP.toString();
    }
}
