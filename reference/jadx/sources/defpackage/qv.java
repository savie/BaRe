package defpackage;

import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qv implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ mt3 d;

    public /* synthetic */ qv(int i, int i2, int i3, mt3 mt3Var) {
        this.a = i3;
        this.b = i;
        this.d = mt3Var;
        this.c = i2;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        int i2 = this.c;
        mt3 mt3Var = this.d;
        int i3 = this.b;
        switch (i) {
            case 0:
                ((nv) mt3Var).invoke(Integer.valueOf(Const.q(((Integer) obj).intValue() + i3, i2)));
                break;
            default:
                ((qn3) mt3Var).invoke(Integer.valueOf(Const.q(((Integer) obj).intValue() + i3, i2)));
                break;
        }
        return be8Var;
    }
}
