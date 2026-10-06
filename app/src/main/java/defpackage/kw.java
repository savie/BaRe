package defpackage;

import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class kw implements mt3 {
    public final /* synthetic */ int a = 0;
    public final /* synthetic */ long b;
    public final /* synthetic */ kh6 c;
    public final /* synthetic */ mt3 d;

    public /* synthetic */ kw(wj3 wj3Var, long j, kh6 kh6Var, iw iwVar) {
        this.b = j;
        this.c = kh6Var;
        this.d = iwVar;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        Long lValueOf;
        long j;
        int i = this.a;
        be8 be8Var = be8.a;
        mt3 mt3Var = this.d;
        kh6 kh6Var = this.c;
        switch (i) {
            case 0:
                ((qv) mt3Var).invoke(Integer.valueOf(Const.r(kh6Var.a + ((Long) obj).longValue(), this.b)));
                break;
            default:
                iw iwVar = (iw) mt3Var;
                dz6 dz6Var = (dz6) obj;
                dz6Var.getClass();
                Long l = dz6Var.b;
                if (l != null) {
                    long jLongValue = l.longValue();
                    if (jLongValue < 1) {
                        jLongValue = 1;
                    }
                    lValueOf = Long.valueOf(jLongValue);
                } else {
                    lValueOf = null;
                }
                long j2 = dz6Var.a;
                long jI = 0;
                if (j2 < 0) {
                    j2 = 0;
                }
                if (lValueOf != null) {
                    long jLongValue2 = lValueOf.longValue();
                    if (j2 > jLongValue2) {
                        j2 = jLongValue2;
                    }
                }
                if (lValueOf != null) {
                    long jLongValue3 = lValueOf.longValue();
                    long j3 = this.b;
                    if (jLongValue3 <= 0 || j3 <= 0) {
                        j = j3;
                    } else {
                        j = j3;
                        jI = l73.i(tu0.w((j2 / jLongValue3) * j3), 0L, j);
                    }
                    long j4 = kh6Var.a;
                    long j5 = jI < j4 ? j4 : jI;
                    if (j5 > j) {
                        j5 = j;
                    }
                    kh6Var.a = j5;
                    iwVar.invoke(Long.valueOf(j5));
                }
                break;
        }
        return be8Var;
    }

    public /* synthetic */ kw(kh6 kh6Var, long j, qv qvVar) {
        this.c = kh6Var;
        this.b = j;
        this.d = qvVar;
    }
}
