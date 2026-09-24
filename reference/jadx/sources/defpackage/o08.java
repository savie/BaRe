package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o08 {
    public final int a;
    public final long b;
    public final long c;

    public o08(int i, long j, long j2) {
        this.a = i;
        this.b = j;
        this.c = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o08)) {
            return false;
        }
        o08 o08Var = (o08) obj;
        return this.a == o08Var.a && this.b == o08Var.b && this.c == o08Var.c;
    }

    public final int hashCode() {
        return Long.hashCode(this.c) + xs1.f(this.b, Integer.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        return "TeraBoxUploadChunk(index=" + this.a + ", start=" + this.b + ", size=" + this.c + ")";
    }
}
