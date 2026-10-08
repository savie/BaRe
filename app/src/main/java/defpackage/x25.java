package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class x25 implements b35 {
    public final /* synthetic */ float a;
    public final /* synthetic */ c35 b;

    public x25(c35 c35Var, float f) {
        this.b = c35Var;
        this.a = f;
    }

    @Override // defpackage.b35
    public final void run() {
        c35 c35Var = this.b;
        e25 e25Var = c35Var.b;
        float f = this.a;
        if (e25Var == null) {
            c35Var.n.add(new x25(c35Var, f));
        } else {
            c35Var.m((int) sg5.d(e25Var.k, e25Var.l, f));
        }
    }
}
