package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yn4 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ long b;
    public final /* synthetic */ bt3 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yn4(long j, bt3 bt3Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = j;
        this.c = bt3Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new yn4(this.b, this.c, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((yn4) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0033, code lost:
    
        if (defpackage.zn4.g(r6.c, r6) == r3) goto L15;
     */
    @Override // defpackage.ml0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            int r0 = r6.a
            r1 = 2
            r2 = 1
            yx1 r3 = defpackage.yx1.a
            if (r0 == 0) goto L1b
            if (r0 == r2) goto L17
            if (r0 != r1) goto L10
            defpackage.lg7.H(r7)
            goto L36
        L10:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r6)
            r6 = 0
            return r6
        L17:
            defpackage.lg7.H(r7)
            goto L29
        L1b:
            defpackage.lg7.H(r7)
            r6.a = r2
            long r4 = r6.b
            java.lang.Object r7 = defpackage.yc9.j(r4, r6)
            if (r7 != r3) goto L29
            goto L35
        L29:
            zn4 r7 = defpackage.zn4.a
            r6.a = r1
            bt3 r7 = r6.c
            java.lang.Object r6 = defpackage.zn4.g(r7, r6)
            if (r6 != r3) goto L36
        L35:
            return r3
        L36:
            be8 r6 = defpackage.be8.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.yn4.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
