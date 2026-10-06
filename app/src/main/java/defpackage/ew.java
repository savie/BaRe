package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ew implements rt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ long b;
    public final /* synthetic */ mt3 c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ew(long j, mt3 mt3Var, Object obj, xw xwVar, int i) {
        this.a = i;
        this.b = j;
        this.c = mt3Var;
        this.d = obj;
    }

    @Override // defpackage.rt3
    public final Object a(Object obj, Object obj2, Object obj3) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj4 = this.d;
        mt3 mt3Var = this.c;
        long j = this.b;
        switch (i) {
            case 0:
                long jLongValue = ((Long) obj).longValue();
                long jLongValue2 = ((Long) obj2).longValue();
                ((Long) obj3).getClass();
                ((nw) mt3Var).invoke(Long.valueOf(((kh6) obj4).a + tu0.w((jLongValue / jLongValue2) * j)));
                break;
            default:
                long jLongValue3 = ((Long) obj).longValue();
                long jLongValue4 = ((Long) obj2).longValue();
                ((Long) obj3).getClass();
                ((mw) mt3Var).invoke(Long.valueOf(((cx) obj4).b() + tu0.w((jLongValue3 / jLongValue4) * j)));
                break;
        }
        return be8Var;
    }
}
