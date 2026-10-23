package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class p08 {
    public final String a;
    public final String b;
    public final int c;

    public p08(String str, String str2, int i) {
        this.a = str;
        this.b = str2;
        this.c = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p08)) {
            return false;
        }
        p08 p08Var = (p08) obj;
        return this.a.equals(p08Var.a) && this.b.equals(p08Var.b) && this.c == p08Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + fz5.g(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return xs1.m(u48.p("TeraBoxUploadPartResult(md5=", this.a, ", uploadId=", this.b, ", partSeq="), this.c, ")");
    }
}
