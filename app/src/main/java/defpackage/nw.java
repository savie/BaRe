package defpackage;

import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class nw implements mt3 {
    public final /* synthetic */ kh6 a;
    public final /* synthetic */ long b;
    public final /* synthetic */ qv c;

    public /* synthetic */ nw(kh6 kh6Var, long j, qv qvVar) {
        this.a = kh6Var;
        this.b = j;
        this.c = qvVar;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        this.c.invoke(Integer.valueOf(Const.r(this.a.a + ((Long) obj).longValue(), this.b)));
        return be8.a;
    }
}
