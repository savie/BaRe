package defpackage;

import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ck3 implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ bk3 b;

    public /* synthetic */ ck3(int i, bk3 bk3Var) {
        this.a = i;
        this.b = bk3Var;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        this.b.invoke(Integer.valueOf(Const.q(((Integer) obj).intValue(), this.a)));
        return be8.a;
    }
}
