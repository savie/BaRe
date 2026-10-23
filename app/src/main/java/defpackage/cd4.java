package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cd4 {
    public final int a;
    public final String b;
    public final String c;
    public final bd4 d;

    public cd4(int i, String str, String str2, bd4 bd4Var) {
        bd4Var.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = bd4Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cd4)) {
            return false;
        }
        cd4 cd4Var = (cd4) obj;
        return this.a == cd4Var.a && pe4.d(this.b, cd4Var.b) && pe4.d(this.c, cd4Var.c) && this.d == cd4Var.d;
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.c;
        return this.d.hashCode() + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "InstallResult(status=" + this.a + ", message=" + this.b + ", packageName=" + this.c + ", source=" + this.d + ")";
    }
}
