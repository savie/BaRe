package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dh {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;

    public dh(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i2 + i4;
        this.f = i4 - i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dh)) {
            return false;
        }
        dh dhVar = (dh) obj;
        return this.a == dhVar.a && this.b == dhVar.b && this.c == dhVar.c && this.d == dhVar.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + eq3.d(this.c, eq3.d(this.b, Integer.hashCode(this.a) * 31, 31), 31);
    }

    public final String toString() {
        StringBuilder sbN = xs1.n("ChunkHeader(type=", this.a, ", start=", ", headerSize=", this.b);
        sbN.append(this.c);
        sbN.append(", size=");
        sbN.append(this.d);
        sbN.append(")");
        return sbN.toString();
    }
}
