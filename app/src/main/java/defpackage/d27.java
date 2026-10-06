package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d27 {
    public final long a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;
    public final long g;
    public final long h;
    public final long i;

    public d27(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
        this.e = j5;
        this.f = j6;
        this.g = j7;
        this.h = j8;
        this.i = j9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d27)) {
            return false;
        }
        d27 d27Var = (d27) obj;
        return this.a == d27Var.a && this.b == d27Var.b && this.c == d27Var.c && this.d == d27Var.d && this.e == d27Var.e && this.f == d27Var.f && this.g == d27Var.g && this.h == d27Var.h && this.i == d27Var.i;
    }

    public final int hashCode() {
        return Long.hashCode(this.i) + xs1.f(this.h, xs1.f(this.g, xs1.f(this.f, xs1.f(this.e, xs1.f(this.d, xs1.f(this.c, xs1.f(this.b, Long.hashCode(this.a) * 31, 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbT = dj7.t("SbaTarExtractInfo(tarBytes=", ", entryCount=", this.a);
        sbT.append(this.b);
        fz5.r(sbT, ", regularFileCount=", this.c, ", directoryCount=");
        sbT.append(this.d);
        fz5.r(sbT, ", symlinkCount=", this.e, ", hardlinkCount=");
        sbT.append(this.f);
        fz5.r(sbT, ", otherEntryCount=", this.g, ", skippedEntryCount=");
        sbT.append(this.h);
        sbT.append(", regularFileBytes=");
        sbT.append(this.i);
        sbT.append(")");
        return sbT.toString();
    }
}
