package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class da2 implements bt3 {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ fa2 b;
    public final /* synthetic */ boolean c;

    public /* synthetic */ da2(boolean z, fa2 fa2Var, boolean z2) {
        this.a = z;
        this.b = fa2Var;
        this.c = z2;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0045  */
    @Override // defpackage.bt3
    public final Object invoke() {
        fa2 fa2Var = this.b;
        ex6 ex6Var = fa2Var.d;
        boolean z = this.a;
        if (z) {
            ex6Var.k(np6.e.INSTANCE);
        }
        np6 np6VarCreate = np6.Companion.create(z);
        try {
            Thread.sleep(100L);
        } catch (Exception unused) {
        }
        if (pe4.d(np6VarCreate, np6.c.INSTANCE)) {
            gv7 gv7Var = qe7.a;
            if (le7.f() && this.c) {
                vr6.i$default(vr6.INSTANCE, fa2Var.b, "No root but Shizuku seems to be running. Requesting permission...", null, 4, null);
                ex6Var.k(np6.e.INSTANCE);
                fa2Var.e.k(Boolean.TRUE);
            } else {
                ex6Var.k(np6VarCreate);
                fa2Var.c();
            }
        } else {
            ex6Var.k(np6VarCreate);
            fa2Var.c();
        }
        return be8.a;
    }
}
