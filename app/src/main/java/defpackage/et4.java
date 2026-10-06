package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class et4 {
    public final long a;
    public final rt3 b;
    public long c;
    public long d = System.currentTimeMillis();
    public long e;

    public et4(long j, rt3 rt3Var) {
        this.a = j;
        this.b = rt3Var;
    }

    public final void a(boolean z) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = jCurrentTimeMillis - this.d;
        long j2 = this.c;
        long j3 = this.a;
        boolean z2 = j2 == j3;
        if (z || j >= 2000 || z2) {
            long jW = 0;
            if (j > 0 && !z2) {
                jW = tu0.w(((j2 - this.e) * 1000.0d) / j);
            }
            rt3 rt3Var = this.b;
            if (rt3Var != null) {
                rt3Var.a(Long.valueOf(this.c), Long.valueOf(j3), Long.valueOf(jW));
            }
            this.d = jCurrentTimeMillis;
            this.e = this.c;
        }
    }
}
