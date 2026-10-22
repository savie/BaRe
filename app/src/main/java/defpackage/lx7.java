package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lx7 implements rt3 {
    public final /* synthetic */ Long a;
    public final /* synthetic */ kh6 b;
    public final /* synthetic */ kh6 c;
    public final /* synthetic */ kh6 d;
    public final /* synthetic */ rt3 e;

    public /* synthetic */ lx7(Long l, kh6 kh6Var, kh6 kh6Var2, kh6 kh6Var3, rt3 rt3Var) {
        this.a = l;
        this.b = kh6Var;
        this.c = kh6Var2;
        this.d = kh6Var3;
        this.e = rt3Var;
    }

    @Override // defpackage.rt3
    public final Object a(Object obj, Object obj2, Object obj3) {
        long j;
        long jLongValue = ((Long) obj).longValue();
        long jLongValue2 = ((Long) obj2).longValue();
        ((Long) obj3).getClass();
        Long l = this.a;
        be8 be8Var = be8.a;
        if (l != null && l.longValue() > 0 && jLongValue2 > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jI = l73.i(tu0.w((jLongValue / jLongValue2) * l.longValue()), 0L, l.longValue());
            kh6 kh6Var = this.b;
            long j2 = jCurrentTimeMillis - kh6Var.a;
            boolean z = jI == l.longValue();
            kh6 kh6Var2 = this.c;
            if ((jI > kh6Var2.a || z) && (j2 >= 2000 || z)) {
                long j3 = kh6Var.a;
                kh6 kh6Var3 = this.d;
                if (j3 <= 0 || j2 <= 0 || z) {
                    j = 0;
                } else {
                    long j4 = jI - kh6Var3.a;
                    if (j4 < 0) {
                        j4 = 0;
                    }
                    j = (j4 * 1000) / j2;
                }
                kh6Var.a = jCurrentTimeMillis;
                kh6Var3.a = jI;
                kh6Var2.a = jI;
                this.e.a(Long.valueOf(jI), l, Long.valueOf(j));
            }
        }
        return be8Var;
    }
}
