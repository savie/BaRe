package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zq6 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ mt3 b;

    public /* synthetic */ zq6(int i, mt3 mt3Var) {
        this.a = i;
        this.b = mt3Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        mt3 mt3Var = this.b;
        Long l = (Long) obj;
        l.longValue();
        ((Integer) obj2).intValue();
        switch (i) {
            case 0:
                if (mt3Var != null) {
                    mt3Var.invoke(l);
                }
                break;
            default:
                if (mt3Var != null) {
                    mt3Var.invoke(l);
                }
                break;
        }
        return be8Var;
    }
}
