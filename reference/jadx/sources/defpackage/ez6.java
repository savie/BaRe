package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ez6 {
    public final ky6 a;
    public final String b;
    public final iz6 c;

    public ez6(ky6 ky6Var, String str, iz6 iz6Var) {
        this.a = ky6Var;
        this.b = str;
        this.c = iz6Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ez6)) {
            return false;
        }
        ez6 ez6Var = (ez6) obj;
        return this.a.equals(ez6Var.a) && pe4.d(this.b, ez6Var.b) && this.c == ez6Var.c;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return this.c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        return "CreateResult(archiveInfo=" + this.a + ", diagnostics=" + this.b + ", executionMode=" + this.c + ")";
    }
}
