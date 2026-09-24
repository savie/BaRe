package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xy6 {
    public final String a;
    public final int b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;
    public final long g;
    public final cy0 h;
    public final wy6 i;
    public final int j;
    public final Long k;
    public final Long l;
    public final Long m;

    public xy6(String str, int i, long j, long j2, long j3, long j4, long j5, cy0 cy0Var, wy6 wy6Var, int i2, Long l, Long l2, Long l3) {
        str.getClass();
        wy6Var.getClass();
        this.a = str;
        this.b = i;
        this.c = j;
        this.d = j2;
        this.e = j3;
        this.f = j4;
        this.g = j5;
        this.h = cy0Var;
        this.i = wy6Var;
        this.j = i2;
        this.k = l;
        this.l = l2;
        this.m = l3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof xy6)) {
            return false;
        }
        xy6 xy6Var = (xy6) obj;
        return pe4.d(this.a, xy6Var.a) && this.b == xy6Var.b && this.c == xy6Var.c && this.d == xy6Var.d && this.e == xy6Var.e && this.f == xy6Var.f && this.g == xy6Var.g && this.h.equals(xy6Var.h) && this.i == xy6Var.i && this.j == xy6Var.j && pe4.d(this.k, xy6Var.k) && pe4.d(this.l, xy6Var.l) && pe4.d(this.m, xy6Var.m);
    }

    public final int hashCode() {
        int iD = eq3.d(this.j, (this.i.hashCode() + ((this.h.hashCode() + xs1.f(this.g, xs1.f(this.f, xs1.f(this.e, xs1.f(this.d, xs1.f(this.c, eq3.d(this.b, this.a.hashCode() * 31, 31), 31), 31), 31), 31), 31)) * 31)) * 31, 31);
        Long l = this.k;
        int iHashCode = (iD + (l == null ? 0 : l.hashCode())) * 31;
        Long l2 = this.l;
        int iHashCode2 = (iHashCode + (l2 == null ? 0 : l2.hashCode())) * 31;
        Long l3 = this.m;
        return iHashCode2 + (l3 != null ? l3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbV = dj7.v("SbaEntryInfo(name=", this.a, ", order=", this.b, ", entryOffset=");
        sbV.append(this.c);
        fz5.r(sbV, ", payloadOffset=", this.d, ", payloadSize=");
        sbV.append(this.e);
        fz5.r(sbV, ", compressedSize=", this.f, ", tarSize=");
        sbV.append(this.g);
        sbV.append(", compression=");
        sbV.append(this.h);
        sbV.append(", encryption=");
        sbV.append(this.i);
        sbV.append(", flags=");
        sbV.append(this.j);
        sbV.append(", tarEntryCount=");
        sbV.append(this.k);
        sbV.append(", regularFileCount=");
        sbV.append(this.l);
        sbV.append(", directoryCount=");
        sbV.append(this.m);
        sbV.append(")");
        return sbV.toString();
    }
}
