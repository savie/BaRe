package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nx6 implements au4 {
    public final rx6 a;

    public nx6(rx6 rx6Var) {
        this.a = rx6Var;
    }

    @Override // defpackage.au4
    public final void g(fu4 fu4Var, rt4 rt4Var) {
        if (rt4Var != rt4.ON_CREATE) {
            q.d(rt4Var, "Next event must be ON_CREATE, it was ");
        } else {
            fu4Var.getLifecycle().f(this);
            this.a.b();
        }
    }
}
