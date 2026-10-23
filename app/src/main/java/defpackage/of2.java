package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class of2 implements q27 {
    public final /* synthetic */ int a;
    public Object b;
    public ri2 c;

    public of2(ri2 ri2Var) {
        this.a = 1;
        this.b = new z56(this);
        this.c = ri2Var;
    }

    @Override // defpackage.q27
    public final boolean a() {
        switch (this.a) {
            case 0:
                return ((tr5) this.b).d.a();
            default:
                return true;
        }
    }

    @Override // defpackage.q27
    public final yz0 b(ai5 ai5Var) {
        switch (this.a) {
            case 0:
                tr5 tr5Var = (tr5) this.b;
                tr5Var.getClass();
                return new yz0(tr5Var, ai5Var);
            default:
                return new yz0(this, ai5Var);
        }
    }

    @Override // defpackage.q27
    public final wo1 c() {
        switch (this.a) {
            case 0:
                return ((tr5) this.b).b.h;
            default:
                return null;
        }
    }

    @Override // defpackage.q27
    public final ny1 d() {
        switch (this.a) {
            case 0:
                return ((tr5) this.b).c.a;
            default:
                return null;
        }
    }

    @Override // defpackage.q27
    public final xd2 e() {
        switch (this.a) {
            case 0:
                return ((tr5) this.b).b.a;
            default:
                return null;
        }
    }

    @Override // defpackage.q27
    public final wo1 f() {
        switch (this.a) {
            case 0:
                return ((tr5) this.b).b.g;
            default:
                return null;
        }
    }

    @Override // defpackage.q27
    public final vj8 g() {
        switch (this.a) {
            case 0:
                return ((tr5) this.b).g();
            default:
                return null;
        }
    }

    @Override // defpackage.q27
    public final String getName() {
        switch (this.a) {
            case 0:
                return ((ee2) this.c).a.getName();
            default:
                return null;
        }
    }

    @Override // defpackage.q27
    public final void getText() {
        switch (this.a) {
            case 0:
                ((tr5) this.b).getText();
                break;
        }
    }

    @Override // defpackage.q27
    public final Class getType() {
        switch (this.a) {
            case 0:
                return ((tr5) this.b).d.getType();
            default:
                return this.c.getType();
        }
    }

    @Override // defpackage.q27
    public final uq4 getVersion() {
        switch (this.a) {
            case 0:
                return ((tr5) this.b).c.b;
            default:
                return null;
        }
    }

    @Override // defpackage.q27
    public final wo1 h() {
        switch (this.a) {
            case 0:
                return ((tr5) this.b).b.e;
            default:
                return null;
        }
    }

    @Override // defpackage.q27
    public final wo1 i() {
        switch (this.a) {
            case 0:
                return ((tr5) this.b).b.d;
            default:
                return null;
        }
    }

    @Override // defpackage.q27
    public final boolean isPrimitive() {
        switch (this.a) {
            case 0:
                return ((tr5) this.b).c.d;
            default:
                return true;
        }
    }

    @Override // defpackage.q27
    public final d67 j() {
        switch (this.a) {
            case 0:
                return ((tr5) this.b).j();
            default:
                return (z56) this.b;
        }
    }

    @Override // defpackage.q27
    public final wo1 k() {
        switch (this.a) {
            case 0:
                return ((tr5) this.b).b.f;
            default:
                return null;
        }
    }

    @Override // defpackage.q27
    public final wo1 l() {
        switch (this.a) {
            case 0:
                return ((tr5) this.b).b.c;
            default:
                return null;
        }
    }

    public /* synthetic */ of2() {
        this.a = 0;
    }

    private final void m() {
    }
}
