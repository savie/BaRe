package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ty6 {
    public final long a;
    public final long b;

    public ty6(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ty6)) {
            return false;
        }
        ty6 ty6Var = (ty6) obj;
        return this.a == ty6Var.a && this.b == ty6Var.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        return dj7.h(this.b, ")", dj7.t("SbaCryptoStreamResult(inputBytes=", ", outputBytes=", this.a));
    }
}
