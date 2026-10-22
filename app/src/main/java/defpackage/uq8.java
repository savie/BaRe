package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class uq8 {
    public final String a;
    public final long b;

    public uq8(String str, long j) {
        str.getClass();
        this.a = str;
        this.b = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uq8)) {
            return false;
        }
        uq8 uq8Var = (uq8) obj;
        return pe4.d(this.a, uq8Var.a) && this.b == uq8Var.b;
    }

    public final int hashCode() {
        return Long.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sbO = u48.o("Chunk(name=", this.a, this.b, ", size=");
        sbO.append(")");
        return sbO.toString();
    }
}
