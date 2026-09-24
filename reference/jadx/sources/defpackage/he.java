package defpackage;

import java.lang.reflect.Member;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class he extends mp0 {
    public final jp0 J;
    public final od K;
    public em4 L;
    public p65 M;

    public he(mp0 mp0Var, jp0 jp0Var, od odVar, em4 em4Var) {
        super(mp0Var);
        this.K = odVar;
        this.J = jp0Var;
        this.L = em4Var;
        if (em4Var instanceof p65) {
            this.M = (p65) em4Var;
        }
    }

    @Override // defpackage.mp0
    public final void h(v77 v77Var) {
        boolean zI = v77Var.i(u65.OVERRIDE_PUBLIC_ACCESS_MODIFIERS);
        Member memberR0 = this.K.r0();
        if (memberR0 != null) {
            u81.d(memberR0, zI);
        }
    }

    @Override // defpackage.mp0
    public final void k(Object obj, fk4 fk4Var, c87 c87Var) throws ag4 {
        od odVar = this.K;
        Object objS0 = odVar.s0(obj);
        if (objS0 == null) {
            return;
        }
        if (objS0 instanceof Map) {
            p65 p65Var = this.M;
            if (p65Var != null) {
                p65Var.s((Map) objS0, fk4Var, c87Var);
                return;
            } else {
                this.L.e(objS0, fk4Var, c87Var);
                return;
            }
        }
        this.J.getClass();
        c87Var.B("Value returned by 'any-getter' " + odVar.B() + "() not java.util.Map but " + objS0.getClass().getName());
        throw null;
    }
}
