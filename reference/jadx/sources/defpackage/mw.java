package defpackage;

import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class mw implements mt3 {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ long b;
    public final /* synthetic */ kh6 c;
    public final /* synthetic */ yt3 d;

    public /* synthetic */ mw(long j, wj3 wj3Var, kh6 kh6Var, qt3 qt3Var) {
        this.b = j;
        this.c = kh6Var;
        this.d = qt3Var;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        long jLongValue;
        int i = this.a;
        be8 be8Var = be8.a;
        yt3 yt3Var = this.d;
        kh6 kh6Var = this.c;
        switch (i) {
            case 0:
                ((qv) yt3Var).invoke(Integer.valueOf(Const.r(kh6Var.a + ((Long) obj).longValue(), this.b)));
                break;
            default:
                qt3 qt3Var = (qt3) yt3Var;
                dz6 dz6Var = (dz6) obj;
                dz6Var.getClass();
                Long l = dz6Var.b;
                long j = this.b;
                if (l != null) {
                    jLongValue = l.longValue();
                    if (jLongValue < 1) {
                        jLongValue = 1;
                    }
                } else {
                    jLongValue = j;
                }
                long j2 = dz6Var.a;
                if (j2 < 0) {
                    j2 = 0;
                }
                if (j2 > jLongValue) {
                    j2 = jLongValue;
                }
                long jI = (jLongValue <= 0 || j <= 0) ? 0L : l73.i(tu0.w((j2 / jLongValue) * j), 0L, j);
                if (!dz6Var.d && kh6Var.a == 0 && jI >= j && j > 1) {
                    long j3 = j / 2;
                    jI = j3 >= 1 ? j3 : 1L;
                }
                long j4 = kh6Var.a;
                if (jI >= j4) {
                    j4 = jI;
                }
                if (j4 > j) {
                    j4 = j;
                }
                kh6Var.a = j4;
                qt3Var.invoke(Long.valueOf(j4), Long.valueOf(j));
                break;
        }
        return be8Var;
    }

    public /* synthetic */ mw(kh6 kh6Var, long j, qv qvVar) {
        this.c = kh6Var;
        this.b = j;
        this.d = qvVar;
    }
}
