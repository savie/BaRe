package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fe0 extends yn6 {
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final long f;

    public fe0(String str, String str2, String str3, String str4, long j) {
        if (str == null) {
            f6.n("Null rolloutId");
            throw null;
        }
        this.b = str;
        if (str2 == null) {
            f6.n("Null parameterKey");
            throw null;
        }
        this.c = str2;
        this.d = str3;
        if (str4 == null) {
            f6.n("Null variantId");
            throw null;
        }
        this.e = str4;
        this.f = j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof yn6)) {
            return false;
        }
        fe0 fe0Var = (fe0) ((yn6) obj);
        return this.b.equals(fe0Var.b) && this.c.equals(fe0Var.c) && this.d.equals(fe0Var.d) && this.e.equals(fe0Var.e) && this.f == fe0Var.f;
    }

    public final int hashCode() {
        int iHashCode = (((((((this.b.hashCode() ^ 1000003) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.e.hashCode()) * 1000003;
        long j = this.f;
        return ((int) ((j >>> 32) ^ j)) ^ iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RolloutAssignment{rolloutId=");
        sb.append(this.b);
        sb.append(", parameterKey=");
        sb.append(this.c);
        sb.append(", parameterValue=");
        sb.append(this.d);
        sb.append(", variantId=");
        sb.append(this.e);
        sb.append(", templateVersion=");
        return dj7.h(this.f, "}", sb);
    }
}
