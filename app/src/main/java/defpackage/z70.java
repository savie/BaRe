package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class z70 extends mp0 {
    public final String J;

    /* JADX WARN: Illegal instructions before constructor call */
    public z70(String str, eg7 eg7Var, ee eeVar, gc8 gc8Var) {
        pk4 pk4Var;
        Object obj;
        qk4 qk4Var = eg7Var.e;
        od odVar = eg7Var.b;
        pk4 pk4Var2 = pk4.e;
        pk4 pk4Var3 = pk4.a;
        boolean z = false;
        if (qk4Var != null && (pk4Var = qk4Var.a) != pk4Var3 && pk4Var != pk4Var2) {
            z = true;
        }
        boolean z2 = z;
        if (qk4Var == null) {
            obj = Boolean.FALSE;
        } else {
            pk4 pk4Var4 = qk4Var.a;
            obj = (pk4Var4 == pk4Var3 || pk4Var4 == pk4.b || pk4Var4 == pk4Var2) ? null : pk4.c;
        }
        super(eg7Var, odVar, eeVar, gc8Var, null, null, null, z2, obj, null);
        this.J = str;
    }

    @Override // defpackage.mp0
    public final void j(Object obj, fk4 fk4Var, c87 c87Var) throws ag4 {
        Object objR = c87Var.r(this.J);
        if (objR == null) {
            em4 em4Var = this.r;
            if (em4Var != null) {
                em4Var.e(null, fk4Var, c87Var);
                return;
            } else {
                fk4Var.v();
                return;
            }
        }
        em4 em4VarD = this.q;
        if (em4VarD == null) {
            Class<?> cls = objR.getClass();
            od2 od2Var = this.x;
            em4 em4VarX = od2Var.x(cls);
            em4VarD = em4VarX == null ? d(od2Var, cls, c87Var) : em4VarX;
        }
        Object obj2 = this.G;
        if (obj2 != null) {
            if (pk4.c == obj2) {
                if (em4VarD.c(c87Var, objR)) {
                    l(fk4Var, c87Var);
                    return;
                }
            } else if (obj2.equals(objR)) {
                l(fk4Var, c87Var);
                return;
            }
        }
        if (objR == obj && e(obj, fk4Var, c87Var, em4VarD)) {
            return;
        }
        rc8 rc8Var = this.t;
        if (rc8Var == null) {
            em4VarD.e(objR, fk4Var, c87Var);
        } else {
            em4VarD.f(objR, fk4Var, c87Var, rc8Var);
        }
    }

    @Override // defpackage.mp0
    public final void k(Object obj, fk4 fk4Var, c87 c87Var) throws ag4 {
        Object objR = c87Var.r(this.J);
        z77 z77Var = this.b;
        if (objR == null) {
            if (this.r != null) {
                fk4Var.r(z77Var);
                this.r.e(null, fk4Var, c87Var);
                return;
            }
            return;
        }
        em4 em4VarD = this.q;
        if (em4VarD == null) {
            Class<?> cls = objR.getClass();
            od2 od2Var = this.x;
            em4 em4VarX = od2Var.x(cls);
            em4VarD = em4VarX == null ? d(od2Var, cls, c87Var) : em4VarX;
        }
        Object obj2 = this.G;
        if (obj2 != null) {
            if (pk4.c == obj2) {
                if (em4VarD.c(c87Var, objR)) {
                    return;
                }
            } else if (obj2.equals(objR)) {
                return;
            }
        }
        if (objR == obj && e(obj, fk4Var, c87Var, em4VarD)) {
            return;
        }
        fk4Var.r(z77Var);
        rc8 rc8Var = this.t;
        if (rc8Var == null) {
            em4VarD.e(objR, fk4Var, c87Var);
        } else {
            em4VarD.f(objR, fk4Var, c87Var, rc8Var);
        }
    }
}
