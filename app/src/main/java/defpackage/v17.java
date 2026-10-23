package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class v17 {
    public final long a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;
    public final long g;
    public final long h;
    public final long i;
    public final long j;
    public final long k;
    public final long l;
    public final long m;
    public final long n;
    public final long o;
    public final long p;
    public final long q;
    public final long r;
    public final long s;
    public final long t;

    public v17(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
        this.e = j5;
        this.f = j6;
        this.g = j7;
        this.h = j8;
        this.i = j9;
        this.j = j10;
        this.k = j11;
        this.l = j12;
        this.m = j13;
        this.n = j14;
        this.o = j15;
        this.p = j16;
        this.q = j17;
        this.r = j18;
        this.s = j19;
        this.t = j20;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v17)) {
            return false;
        }
        v17 v17Var = (v17) obj;
        return this.a == v17Var.a && this.b == v17Var.b && this.c == v17Var.c && this.d == v17Var.d && this.e == v17Var.e && this.f == v17Var.f && this.g == v17Var.g && this.h == v17Var.h && this.i == v17Var.i && this.j == v17Var.j && this.k == v17Var.k && this.l == v17Var.l && this.m == v17Var.m && this.n == v17Var.n && this.o == v17Var.o && this.p == v17Var.p && this.q == v17Var.q && this.r == v17Var.r && this.s == v17Var.s && this.t == v17Var.t;
    }

    public final int hashCode() {
        return Long.hashCode(this.t) + xs1.f(this.s, xs1.f(this.r, xs1.f(this.q, xs1.f(this.p, xs1.f(this.o, xs1.f(this.n, xs1.f(this.m, xs1.f(this.l, xs1.f(this.k, xs1.f(this.j, xs1.f(this.i, xs1.f(this.h, xs1.f(this.g, xs1.f(this.f, xs1.f(this.e, xs1.f(this.d, xs1.f(this.c, xs1.f(this.b, Long.hashCode(this.a) * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbT = dj7.t("SbaSwiftTarExtractStats(tarBytes=", ", entryCount=", this.a);
        sbT.append(this.b);
        fz5.r(sbT, ", regularFileCount=", this.c, ", directoryCount=");
        sbT.append(this.d);
        fz5.r(sbT, ", symlinkCount=", this.e, ", hardlinkCount=");
        sbT.append(this.f);
        fz5.r(sbT, ", otherEntryCount=", this.g, ", skippedEntryCount=");
        sbT.append(this.h);
        fz5.r(sbT, ", regularFileBytes=", this.i, ", fallbackReadCalls=");
        sbT.append(this.j);
        fz5.r(sbT, ", fallbackReadBytes=", this.k, ", sendfileCalls=");
        sbT.append(this.l);
        fz5.r(sbT, ", sendfileBytes=", this.m, ", fallbackWriteCalls=");
        sbT.append(this.n);
        fz5.r(sbT, ", fallbackWriteBytes=", this.o, ", outputOpenCalls=");
        sbT.append(this.p);
        fz5.r(sbT, ", nativeMillis=", this.q, ", headerReadMillis=");
        sbT.append(this.r);
        fz5.r(sbT, ", dataCopyMillis=", this.s, ", metadataMillis=");
        return dj7.h(this.t, ")", sbT);
    }
}
