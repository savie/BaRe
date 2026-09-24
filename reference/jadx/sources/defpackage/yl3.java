package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class yl3 extends bm3 {
    public final String a;
    public final long b;
    public final long c;
    public final int d;
    public final int e;
    public final gv7 f = new gv7(new bk(this, 18));
    public final gv7 g = new gv7(new ck(this, 20));
    public final gv7 h = new gv7(new dk(this, 24));

    public yl3(String str, long j, long j2, int i, int i2) {
        this.a = str;
        this.b = j;
        this.c = j2;
        this.d = i;
        this.e = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yl3)) {
            return false;
        }
        yl3 yl3Var = (yl3) obj;
        return this.a.equals(yl3Var.a) && this.b == yl3Var.b && this.c == yl3Var.c && this.d == yl3Var.d && this.e == yl3Var.e;
    }

    public final int hashCode() {
        return Integer.hashCode(this.e) + eq3.d(this.d, xs1.f(this.c, xs1.f(this.b, this.a.hashCode() * 31, 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbO = u48.o("FolderInfo(path=", this.a, this.b, ", size=");
        fz5.r(sbO, ", lastModified=", this.c, ", folderCount=");
        sbO.append(this.d);
        sbO.append(", fileCount=");
        sbO.append(this.e);
        sbO.append(")");
        return sbO.toString();
    }
}
