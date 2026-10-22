package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class my6 {
    public final bt3 a;
    public long b;
    public long c;

    public my6(bt3 bt3Var) {
        this.a = bt3Var;
    }

    public final long a(long j) {
        long jLongValue = ((Number) this.a.invoke()).longValue();
        long j2 = this.c;
        if (j2 == 0) {
            this.c = jLongValue;
            this.b = j;
            return 0L;
        }
        long j3 = jLongValue - j2;
        if (j3 < 1) {
            j3 = 1;
        }
        long j4 = j - this.b;
        long j5 = j4 >= 0 ? j4 : 0L;
        this.c = jLongValue;
        this.b = j;
        return (j5 * 1000) / j3;
    }
}
