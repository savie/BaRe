package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class rv0 {
    public final String a;
    public final long b;
    public final long c;
    public final String d;

    public rv0(String str, String str2, long j, long j2) {
        this.a = str;
        this.b = j;
        this.c = j2;
        this.d = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rv0)) {
            return false;
        }
        rv0 rv0Var = (rv0) obj;
        return this.a.equals(rv0Var.a) && this.b == rv0Var.b && this.c == rv0Var.c && this.d.equals(rv0Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + xs1.f(this.c, xs1.f(this.b, this.a.hashCode() * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbO = u48.o("BoxUploadedPart(partId=", this.a, this.b, ", offset=");
        fz5.r(sbO, ", size=", this.c, ", sha1=");
        return dj7.n(sbO, this.d, ")");
    }
}
