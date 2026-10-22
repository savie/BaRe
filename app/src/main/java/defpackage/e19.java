package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e19 implements bk0 {
    public final /* synthetic */ pz3 a;

    public e19(pz3 pz3Var) {
        this.a = pz3Var;
    }

    @Override // defpackage.bk0
    public final void a(boolean z) {
        n29 n29Var = this.a.n;
        n29Var.sendMessage(n29Var.obtainMessage(1, Boolean.valueOf(z)));
    }
}
