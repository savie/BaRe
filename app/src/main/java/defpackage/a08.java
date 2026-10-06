package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class a08 {
    public final String a;
    public final String b;
    public final String c;
    public final long d;
    public final boolean e;
    public final long f;
    public final long g;
    public final String h;
    public final String i;

    public a08(String str, String str2, String str3, long j, boolean z, long j2, long j3, String str4, String str5) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = j;
        this.e = z;
        this.f = j2;
        this.g = j3;
        this.h = str4;
        this.i = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a08)) {
            return false;
        }
        a08 a08Var = (a08) obj;
        return this.a.equals(a08Var.a) && this.b.equals(a08Var.b) && this.c.equals(a08Var.c) && this.d == a08Var.d && this.e == a08Var.e && this.f == a08Var.f && this.g == a08Var.g && pe4.d(this.h, a08Var.h) && pe4.d(this.i, a08Var.i);
    }

    public final int hashCode() {
        int iF = xs1.f(this.g, xs1.f(this.f, fz5.h(xs1.f(this.d, fz5.g(fz5.g(this.a.hashCode() * 31, 31, this.b), 31, this.c), 31), 31, this.e), 31), 31);
        String str = this.h;
        int iHashCode = (iF + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.i;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbP = u48.p("TeraBoxFile(fsId=", this.a, ", path=", this.b, ", name=");
        sbP.append(this.c);
        sbP.append(", size=");
        sbP.append(this.d);
        sbP.append(", isDirectory=");
        sbP.append(this.e);
        sbP.append(", createdTimeMillis=");
        sbP.append(this.f);
        fz5.r(sbP, ", modifiedTimeMillis=", this.g, ", thumbnailLink=");
        return eq3.o(sbP, this.h, ", downloadLink=", this.i, ")");
    }
}
