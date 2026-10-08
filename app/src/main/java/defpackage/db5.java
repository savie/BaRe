package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class db5 {
    public final long a;
    public final int b;

    public db5(int i, long j) {
        this.a = j;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof db5)) {
            return false;
        }
        db5 db5Var = (db5) obj;
        return this.a == db5Var.a && this.b == db5Var.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "MegaChunk(position=" + this.a + ", size=" + this.b + ")";
    }
}
