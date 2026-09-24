package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class m04 {
    public final boolean a;
    public final yz3 b;
    public final long c;
    public final String d;

    public m04(boolean z, yz3 yz3Var, long j, String str) {
        str.getClass();
        this.a = z;
        this.b = yz3Var;
        this.c = j;
        this.d = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m04)) {
            return false;
        }
        m04 m04Var = (m04) obj;
        return this.a == m04Var.a && pe4.d(this.b, m04Var.b) && this.c == m04Var.c && pe4.d(this.d, m04Var.d);
    }

    public final int hashCode() {
        int iHashCode = Boolean.hashCode(this.a) * 31;
        yz3 yz3Var = this.b;
        return this.d.hashCode() + xs1.f(this.c, (iHashCode + (yz3Var == null ? 0 : yz3Var.hashCode())) * 31, 31);
    }

    public final String toString() {
        return "GoogleDriveUploadChunkResult(isComplete=" + this.a + ", file=" + this.b + ", nextByte=" + this.c + ", uploadUrl=" + this.d + ")";
    }
}
