package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class xv implements rt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ mt3 b;
    public final /* synthetic */ gx c;

    public /* synthetic */ xv(mt3 mt3Var, gx gxVar, xw xwVar, int i) {
        this.a = i;
        this.b = mt3Var;
        this.c = gxVar;
    }

    @Override // defpackage.rt3
    public final Object a(Object obj, Object obj2, Object obj3) {
        int i = this.a;
        be8 be8Var = be8.a;
        gx gxVar = this.c;
        mt3 mt3Var = this.b;
        switch (i) {
            case 0:
                long jLongValue = ((Long) obj).longValue();
                ((Long) obj2).getClass();
                ((Long) obj3).getClass();
                ((mw) mt3Var).invoke(Long.valueOf(((cx) gxVar).b() + jLongValue));
                break;
            default:
                long jLongValue2 = ((Long) obj).longValue();
                ((Long) obj2).getClass();
                ((Long) obj3).getClass();
                ((lw) mt3Var).invoke(Long.valueOf(((ax) gxVar).b() + jLongValue2));
                break;
        }
        return be8Var;
    }
}
