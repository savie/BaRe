package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f19 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ g19 b;

    public f19(g19 g19Var, int i) {
        this.b = g19Var;
        this.a = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.b.i(this.a);
    }
}
