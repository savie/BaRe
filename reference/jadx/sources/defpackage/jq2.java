package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class jq2 {
    public final String a;
    public final String b;

    public jq2(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof jq2)) {
            return false;
        }
        jq2 jq2Var = (jq2) obj;
        return this.a.equals(jq2Var.a) && pe4.d(this.b, jq2Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return eq3.l("DropboxAccount(accountId=", this.a, ", email=", this.b, ")");
    }
}
