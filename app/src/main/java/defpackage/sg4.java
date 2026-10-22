package defpackage;

import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sg4 extends y50 {
    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        return !((Iterator) obj).hasNext();
    }

    @Override // defpackage.em4
    public final void e(Object obj, fk4 fk4Var, c87 c87Var) throws ag4 {
        Iterator it = (Iterator) obj;
        fk4Var.S(it);
        q(it, fk4Var, c87Var);
        fk4Var.n();
    }

    @Override // defpackage.fu1
    public final fu1 o(rc8 rc8Var) {
        return new sg4(this, this.d, rc8Var, this.n, this.f);
    }

    @Override // defpackage.y50
    public final y50 r(kp0 kp0Var, rc8 rc8Var, em4 em4Var, Boolean bool) {
        return new sg4(this, kp0Var, rc8Var, em4Var, bool);
    }

    @Override // defpackage.y50
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final void q(Iterator it, fk4 fk4Var, c87 c87Var) throws ag4 {
        if (it.hasNext()) {
            rc8 rc8Var = this.k;
            em4 em4Var = this.n;
            if (em4Var != null) {
                do {
                    Object next = it.next();
                    if (next == null) {
                        c87Var.h(fk4Var);
                    } else if (rc8Var == null) {
                        em4Var.e(next, fk4Var, c87Var);
                    } else {
                        em4Var.f(next, fk4Var, c87Var, rc8Var);
                    }
                } while (it.hasNext());
                return;
            }
            od2 od2Var = this.p;
            do {
                Object next2 = it.next();
                if (next2 == null) {
                    c87Var.h(fk4Var);
                } else {
                    Class<?> cls = next2.getClass();
                    em4 em4VarX = od2Var.x(cls);
                    if (em4VarX == null) {
                        gc8 gc8Var = this.c;
                        if (gc8Var.u0()) {
                            em4VarX = p(od2Var, c87Var.e(gc8Var, cls), c87Var);
                        } else {
                            em4VarX = c87Var.j(cls, this.d);
                            od2 od2VarS = od2Var.s(cls, em4VarX);
                            if (od2Var != od2VarS) {
                                this.p = od2VarS;
                            }
                        }
                        od2Var = this.p;
                    }
                    if (rc8Var == null) {
                        em4VarX.e(next2, fk4Var, c87Var);
                    } else {
                        em4VarX.f(next2, fk4Var, c87Var, rc8Var);
                    }
                }
            } while (it.hasNext());
        }
    }
}
