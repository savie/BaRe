package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class h86 {
    public final bt3 a;
    public final long b;
    public long c;
    public Long d;

    public h86(bt3 bt3Var, long j, Long l) {
        bt3Var.getClass();
        this.a = bt3Var;
        this.b = j;
        this.d = l;
    }

    public final long a(long j) {
        long jLongValue = ((Number) this.a.invoke()).longValue();
        Long l = this.d;
        if (j < 0) {
            j = 0;
        }
        this.d = Long.valueOf(jLongValue);
        if (l == null) {
            this.c = j;
            return 0L;
        }
        long jLongValue2 = jLongValue - l.longValue();
        if (jLongValue2 < 1) {
            jLongValue2 = 1;
        }
        long j2 = j - this.c;
        long j3 = j2 >= 0 ? j2 : 0L;
        this.c = j;
        long j4 = j3 / jLongValue2;
        long j5 = this.b;
        if (j4 <= j5 / 1000) {
            long j6 = j4 * 1000;
            long j7 = ((j3 % jLongValue2) * 1000) / jLongValue2;
            if (j6 <= j5 - j7) {
                return j6 + j7;
            }
        }
        return j5;
    }
}
