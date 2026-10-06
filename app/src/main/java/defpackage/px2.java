package defpackage;

import java.util.EnumSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class px2 extends y50 {
    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        return ((EnumSet) obj).isEmpty();
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
    
        if (r0 == java.lang.Boolean.TRUE) goto L10;
     */
    @Override // defpackage.em4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(java.lang.Object r4, defpackage.fk4 r5, defpackage.c87 r6) {
        /*
            r3 = this;
            java.util.EnumSet r4 = (java.util.EnumSet) r4
            int r0 = r4.size()
            r1 = 1
            if (r0 != r1) goto L1f
            java.lang.Boolean r0 = r3.f
            if (r0 != 0) goto L17
            x77 r1 = defpackage.x77.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            v77 r2 = r6.a
            boolean r1 = r2.l(r1)
            if (r1 != 0) goto L1b
        L17:
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            if (r0 != r1) goto L1f
        L1b:
            r3.q(r4, r5, r6)
            return
        L1f:
            r5.U(r4)
            r3.q(r4, r5, r6)
            r5.n()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.px2.e(java.lang.Object, fk4, c87):void");
    }

    @Override // defpackage.y50
    public final y50 r(kp0 kp0Var, rc8 rc8Var, em4 em4Var, Boolean bool) {
        return new px2(this, kp0Var, rc8Var, em4Var, bool);
    }

    @Override // defpackage.y50
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final void q(EnumSet enumSet, fk4 fk4Var, c87 c87Var) {
        fk4Var.g(enumSet);
        Iterator it = enumSet.iterator();
        em4 em4VarJ = this.n;
        while (it.hasNext()) {
            Enum r1 = (Enum) it.next();
            if (em4VarJ == null) {
                em4VarJ = c87Var.j(r1.getDeclaringClass(), this.d);
            }
            em4VarJ.e(r1, fk4Var, c87Var);
        }
    }

    @Override // defpackage.fu1
    public final fu1 o(rc8 rc8Var) {
        return this;
    }
}
