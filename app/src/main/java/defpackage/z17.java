package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z17 {
    public final String a;
    public final c27 b;
    public final String c;
    public final int d;
    public final long e;
    public final long f;
    public final long g;
    public final boolean h;
    public final List i;

    public z17(String str, c27 c27Var, String str2, int i, long j, long j2, long j3, boolean z, List list) {
        str.getClass();
        c27Var.getClass();
        list.getClass();
        this.a = str;
        this.b = c27Var;
        this.c = str2;
        this.d = i;
        this.e = j;
        this.f = j2;
        this.g = j3;
        this.h = z;
        this.i = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z17)) {
            return false;
        }
        z17 z17Var = (z17) obj;
        return pe4.d(this.a, z17Var.a) && this.b == z17Var.b && pe4.d(this.c, z17Var.c) && this.d == z17Var.d && this.e == z17Var.e && this.f == z17Var.f && this.g == z17Var.g && this.h == z17Var.h && pe4.d(this.i, z17Var.i);
    }

    public final int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        String str = this.c;
        return this.i.hashCode() + fz5.h(xs1.f(this.g, xs1.f(this.f, xs1.f(this.e, eq3.d(this.d, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31), 31), 31), 31), 31, this.h);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SbaTarEntryInfo(name=");
        sb.append(this.a);
        sb.append(", type=");
        sb.append(this.b);
        sb.append(", linkName=");
        sb.append(this.c);
        sb.append(", mode=");
        sb.append(this.d);
        sb.append(", size=");
        sb.append(this.e);
        fz5.r(sb, ", realSize=", this.f, ", mtimeMs=");
        sb.append(this.g);
        sb.append(", sparse=");
        sb.append(this.h);
        sb.append(", xattrNames=");
        sb.append(this.i);
        sb.append(")");
        return sb.toString();
    }
}
