package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yp7 extends n50 {
    public static final yp7 f;
    public final em4 e;

    static {
        lc8.c.getClass();
        jc8 jc8Var = lc8.d;
        if (!jc8Var.f() || lc8.a(String.class) == null) {
            new yg7(String.class, jc8Var, null, null);
        }
        f = new yp7();
    }

    public yp7() {
        super(String[].class);
        this.e = null;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x001a  */
    @Override // defpackage.n50, defpackage.iv1
    public final em4 a(c87 c87Var, kp0 kp0Var) {
        em4 em4VarE;
        Object objC;
        if (kp0Var != null) {
            as5 as5VarD = c87Var.a.d();
            od odVarA = kp0Var.a();
            if (odVarA == null || (objC = as5VarD.c(odVarA)) == null) {
                em4VarE = null;
            } else {
                em4VarE = c87Var.E(odVarA, objC);
            }
        } else {
            em4VarE = null;
        }
        bk4 bk4VarK = tn7.k(c87Var, kp0Var, String[].class);
        Boolean boolA = bk4VarK != null ? bk4VarK.a(yj4.a) : null;
        em4 em4Var = this.e;
        if (em4VarE == null) {
            em4VarE = em4Var;
        }
        em4 em4VarJ = tn7.j(c87Var, kp0Var, em4VarE);
        if (em4VarJ == null) {
            em4VarJ = c87Var.j(String.class, kp0Var);
        }
        em4 em4Var2 = u81.q(em4VarJ) ? null : em4VarJ;
        return (em4Var2 == em4Var && Objects.equals(boolA, this.d)) ? this : new yp7(this, kp0Var, em4Var2, boolA);
    }

    @Override // defpackage.em4
    public final boolean c(c87 c87Var, Object obj) {
        return ((String[]) obj).length == 0;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
    
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
            java.lang.String[] r4 = (java.lang.String[]) r4
            int r0 = r4.length
            r1 = 1
            if (r0 != r1) goto L1c
            java.lang.Boolean r0 = r3.d
            if (r0 != 0) goto L14
            x77 r1 = defpackage.x77.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            v77 r2 = r6.a
            boolean r1 = r2.l(r1)
            if (r1 != 0) goto L18
        L14:
            java.lang.Boolean r1 = java.lang.Boolean.TRUE
            if (r0 != r1) goto L1c
        L18:
            r3.r(r4, r5, r6)
            return
        L1c:
            r5.U(r4)
            r3.r(r4, r5, r6)
            r5.n()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.yp7.e(java.lang.Object, fk4, c87):void");
    }

    @Override // defpackage.n50
    public final em4 q(kp0 kp0Var, Boolean bool) {
        return new yp7(this, kp0Var, this.e, bool);
    }

    @Override // defpackage.n50
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final void r(String[] strArr, fk4 fk4Var, c87 c87Var) {
        int length = strArr.length;
        if (length == 0) {
            return;
        }
        int i = 0;
        em4 em4Var = this.e;
        if (em4Var == null) {
            while (i < length) {
                String str = strArr[i];
                if (str == null) {
                    fk4Var.v();
                } else {
                    fk4Var.b0(str);
                }
                i++;
            }
            return;
        }
        int length2 = strArr.length;
        while (i < length2) {
            String str2 = strArr[i];
            if (str2 == null) {
                c87Var.h(fk4Var);
            } else {
                em4Var.e(str2, fk4Var, c87Var);
            }
            i++;
        }
    }

    public yp7(yp7 yp7Var, kp0 kp0Var, em4 em4Var, Boolean bool) {
        super(yp7Var, kp0Var, bool);
        this.e = em4Var;
    }

    @Override // defpackage.fu1
    public final fu1 o(rc8 rc8Var) {
        return this;
    }
}
