package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class n27 {
    public final long a;
    public final long b;

    public n27(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n27)) {
            return false;
        }
        n27 n27Var = (n27) obj;
        return this.a == n27Var.a && this.b == n27Var.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        return dj7.h(this.b, ")", dj7.t("Result(inputBytes=", ", outputBytes=", this.a));
    }
}
