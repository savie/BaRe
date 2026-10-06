package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fy6 {
    public final long a;
    public final int b;
    public final int c;
    public final String d;

    public fy6(int i, int i2, long j, String str) {
        str.getClass();
        this.a = j;
        this.b = i;
        this.c = i2;
        this.d = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fy6)) {
            return false;
        }
        fy6 fy6Var = (fy6) obj;
        return this.a == fy6Var.a && this.b == fy6Var.b && this.c == fy6Var.c && pe4.d(this.d, fy6Var.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + eq3.d(this.c, eq3.d(this.b, Long.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        return "SbaArchiveFooterInfo(offset=" + this.a + ", size=" + this.b + ", crc32=" + this.c + ", crc32Hex=" + this.d + ")";
    }
}
