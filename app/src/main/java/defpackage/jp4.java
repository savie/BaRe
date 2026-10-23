package defpackage;

import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class jp4 implements hp4 {
    public final Object a;
    public final Object b;
    public hp4 c;
    public final hp4 d;

    public jp4(Object obj, Object obj2, hp4 hp4Var, hp4 hp4Var2) {
        sl4 sl4Var = sl4.b;
        this.a = obj;
        this.b = obj2;
        this.c = hp4Var == null ? sl4Var : hp4Var;
        this.d = hp4Var2 == null ? sl4Var : hp4Var2;
    }

    @Override // defpackage.hp4
    public final void a(iz1 iz1Var) {
        this.c.a(iz1Var);
        iz1Var.B(this.a, this.b);
        this.d.a(iz1Var);
    }

    @Override // defpackage.hp4
    public final hp4 b() {
        return this.c;
    }

    public final jp4 c() {
        hp4 hp4Var = this.c;
        hp4 hp4VarM = hp4Var.m(hp4Var.n() ? 2 : 1, null, null);
        hp4 hp4Var2 = this.d;
        return m(n() ? 2 : 1, hp4VarM, hp4Var2.m(hp4Var2.n() ? 2 : 1, null, null));
    }

    @Override // defpackage.hp4
    public final hp4 d(Object obj, Object obj2, Comparator comparator) {
        jp4 jp4VarG;
        int iCompare = comparator.compare(obj, this.a);
        if (iCompare < 0) {
            jp4VarG = g(null, null, this.c.d(obj, obj2, comparator), null);
        } else {
            jp4VarG = iCompare == 0 ? g(obj, obj2, null, null) : g(null, null, null, this.d.d(obj, obj2, comparator));
        }
        return jp4VarG.h();
    }

    @Override // defpackage.hp4
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final jp4 m(int i, hp4 hp4Var, hp4 hp4Var2) {
        if (hp4Var == null) {
            hp4Var = this.c;
        }
        if (hp4Var2 == null) {
            hp4Var2 = this.d;
        }
        Object obj = this.a;
        Object obj2 = this.b;
        return i == 1 ? new ip4(obj, obj2, hp4Var, hp4Var2) : new gp4(obj, obj2, hp4Var, hp4Var2);
    }

    @Override // defpackage.hp4
    public final hp4 f(Object obj, Comparator comparator) {
        jp4 jp4VarG;
        int iCompare = comparator.compare(obj, this.a);
        hp4 hp4Var = this.c;
        if (iCompare < 0) {
            if (!hp4Var.isEmpty() && !this.c.n() && !((jp4) this.c).c.n()) {
                this = j();
            }
            jp4VarG = this.g(null, null, this.c.f(obj, comparator), null);
        } else {
            if (hp4Var.n()) {
                this = l();
            }
            hp4 hp4Var2 = this.d;
            if (!hp4Var2.isEmpty() && !hp4Var2.n() && !((jp4) hp4Var2).c.n()) {
                this = this.c();
                if (this.c.b().n()) {
                    this = this.l().c();
                }
            }
            hp4 hp4Var3 = this.d;
            if (comparator.compare(obj, this.a) == 0) {
                if (hp4Var3.isEmpty()) {
                    return sl4.b;
                }
                hp4 hp4VarS = hp4Var3.s();
                this = this.g(hp4VarS.getKey(), hp4VarS.getValue(), null, ((jp4) hp4Var3).k());
            }
            jp4VarG = this.g(null, null, null, this.d.f(obj, comparator));
        }
        return jp4VarG.h();
    }

    public abstract jp4 g(Object obj, Object obj2, hp4 hp4Var, hp4 hp4Var2);

    @Override // defpackage.hp4
    public final Object getKey() {
        return this.a;
    }

    @Override // defpackage.hp4
    public final Object getValue() {
        return this.b;
    }

    public final jp4 h() {
        hp4 hp4Var = this.d;
        if (hp4Var.n() && !this.c.n()) {
            this = (jp4) hp4Var.m(i(), m(1, null, ((jp4) hp4Var).c), null);
        }
        if (this.c.n() && ((jp4) this.c).c.n()) {
            this = this.l();
        }
        return (this.c.n() && this.d.n()) ? this.c() : this;
    }

    public abstract int i();

    @Override // defpackage.hp4
    public final boolean isEmpty() {
        return false;
    }

    public final jp4 j() {
        jp4 jp4VarC = c();
        hp4 hp4Var = jp4VarC.d;
        if (!hp4Var.b().n()) {
            return jp4VarC;
        }
        jp4 jp4VarG = jp4VarC.g(null, null, null, ((jp4) hp4Var).l());
        hp4 hp4Var2 = jp4VarG.d;
        return ((jp4) hp4Var2.m(jp4VarG.i(), jp4VarG.m(1, null, ((jp4) hp4Var2).c), null)).c();
    }

    public final hp4 k() {
        if (this.c.isEmpty()) {
            return sl4.b;
        }
        if (!this.c.n() && !this.c.b().n()) {
            this = j();
        }
        return this.g(null, null, ((jp4) this.c).k(), null).h();
    }

    public final jp4 l() {
        return (jp4) this.c.m(i(), null, m(1, ((jp4) this.c).d, null));
    }

    public void o(jp4 jp4Var) {
        this.c = jp4Var;
    }

    @Override // defpackage.hp4
    public final hp4 r() {
        return this.d;
    }

    @Override // defpackage.hp4
    public final hp4 s() {
        return this.c.isEmpty() ? this : this.c.s();
    }

    @Override // defpackage.hp4
    public final hp4 t() {
        hp4 hp4Var = this.d;
        return hp4Var.isEmpty() ? this : hp4Var.t();
    }
}
