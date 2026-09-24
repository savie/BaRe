package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ce0 {
    public final long a;
    public final oe0 b;
    public final kd0 c;

    public ce0(long j, oe0 oe0Var, kd0 kd0Var) {
        this.a = j;
        this.b = oe0Var;
        this.c = kd0Var;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ce0)) {
            return false;
        }
        ce0 ce0Var = (ce0) obj;
        return this.a == ce0Var.a && this.b.equals(ce0Var.b) && this.c.equals(ce0Var.c);
    }

    public final int hashCode() {
        long j = this.a;
        return this.c.hashCode() ^ ((((((int) ((j >>> 32) ^ j)) ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003);
    }

    public final String toString() {
        return "PersistedEvent{id=" + this.a + ", transportContext=" + this.b + ", event=" + this.c + "}";
    }
}
