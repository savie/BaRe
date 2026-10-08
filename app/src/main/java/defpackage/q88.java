package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q88 extends jb9 {
    public boolean M = false;
    public final /* synthetic */ int N;
    public final /* synthetic */ r88 O;

    public q88(r88 r88Var, int i) {
        this.O = r88Var;
        this.N = i;
    }

    @Override // defpackage.jb9, defpackage.om8
    public final void a() {
        this.M = true;
    }

    @Override // defpackage.jb9, defpackage.om8
    public final void b() {
        this.O.a.setVisibility(0);
    }

    @Override // defpackage.om8
    public final void d() {
        if (this.M) {
            return;
        }
        this.O.a.setVisibility(this.N);
    }
}
