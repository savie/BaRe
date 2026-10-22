package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ec3 extends qo0 {
    public final ex6 e;
    public final sb3 f;
    public final fs7 g;
    public String h;
    public String i;
    public String j;
    public volatile boolean k;

    public ec3() {
        ex6 ex6Var = new ex6();
        ex6Var.k(ac3.a);
        this.e = ex6Var;
        this.f = new sb3();
        this.g = zm5.a();
        this.h = "";
        this.i = "";
        this.j = "";
    }

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        this.k = true;
        this.g.cancel(null);
        this.h = "";
        this.i = "";
        this.j = "";
        super.b();
    }
}
