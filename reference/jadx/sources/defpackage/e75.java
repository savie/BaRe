package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class e75 extends r4 {
    public final /* synthetic */ f75 a;
    public final /* synthetic */ int b;
    public final /* synthetic */ boolean c;

    public e75(f75 f75Var, int i, boolean z) {
        this.a = f75Var;
        this.b = i;
        this.c = z;
    }

    @Override // defpackage.r4
    public final void e(i75 i75Var) {
        i75Var.d = new d75(this.a);
    }

    @Override // defpackage.r4
    public final void g(bb2 bb2Var) {
        if (this.c) {
            final f75 f75Var = this.a;
            bb2Var.a(ar7.class, new sj7() { // from class: c75
                @Override // defpackage.sj7
                public final Object a(j75 j75Var, di4 di4Var) {
                    j75Var.getClass();
                    di4Var.getClass();
                    return new b75(f75Var);
                }
            });
        }
    }

    @Override // defpackage.r4
    public final void h(n75 n75Var) {
        n75Var.a = this.a.c;
        n75Var.e = this.b;
    }
}
