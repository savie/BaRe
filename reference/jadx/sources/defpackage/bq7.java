package defpackage;

import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bq7 extends tm7 {
    public static final bq7 d = new bq7(Collection.class);

    public static void p(Collection collection, fk4 fk4Var, c87 c87Var) throws IOException {
        int i = 0;
        try {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (str == null) {
                    c87Var.h(fk4Var);
                } else {
                    fk4Var.b0(str);
                }
                i++;
            }
        } catch (Exception e) {
            tn7.m(c87Var, e, collection, i);
            throw null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
    
        if (r2 == java.lang.Boolean.TRUE) goto L10;
     */
    @Override // defpackage.em4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(java.lang.Object r3, defpackage.fk4 r4, defpackage.c87 r5) throws java.io.IOException {
        /*
            r2 = this;
            java.util.Collection r3 = (java.util.Collection) r3
            int r0 = r3.size()
            r1 = 1
            if (r0 != r1) goto L1f
            java.lang.Boolean r2 = r2.c
            if (r2 != 0) goto L17
            x77 r0 = defpackage.x77.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            v77 r1 = r5.a
            boolean r0 = r1.l(r0)
            if (r0 != 0) goto L1b
        L17:
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            if (r2 != r0) goto L1f
        L1b:
            p(r3, r4, r5)
            return
        L1f:
            r4.U(r3)
            p(r3, r4, r5)
            r4.n()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bq7.e(java.lang.Object, fk4, c87):void");
    }

    @Override // defpackage.em4
    public final void f(Object obj, fk4 fk4Var, c87 c87Var, rc8 rc8Var) throws IOException {
        Collection collection = (Collection) obj;
        nw8 nw8VarE = rc8Var.e(fk4Var, rc8Var.d(collection, mm4.START_ARRAY));
        fk4Var.g(collection);
        p(collection, fk4Var, c87Var);
        rc8Var.f(fk4Var, nw8VarE);
    }

    @Override // defpackage.tm7
    public final em4 o(kp0 kp0Var, Boolean bool) {
        return new bq7(this, bool);
    }
}
