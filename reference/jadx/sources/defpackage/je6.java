package defpackage;

import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class je6 extends oa4 {
    public final hp4 a;
    public final Comparator b;

    public je6(hp4 hp4Var, Comparator comparator) {
        this.a = hp4Var;
        this.b = comparator;
    }

    @Override // defpackage.oa4
    public final boolean c(Object obj) {
        return p(obj) != null;
    }

    @Override // defpackage.oa4
    public final Object d(m61 m61Var) {
        hp4 hp4VarP = p(m61Var);
        if (hp4VarP != null) {
            return hp4VarP.getValue();
        }
        return null;
    }

    @Override // defpackage.oa4
    public final Comparator e() {
        return this.b;
    }

    @Override // defpackage.oa4
    public final Object f() {
        return this.a.t().getKey();
    }

    @Override // defpackage.oa4
    public final Object g() {
        return this.a.s().getKey();
    }

    @Override // defpackage.oa4
    public final Object i(Object obj) {
        hp4 hp4VarB = this.a;
        hp4 hp4Var = null;
        while (!hp4VarB.isEmpty()) {
            int iCompare = this.b.compare(obj, hp4VarB.getKey());
            if (iCompare == 0) {
                if (hp4VarB.b().isEmpty()) {
                    if (hp4Var != null) {
                        return hp4Var.getKey();
                    }
                    return null;
                }
                hp4 hp4VarB2 = hp4VarB.b();
                while (!hp4VarB2.r().isEmpty()) {
                    hp4VarB2 = hp4VarB2.r();
                }
                return hp4VarB2.getKey();
            }
            if (iCompare < 0) {
                hp4VarB = hp4VarB.b();
            } else {
                hp4Var = hp4VarB;
                hp4VarB = hp4VarB.r();
            }
        }
        g84.k(obj, "Couldn't find predecessor key of non-present key: ");
        return null;
    }

    @Override // defpackage.oa4
    public final boolean isEmpty() {
        return this.a.isEmpty();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new pa4(this.a, this.b, false);
    }

    @Override // defpackage.oa4
    public final void k(iz1 iz1Var) {
        this.a.a(iz1Var);
    }

    @Override // defpackage.oa4
    public final Iterator k0() {
        return new pa4(this.a, this.b, true);
    }

    @Override // defpackage.oa4
    public final oa4 l(Iterable iterable, Object obj) {
        hp4 hp4Var = this.a;
        Comparator comparator = this.b;
        return new je6(((jp4) hp4Var.d(obj, iterable, comparator)).m(2, null, null), comparator);
    }

    @Override // defpackage.oa4
    public final oa4 o(Object obj) {
        if (!c(obj)) {
            return this;
        }
        hp4 hp4Var = this.a;
        Comparator comparator = this.b;
        return new je6(hp4Var.f(obj, comparator).m(2, null, null), comparator);
    }

    public final hp4 p(Object obj) {
        hp4 hp4VarB = this.a;
        while (!hp4VarB.isEmpty()) {
            int iCompare = this.b.compare(obj, hp4VarB.getKey());
            if (iCompare < 0) {
                hp4VarB = hp4VarB.b();
            } else {
                if (iCompare == 0) {
                    return hp4VarB;
                }
                hp4VarB = hp4VarB.r();
            }
        }
        return null;
    }

    @Override // defpackage.oa4
    public final int size() {
        return this.a.size();
    }
}
