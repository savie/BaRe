package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ep6 {
    public final zo6 a;
    public final String b;

    public ep6(zo6 zo6Var, String str) {
        this.a = zo6Var;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ep6)) {
            return false;
        }
        ep6 ep6Var = (ep6) obj;
        return this.a.equals(ep6Var.a) && pe4.d(this.b, ep6Var.b);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        String str = this.b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "TarEntryCacheKey(file=" + this.a + ", entryName=" + this.b + ")";
    }
}
