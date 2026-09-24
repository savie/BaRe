package defpackage;

import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tb4 extends tm7 {
    public static final tb4 d = new tb4(List.class);

    public static void p(List list, fk4 fk4Var, c87 c87Var, int i) throws IOException {
        for (int i2 = 0; i2 < i; i2++) {
            try {
                String str = (String) list.get(i2);
                if (str == null) {
                    c87Var.h(fk4Var);
                } else {
                    fk4Var.b0(str);
                }
            } catch (Exception e) {
                tn7.m(c87Var, e, list, i2);
                throw null;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
    
        if (r4 == java.lang.Boolean.TRUE) goto L10;
     */
    @Override // defpackage.em4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(java.lang.Object r5, defpackage.fk4 r6, defpackage.c87 r7) throws java.io.IOException {
        /*
            r4 = this;
            java.util.List r5 = (java.util.List) r5
            int r0 = r5.size()
            r1 = 1
            if (r0 != r1) goto L1f
            java.lang.Boolean r4 = r4.c
            if (r4 != 0) goto L17
            x77 r2 = defpackage.x77.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            v77 r3 = r7.a
            boolean r2 = r3.l(r2)
            if (r2 != 0) goto L1b
        L17:
            java.lang.Boolean r2 = java.lang.Boolean.TRUE
            if (r4 != r2) goto L1f
        L1b:
            p(r5, r6, r7, r1)
            return
        L1f:
            r6.U(r5)
            p(r5, r6, r7, r0)
            r6.n()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.tb4.e(java.lang.Object, fk4, c87):void");
    }

    @Override // defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) throws IOException {
        List list = (List) obj;
        nw8 nw8VarE = rc8Var.e(fk4Var, rc8Var.d(list, mm4.START_ARRAY));
        fk4Var.g(list);
        p(list, fk4Var, c87Var, list.size());
        rc8Var.f(fk4Var, nw8VarE);
    }

    @Override // defpackage.tm7
    public final em4 o(kp0 kp0Var, Boolean bool) {
        return new tb4(this, bool);
    }
}
