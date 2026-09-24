package defpackage;

import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class pv implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ mt3 c;

    public /* synthetic */ pv(mt3 mt3Var, int i, int i2) {
        this.a = i2;
        this.c = mt3Var;
        this.b = i;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        int i2 = this.b;
        mt3 mt3Var = this.c;
        switch (i) {
            case 0:
                ((nv) mt3Var).invoke(Integer.valueOf(Const.q(((Integer) obj).intValue(), i2)));
                break;
            default:
                ((qn3) mt3Var).invoke(Integer.valueOf(Const.q(((Integer) obj).intValue(), i2)));
                break;
        }
        return be8Var;
    }
}
