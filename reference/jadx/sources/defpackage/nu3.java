package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class nu3 implements mt3 {
    public final /* synthetic */ mu3 a;
    public final /* synthetic */ long b;

    public /* synthetic */ nu3(mu3 mu3Var, pu3 pu3Var, long j) {
        this.a = mu3Var;
        this.b = j;
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        Long l = (Long) obj;
        long jLongValue = l.longValue();
        long j = this.b;
        this.a.invoke(l, Integer.valueOf(j <= 0 ? 100 : (int) l73.i((jLongValue * 100) / j, 0L, 100L)));
        return be8.a;
    }
}
