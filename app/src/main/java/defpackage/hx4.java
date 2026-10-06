package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hx4 extends g3 {
    public final bx4 a = new bx4();
    public final int b;
    public boolean c;

    public hx4(int i) {
        this.b = i;
    }

    @Override // defpackage.g3
    public final boolean b(ws0 ws0Var) {
        if (!this.c) {
            return true;
        }
        ws0 ws0Var2 = (ws0) this.a.a;
        if (!(ws0Var2 instanceof lw4)) {
            return true;
        }
        ((lw4) ws0Var2).f = false;
        return true;
    }

    @Override // defpackage.g3
    public final ws0 e() {
        return this.a;
    }

    @Override // defpackage.g3
    public final boolean f() {
        return true;
    }

    @Override // defpackage.g3
    public final ys0 h(un2 un2Var) {
        if (un2Var.h) {
            if (this.a.b == null) {
                return null;
            }
            ws0 ws0VarE = un2Var.h().e();
            this.c = (ws0VarE instanceof rw5) || (ws0VarE instanceof bx4);
            return ys0.a(un2Var.e);
        }
        int i = un2Var.g;
        int i2 = this.b;
        if (i >= i2) {
            return new ys0(-1, un2Var.c + i2, false);
        }
        return null;
    }
}
