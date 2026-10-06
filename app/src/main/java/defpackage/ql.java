package defpackage;

import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ql implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ kh6 b;
    public final /* synthetic */ long c;
    public final /* synthetic */ mt3 d;

    public /* synthetic */ ql(kh6 kh6Var, long j, mt3 mt3Var, int i) {
        this.a = i;
        this.b = kh6Var;
        this.c = j;
        this.d = mt3Var;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        mt3 mt3Var = this.d;
        long j = this.c;
        kh6 kh6Var = this.b;
        switch (i) {
            case 0:
                ((xk) mt3Var).invoke(Integer.valueOf(Const.r(kh6Var.a + ((Long) obj).longValue(), j)));
                break;
            default:
                ((qv) mt3Var).invoke(Integer.valueOf(Const.r(kh6Var.a + ((Long) obj).longValue(), j)));
                break;
        }
        return be8Var;
    }
}
