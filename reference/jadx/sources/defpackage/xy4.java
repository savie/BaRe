package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xy4 extends yy4 implements au4 {
    public final fu4 e;
    public final /* synthetic */ zy4 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xy4(zy4 zy4Var, fu4 fu4Var, es5 es5Var) {
        super(zy4Var, es5Var);
        this.f = zy4Var;
        this.e = fu4Var;
    }

    @Override // defpackage.yy4
    public final void b() {
        this.e.getLifecycle().f(this);
    }

    @Override // defpackage.yy4
    public final boolean c(fu4 fu4Var) {
        return this.e == fu4Var;
    }

    @Override // defpackage.yy4
    public final boolean d() {
        return this.e.getLifecycle().d.compareTo(st4.d) >= 0;
    }

    @Override // defpackage.au4
    public final void g(fu4 fu4Var, rt4 rt4Var) {
        fu4 fu4Var2 = this.e;
        st4 st4Var = fu4Var2.getLifecycle().d;
        if (st4Var == st4.a) {
            this.f.j(this.a);
            return;
        }
        st4 st4Var2 = null;
        while (st4Var2 != st4Var) {
            a(d());
            st4Var2 = st4Var;
            st4Var = fu4Var2.getLifecycle().d;
        }
    }
}
