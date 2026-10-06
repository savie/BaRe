package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ad4 {
    public final String a;
    public final String b;
    public final long c;

    public ad4(String str, String str2, long j) {
        this.a = str;
        this.b = str2;
        this.c = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ad4)) {
            return false;
        }
        ad4 ad4Var = (ad4) obj;
        return this.a.equals(ad4Var.a) && this.b.equals(ad4Var.b) && this.c == ad4Var.c;
    }

    public final int hashCode() {
        return Long.hashCode(this.c) + fz5.g(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return dj7.h(this.c, ")", u48.p("ApkFile(name=", this.a, ", path=", this.b, ", length="));
    }
}
