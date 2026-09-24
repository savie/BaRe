package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n21 implements rt3 {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ Object b;

    public /* synthetic */ n21(zs zsVar) {
        this.b = zsVar;
    }

    @Override // defpackage.rt3
    public final Object a(Object obj, Object obj2, Object obj3) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj4 = this.b;
        switch (i) {
            case 0:
                ((zs) obj4).invoke((Throwable) obj);
                break;
            default:
                mj5 mj5Var = (mj5) obj4;
                mj5.q.set(mj5Var, null);
                mj5Var.b(null);
                break;
        }
        return be8Var;
    }

    public /* synthetic */ n21(mj5 mj5Var, lj5 lj5Var) {
        this.b = mj5Var;
    }
}
