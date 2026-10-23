package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ia5 {
    public final int a;
    public final long b;
    public final String c;

    public ia5(String str, long j, int i) {
        this.a = i;
        this.b = j;
        this.c = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ia5)) {
            return false;
        }
        ia5 ia5Var = (ia5) obj;
        return this.a == ia5Var.a && this.b == ia5Var.b && this.c.equals(ia5Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + xs1.f(this.b, Integer.hashCode(this.a) * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Challenge(easiness=");
        sb.append(this.a);
        sb.append(", timestamp=");
        sb.append(this.b);
        return eq3.n(sb, ", token=", this.c, ")");
    }
}
