package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yi3 implements li3 {
    public final /* synthetic */ wm a;
    public final /* synthetic */ li3 b;

    public yi3(wm wmVar, li3 li3Var) {
        this.a = wmVar;
        this.b = li3Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0064, code lost:
    
        if (r7.b.c(r8, r0) == r5) goto L23;
     */
    @Override // defpackage.li3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(java.lang.Object r8, defpackage.jv1 r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof defpackage.xi3
            if (r0 == 0) goto L13
            r0 = r9
            xi3 r0 = (defpackage.xi3) r0
            int r1 = r0.b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.b = r1
            goto L18
        L13:
            xi3 r0 = new xi3
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.a
            int r1 = r0.b
            r2 = 2
            r3 = 1
            r4 = 0
            yx1 r5 = defpackage.yx1.a
            if (r1 == 0) goto L3d
            if (r1 == r3) goto L31
            if (r1 != r2) goto L2b
            defpackage.lg7.H(r9)
            goto L67
        L2b:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r7)
            return r4
        L31:
            int r8 = r0.e
            java.lang.Object r1 = r0.d
            defpackage.lg7.H(r9)
            r6 = r9
            r9 = r8
            r8 = r1
            r1 = r6
            goto L50
        L3d:
            defpackage.lg7.H(r9)
            r0.d = r8
            r9 = 0
            r0.e = r9
            r0.b = r3
            wm r1 = r7.a
            java.lang.Object r1 = r1.invoke(r8, r0)
            if (r1 != r5) goto L50
            goto L66
        L50:
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L6a
            r0.d = r4
            r0.e = r9
            r0.b = r2
            li3 r7 = r7.b
            java.lang.Object r7 = r7.c(r8, r0)
            if (r7 != r5) goto L67
        L66:
            return r5
        L67:
            be8 r7 = defpackage.be8.a
            return r7
        L6a:
            u2 r8 = new u2
            r8.<init>(r7)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.yi3.c(java.lang.Object, jv1):java.lang.Object");
    }
}
