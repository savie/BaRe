package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mw4 extends g3 {
    public final lw4 a;
    public boolean b;
    public int c;

    public mw4(lw4 lw4Var) {
        this.a = lw4Var;
    }

    @Override // defpackage.g3
    public final boolean b(ws0 ws0Var) {
        if (!(ws0Var instanceof bx4)) {
            return false;
        }
        if (this.b && this.c == 1) {
            this.a.f = false;
            this.b = false;
        }
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
            this.b = true;
            this.c = 0;
        } else if (this.b) {
            this.c++;
        }
        return ys0.a(un2Var.b);
    }
}
