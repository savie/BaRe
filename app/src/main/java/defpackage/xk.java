package defpackage;

import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class xk implements mt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ wk b;

    public /* synthetic */ xk(int i, wk wkVar) {
        this.a = i;
        this.b = wkVar;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        int iQ = Const.q(((Integer) obj).intValue(), this.a);
        if (iQ > 100) {
            iQ = 100;
        }
        this.b.invoke(Integer.valueOf(iQ));
        return be8.a;
    }
}
