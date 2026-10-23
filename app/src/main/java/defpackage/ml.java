package defpackage;

import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ml implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ kh6 b;
    public final /* synthetic */ long c;
    public final /* synthetic */ xk d;

    public /* synthetic */ ml(kh6 kh6Var, long j, xk xkVar, int i) {
        this.a = i;
        this.b = kh6Var;
        this.c = j;
        this.d = xkVar;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        xk xkVar = this.d;
        long j = this.c;
        kh6 kh6Var = this.b;
        long jLongValue = ((Long) obj).longValue();
        switch (i) {
            case 0:
                xkVar.invoke(Integer.valueOf(Const.r(kh6Var.a + jLongValue, j)));
                break;
            default:
                xkVar.invoke(Integer.valueOf(Const.r(kh6Var.a + jLongValue, j)));
                break;
        }
        return be8Var;
    }
}
