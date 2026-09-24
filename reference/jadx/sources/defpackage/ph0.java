package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ph0 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ kh6 b;
    public final /* synthetic */ kh6 c;
    public final /* synthetic */ no2 d;

    public /* synthetic */ ph0(no2 no2Var, kh6 kh6Var, kh6 kh6Var2, int i) {
        this.a = i;
        this.d = no2Var;
        this.b = kh6Var;
        this.c = kh6Var2;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i;
        int i2 = this.a;
        be8 be8Var = be8.a;
        kh6 kh6Var = this.c;
        kh6 kh6Var2 = this.b;
        no2 no2Var = this.d;
        switch (i2) {
            case 0:
                rh0 rh0Var = (rh0) no2Var;
                Long l = (Long) obj;
                long jLongValue = l.longValue();
                if (rh0Var.d.isRunning()) {
                    no2.h(rh0Var, l);
                    float fCurrentTimeMillis = (System.currentTimeMillis() - kh6Var2.a) / 1000.0f;
                    kh6Var2.a = System.currentTimeMillis();
                    long j = jLongValue - kh6Var.a;
                    kh6Var.a = jLongValue;
                    int i3 = (int) (j / fCurrentTimeMillis);
                    if (i3 > 0) {
                        p93 p93Var = p93.a;
                        p93.c(Long.valueOf(i3)).concat("/s");
                    }
                }
                break;
            case 1:
                d82 d82Var = (d82) no2Var;
                Long l2 = (Long) obj;
                long jLongValue2 = l2.longValue();
                if (d82Var.d.isRunning()) {
                    no2.h(d82Var, l2);
                    float fCurrentTimeMillis2 = (System.currentTimeMillis() - kh6Var2.a) / 1000.0f;
                    kh6Var2.a = System.currentTimeMillis();
                    long j2 = jLongValue2 - kh6Var.a;
                    kh6Var.a = jLongValue2;
                    int i4 = (int) (j2 / fCurrentTimeMillis2);
                    if (i4 > 0) {
                        p93 p93Var2 = p93.a;
                        p93.c(Long.valueOf(i4)).concat("/s");
                    }
                }
                break;
            default:
                lu3 lu3Var = (lu3) no2Var;
                Long l3 = (Long) obj;
                long jLongValue3 = l3.longValue();
                if (lu3Var.d.isRunning()) {
                    no2.h(lu3Var, l3);
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    long j3 = jCurrentTimeMillis - kh6Var2.a;
                    kh6Var2.a = jCurrentTimeMillis;
                    long j4 = jLongValue3 - kh6Var.a;
                    kh6Var.a = jLongValue3;
                    if (j3 > 0) {
                        long j5 = (j4 * 1000) / j3;
                        if (j5 > 2147483647L) {
                            j5 = 2147483647L;
                        }
                        i = (int) j5;
                    } else {
                        i = 0;
                    }
                    if (i > 0) {
                        p93 p93Var3 = p93.a;
                        p93.c(Long.valueOf(i)).concat("/s");
                    }
                }
                break;
        }
        return be8Var;
    }
}
