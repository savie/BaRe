package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class p25 implements b35 {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;
    public final /* synthetic */ c35 c;

    public /* synthetic */ p25(c35 c35Var, String str, int i) {
        this.a = i;
        this.c = c35Var;
        this.b = str;
    }

    @Override // defpackage.b35
    public final void run() {
        switch (this.a) {
            case 0:
                this.c.l(this.b);
                break;
            default:
                this.c.k(this.b);
                break;
        }
    }
}
