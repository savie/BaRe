package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class t95 implements es5 {
    public final zy4 a;
    public final es5 b;
    public int c = -1;

    public t95(zy4 zy4Var, es5 es5Var) {
        this.a = zy4Var;
        this.b = es5Var;
    }

    @Override // defpackage.es5
    public final void b(Object obj) {
        int i = this.c;
        int i2 = this.a.g;
        if (i != i2) {
            this.c = i2;
            this.b.b(obj);
        }
    }
}
