package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class bc2 extends ws7 implements mt3 {
    public Serializable a;
    public int b;
    public final /* synthetic */ lh6 c;
    public final /* synthetic */ ic2 d;
    public final /* synthetic */ jh6 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bc2(lh6 lh6Var, ic2 ic2Var, jh6 jh6Var, jv1 jv1Var) {
        super(1, jv1Var);
        this.c = lh6Var;
        this.d = ic2Var;
        this.e = jh6Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(jv1 jv1Var) {
        return new bc2(this.c, this.d, this.e, jv1Var);
    }

    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        return ((bc2) create((jv1) obj)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0069, code lost:
    
        if (r9 == r7) goto L29;
     */
    @Override // defpackage.ml0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            int r0 = r8.b
            jh6 r1 = r8.e
            lh6 r2 = r8.c
            r3 = 3
            r4 = 2
            ic2 r5 = r8.d
            r6 = 1
            yx1 r7 = defpackage.yx1.a
            if (r0 == 0) goto L35
            if (r0 == r6) goto L2d
            if (r0 == r4) goto L25
            if (r0 != r3) goto L1e
            java.io.Serializable r8 = r8.a
            r1 = r8
            jh6 r1 = (defpackage.jh6) r1
            defpackage.lg7.H(r9)
            goto L6c
        L1e:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r8)
            r8 = 0
            return r8
        L25:
            java.io.Serializable r0 = r8.a
            jh6 r0 = (defpackage.jh6) r0
            defpackage.lg7.H(r9)     // Catch: defpackage.dy1 -> L5f
            goto L56
        L2d:
            java.io.Serializable r0 = r8.a
            lh6 r0 = (defpackage.lh6) r0
            defpackage.lg7.H(r9)     // Catch: defpackage.dy1 -> L5f
            goto L44
        L35:
            defpackage.lg7.H(r9)
            r8.a = r2     // Catch: defpackage.dy1 -> L5f
            r8.b = r6     // Catch: defpackage.dy1 -> L5f
            java.lang.Object r9 = r5.i(r8)     // Catch: defpackage.dy1 -> L5f
            if (r9 != r7) goto L43
            goto L6b
        L43:
            r0 = r2
        L44:
            r0.a = r9     // Catch: defpackage.dy1 -> L5f
            sd4 r9 = r5.g()     // Catch: defpackage.dy1 -> L5f
            r8.a = r1     // Catch: defpackage.dy1 -> L5f
            r8.b = r4     // Catch: defpackage.dy1 -> L5f
            java.lang.Object r9 = r9.b(r8)     // Catch: defpackage.dy1 -> L5f
            if (r9 != r7) goto L55
            goto L6b
        L55:
            r0 = r1
        L56:
            java.lang.Number r9 = (java.lang.Number) r9     // Catch: defpackage.dy1 -> L5f
            int r9 = r9.intValue()     // Catch: defpackage.dy1 -> L5f
            r0.a = r9     // Catch: defpackage.dy1 -> L5f
            goto L74
        L5f:
            java.lang.Object r9 = r2.a
            r8.a = r1
            r8.b = r3
            java.lang.Object r9 = r5.j(r9, r6, r8)
            if (r9 != r7) goto L6c
        L6b:
            return r7
        L6c:
            java.lang.Number r9 = (java.lang.Number) r9
            int r8 = r9.intValue()
            r1.a = r8
        L74:
            be8 r8 = defpackage.be8.a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bc2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
