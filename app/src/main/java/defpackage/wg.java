package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wg {
    public final long a;
    public final mt3 b;
    public final long c;
    public long d;

    public wg(long j, long j2, mt3 mt3Var) {
        mt3Var.getClass();
        this.a = j2;
        this.b = mt3Var;
        long j3 = j + j2;
        this.c = j3 < 0 ? 0L : j3;
    }

    public final void a(ug ugVar, long j) {
        long j2 = this.d;
        if (j < 0) {
            j = 0;
        }
        long j3 = j2 + j;
        long j4 = this.a;
        long j5 = this.c;
        long j6 = j5 - j4;
        long j7 = j6 >= 0 ? j6 : 0L;
        long j8 = j3 > j7 ? j7 : j3;
        this.d = j8;
        this.b.invoke(new vg(ugVar, j8, j5));
    }
}
