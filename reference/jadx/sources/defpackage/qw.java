package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qw implements rt3 {
    public final /* synthetic */ int a = 0;
    public final /* synthetic */ long b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ qw(long j, iw iwVar, dx dxVar, xw xwVar) {
        this.b = j;
        this.c = iwVar;
        this.d = dxVar;
    }

    @Override // defpackage.rt3
    public final Object a(Object obj, Object obj2, Object obj3) {
        int i = this.a;
        be8 be8Var = be8.a;
        long j = this.b;
        Object obj4 = this.d;
        Object obj5 = this.c;
        switch (i) {
            case 0:
                long jLongValue = ((Long) obj).longValue();
                long jLongValue2 = ((Long) obj2).longValue();
                ((Long) obj3).getClass();
                ((iw) obj5).invoke(Long.valueOf(((dx) obj4).b() + tu0.w((jLongValue / jLongValue2) * j)));
                break;
            default:
                rt3 rt3Var = (rt3) obj4;
                long jLongValue3 = ((Long) obj).longValue();
                ((Long) obj2).getClass();
                Long l = (Long) obj3;
                l.getClass();
                long j2 = ((kh6) obj5).a + jLongValue3;
                if (rt3Var != null) {
                    rt3Var.a(Long.valueOf(j2), Long.valueOf(j), l);
                }
                break;
        }
        return be8Var;
    }

    public /* synthetic */ qw(kh6 kh6Var, rt3 rt3Var, long j) {
        this.c = kh6Var;
        this.d = rt3Var;
        this.b = j;
    }
}
