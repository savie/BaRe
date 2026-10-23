package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class rh {
    public final q63 a;
    public final String b;

    public rh(q63 q63Var, String str) {
        this.a = q63Var;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rh)) {
            return false;
        }
        rh rhVar = (rh) obj;
        return this.a.equals(rhVar.a) && this.b.equals(rhVar.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.a.hashCode() * 31);
    }

    public final String toString() {
        return "ApkShareExportResult(outputFile=" + this.a + ", mimeType=" + this.b + ")";
    }
}
