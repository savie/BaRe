package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hy6 {
    public final long a;
    public final long b;
    public final int c;
    public final int d;
    public final String e;
    public final int f;

    public hy6(long j, long j2, int i, int i2, String str, int i3) {
        str.getClass();
        this.a = j;
        this.b = j2;
        this.c = i;
        this.d = i2;
        this.e = str;
        this.f = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hy6)) {
            return false;
        }
        hy6 hy6Var = (hy6) obj;
        return this.a == hy6Var.a && this.b == hy6Var.b && this.c == hy6Var.c && this.d == hy6Var.d && pe4.d(this.e, hy6Var.e) && this.f == hy6Var.f;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f) + fz5.g(eq3.d(this.d, eq3.d(this.c, xs1.f(this.b, Long.hashCode(this.a) * 31, 31), 31), 31), 31, this.e);
    }

    public final String toString() {
        StringBuilder sbT = dj7.t("SbaArchiveIndexInfo(offset=", ", size=", this.a);
        sbT.append(this.b);
        sbT.append(", version=");
        sbT.append(this.c);
        sbT.append(", crc32=");
        sbT.append(this.d);
        sbT.append(", crc32Hex=");
        sbT.append(this.e);
        sbT.append(", entryCount=");
        sbT.append(this.f);
        sbT.append(")");
        return sbT.toString();
    }
}
