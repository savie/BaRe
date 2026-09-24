package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class gb5 {
    public final String a;
    public final long b;
    public final String c;

    public gb5(String str, String str2, long j) {
        str.getClass();
        this.a = str;
        this.b = j;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gb5)) {
            return false;
        }
        gb5 gb5Var = (gb5) obj;
        return pe4.d(this.a, gb5Var.a) && this.b == gb5Var.b && this.c.equals(gb5Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + xs1.f(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return eq3.n(u48.o("SingleDownloadResponse(url=", this.a, this.b, ", size="), ", encryptedAttributes=", this.c, ")");
    }
}
