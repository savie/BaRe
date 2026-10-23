package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class iv {
    public final String a;
    public final String b;
    public final String c;

    public iv(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof iv)) {
            return false;
        }
        iv ivVar = (iv) obj;
        return this.a.equals(ivVar.a) && this.b.equals(ivVar.b) && this.c.equals(ivVar.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + fz5.g(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        return dj7.n(u48.p("SplitInstallFailure(output=", this.a, ", tempPath=", this.b, ", splitName="), this.c, ")");
    }
}
