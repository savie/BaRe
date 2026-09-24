package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hc2 extends ws7 implements qt3 {
    public jh6 a;
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ jh6 d;
    public final /* synthetic */ ic2 e;
    public final /* synthetic */ Object f;
    public final /* synthetic */ boolean k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hc2(jh6 jh6Var, ic2 ic2Var, Object obj, boolean z, jv1 jv1Var) {
        super(2, jv1Var);
        this.d = jh6Var;
        this.e = ic2Var;
        this.f = obj;
        this.k = z;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        hc2 hc2Var = new hc2(this.d, this.e, this.f, this.k, jv1Var);
        hc2Var.c = obj;
        return hc2Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((hc2) create((ta3) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0054, code lost:
    
        if (r6.b(r2, r8) == r7) goto L16;
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
            r1 = 0
            java.lang.Object r2 = r8.f
            ic2 r3 = r8.e
            jh6 r4 = r8.d
            r5 = 2
            r6 = 1
            yx1 r7 = defpackage.yx1.a
            if (r0 == 0) goto L27
            if (r0 == r6) goto L1d
            if (r0 != r5) goto L17
            defpackage.lg7.H(r9)
            goto L57
        L17:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r8)
            return r1
        L1d:
            jh6 r0 = r8.a
            java.lang.Object r6 = r8.c
            ta3 r6 = (defpackage.ta3) r6
            defpackage.lg7.H(r9)
            goto L42
        L27:
            defpackage.lg7.H(r9)
            java.lang.Object r9 = r8.c
            ta3 r9 = (defpackage.ta3) r9
            sd4 r0 = r3.g()
            r8.c = r9
            r8.a = r4
            r8.b = r6
            java.lang.Object r0 = r0.c(r8)
            if (r0 != r7) goto L3f
            goto L56
        L3f:
            r6 = r9
            r9 = r0
            r0 = r4
        L42:
            java.lang.Number r9 = (java.lang.Number) r9
            int r9 = r9.intValue()
            r0.a = r9
            r8.c = r1
            r8.a = r1
            r8.b = r5
            java.lang.Object r9 = r6.b(r2, r8)
            if (r9 != r7) goto L57
        L56:
            return r7
        L57:
            boolean r8 = r8.k
            if (r8 == 0) goto L6f
            tr9 r8 = r3.h
            ga2 r9 = new ga2
            if (r2 == 0) goto L66
            int r0 = r2.hashCode()
            goto L67
        L66:
            r0 = 0
        L67:
            int r1 = r4.a
            r9.<init>(r2, r0, r1)
            r8.f(r9)
        L6f:
            be8 r8 = defpackage.be8.a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.hc2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
