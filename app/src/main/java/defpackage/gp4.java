package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gp4 extends jp4 {
    public int e;

    public gp4(Object obj, Object obj2, hp4 hp4Var, hp4 hp4Var2) {
        super(obj, obj2, hp4Var, hp4Var2);
        this.e = -1;
    }

    @Override // defpackage.jp4
    public final jp4 g(Object obj, Object obj2, hp4 hp4Var, hp4 hp4Var2) {
        if (obj == null) {
            obj = this.a;
        }
        if (obj2 == null) {
            obj2 = this.b;
        }
        if (hp4Var == null) {
            hp4Var = this.c;
        }
        if (hp4Var2 == null) {
            hp4Var2 = this.d;
        }
        return new gp4(obj, obj2, hp4Var, hp4Var2);
    }

    @Override // defpackage.jp4
    public final int i() {
        return 2;
    }

    @Override // defpackage.hp4
    public final boolean n() {
        return false;
    }

    @Override // defpackage.jp4
    public final void o(jp4 jp4Var) {
        if (this.e == -1) {
            this.c = jp4Var;
        } else {
            l0.e("Can't set left after using size");
        }
    }

    @Override // defpackage.hp4
    public final int size() {
        if (this.e == -1) {
            this.e = this.d.size() + this.c.size() + 1;
        }
        return this.e;
    }
}
