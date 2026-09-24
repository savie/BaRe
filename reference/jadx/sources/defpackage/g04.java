package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class g04 implements h04 {
    public final long a;
    public final String b;

    public g04(long j, String str) {
        this.a = j;
        this.b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g04)) {
            return false;
        }
        g04 g04Var = (g04) obj;
        return this.a == g04Var.a && pe4.d(this.b, g04Var.b);
    }

    public final int hashCode() {
        int iHashCode = Long.hashCode(this.a) * 31;
        String str = this.b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "Incomplete(nextByte=" + this.a + ", uploadUrl=" + this.b + ")";
    }
}
