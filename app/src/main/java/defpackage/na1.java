package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class na1 {
    public final String a;
    public final int b;
    public final String c;

    public na1(String str, int i, String str2) {
        str2.getClass();
        this.a = str;
        this.b = i;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof na1)) {
            return false;
        }
        na1 na1Var = (na1) obj;
        return this.a.equals(na1Var.a) && this.b == na1Var.b && pe4.d(this.c, na1Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + eq3.d(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        return dj7.n(dj7.v("CloudAccountEndpoint(host=", this.a, ", port=", this.b, ", path="), this.c, ")");
    }
}
