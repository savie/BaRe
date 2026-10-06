package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class va3 {
    public final boolean a;
    public final String b;
    public final String c;

    public va3(String str, String str2, boolean z) {
        this.a = z;
        this.b = str;
        this.c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof va3)) {
            return false;
        }
        va3 va3Var = (va3) obj;
        return this.a == va3Var.a && this.b.equals(va3Var.b) && this.c.equals(va3Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + fz5.g(Boolean.hashCode(this.a) * 31, 31, this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("EnvelopeFields(status=");
        sb.append(this.a);
        sb.append(", message=");
        sb.append(this.b);
        sb.append(", code=");
        return dj7.n(sb, this.c, ")");
    }
}
