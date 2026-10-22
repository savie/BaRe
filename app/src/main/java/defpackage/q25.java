package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q25 implements b35 {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ c35 c;

    public q25(c35 c35Var, int i, int i2) {
        this.c = c35Var;
        this.a = i;
        this.b = i2;
    }

    @Override // defpackage.b35
    public final void run() {
        c35 c35Var = this.c;
        e25 e25Var = c35Var.b;
        int i = this.a;
        int i2 = this.b;
        if (e25Var == null) {
            c35Var.n.add(new q25(c35Var, i, i2));
        } else {
            c35Var.c.i(i, i2 + 0.99f);
        }
    }
}
