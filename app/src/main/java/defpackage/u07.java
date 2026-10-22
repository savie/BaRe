package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u07 {
    public final long a;
    public final long b;
    public final long c;
    public final int d;
    public final int e;

    public u07(long j, long j2, long j3, int i, int i2) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = i;
        this.e = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u07)) {
            return false;
        }
        u07 u07Var = (u07) obj;
        return this.a == u07Var.a && this.b == u07Var.b && this.c == u07Var.c && this.d == u07Var.d && this.e == u07Var.e;
    }

    public final int hashCode() {
        return Integer.hashCode(this.e) + eq3.d(this.d, xs1.f(this.c, xs1.f(this.b, Long.hashCode(this.a) * 31, 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbT = dj7.t("Footer(offset=", ", indexOffset=", this.a);
        sbT.append(this.b);
        fz5.r(sbT, ", indexSize=", this.c, ", indexCrc=");
        sbT.append(this.d);
        sbT.append(", footerCrc=");
        sbT.append(this.e);
        sbT.append(")");
        return sbT.toString();
    }
}
