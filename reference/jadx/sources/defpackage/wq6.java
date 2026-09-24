package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class wq6 {
    public final String a;
    public final String b;

    public wq6(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wq6)) {
            return false;
        }
        wq6 wq6Var = (wq6) obj;
        return pe4.d(this.a, wq6Var.a) && pe4.d(this.b, wq6Var.b);
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return eq3.l("Fields(endpoint=", this.a, ", region=", this.b, ")");
    }
}
