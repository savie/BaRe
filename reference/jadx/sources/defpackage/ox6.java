package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ox6 implements au4, AutoCloseable {
    public final String a;
    public final mx6 b;
    public boolean c;

    public ox6(String str, mx6 mx6Var) {
        this.a = str;
        this.b = mx6Var;
    }

    public final void a(hu4 hu4Var, ot9 ot9Var) {
        ot9Var.getClass();
        hu4Var.getClass();
        if (this.c) {
            l0.e("Already attached to lifecycleOwner");
            return;
        }
        this.c = true;
        hu4Var.a(this);
        ot9Var.h(this.a, (px6) this.b.a.f);
    }

    @Override // defpackage.au4
    public final void g(fu4 fu4Var, rt4 rt4Var) {
        if (rt4Var == rt4.ON_DESTROY) {
            this.c = false;
            fu4Var.getLifecycle().f(this);
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
    }
}
