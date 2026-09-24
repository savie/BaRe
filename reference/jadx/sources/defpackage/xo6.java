package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xo6 {
    public final Object a;
    public final long b;

    public xo6(Object obj, long j) {
        this.a = obj;
        this.b = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xo6)) {
            return false;
        }
        xo6 xo6Var = (xo6) obj;
        return pe4.d(this.a, xo6Var.a) && this.b == xo6Var.b;
    }

    public final int hashCode() {
        Object obj = this.a;
        return Long.hashCode(this.b) + ((obj == null ? 0 : obj.hashCode()) * 31);
    }

    public final String toString() {
        return "CachedValue(value=" + this.a + ", createdElapsedRealtime=" + this.b + ")";
    }
}
