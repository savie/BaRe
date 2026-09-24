package defpackage;

import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nf8 extends mp0 {
    public final fk5 J;

    public nf8(mp0 mp0Var, fk5 fk5Var) {
        super(mp0Var, mp0Var.b);
        this.J = fk5Var;
    }

    @Override // defpackage.mp0
    public final em4 d(od2 od2Var, Class cls, c87 c87Var) {
        gc8 gc8Var = this.f;
        em4 em4VarP = gc8Var != null ? c87Var.p(c87Var.e(gc8Var, cls), this) : c87Var.q(cls, this);
        boolean zD = em4VarP.d();
        fk5 dk5Var = this.J;
        if (zD && (em4VarP instanceof of8)) {
            dk5Var = new dk5(dk5Var, ((of8) em4VarP).r);
        }
        em4 em4VarG = em4VarP.g(dk5Var);
        this.x = this.x.s(cls, em4VarG);
        return em4VarG;
    }

    @Override // defpackage.mp0
    public final void g(em4 em4Var) {
        if (em4Var != null) {
            boolean zD = em4Var.d();
            fk5 dk5Var = this.J;
            if (zD && (em4Var instanceof of8)) {
                dk5Var = new dk5(dk5Var, ((of8) em4Var).r);
            }
            em4Var = em4Var.g(dk5Var);
        }
        super.g(em4Var);
    }

    @Override // defpackage.mp0
    public final mp0 i(fk5 fk5Var) {
        return new nf8(this, new dk5(fk5Var, this.J), new z77(fk5Var.a(this.b.a)));
    }

    @Override // defpackage.mp0
    public final void k(Object obj, fk4 fk4Var, c87 c87Var) throws ag4 {
        Method method = this.n;
        Object objInvoke = method == null ? this.p.get(obj) : method.invoke(obj, null);
        if (objInvoke == null) {
            return;
        }
        em4 em4VarD = this.q;
        if (em4VarD == null) {
            Class<?> cls = objInvoke.getClass();
            od2 od2Var = this.x;
            em4 em4VarX = od2Var.x(cls);
            em4VarD = em4VarX == null ? d(od2Var, cls, c87Var) : em4VarX;
        }
        Object obj2 = this.G;
        if (obj2 != null) {
            if (pk4.c == obj2) {
                if (em4VarD.c(c87Var, objInvoke)) {
                    return;
                }
            } else if (obj2.equals(objInvoke)) {
                return;
            }
        }
        if (objInvoke == obj && e(obj, fk4Var, c87Var, em4VarD)) {
            return;
        }
        if (!em4VarD.d()) {
            fk4Var.r(this.b);
        }
        rc8 rc8Var = this.t;
        if (rc8Var == null) {
            em4VarD.e(objInvoke, fk4Var, c87Var);
        } else {
            em4VarD.f(objInvoke, fk4Var, c87Var, rc8Var);
        }
    }

    public nf8(nf8 nf8Var, dk5 dk5Var, z77 z77Var) {
        super(nf8Var, z77Var);
        this.J = dk5Var;
    }
}
