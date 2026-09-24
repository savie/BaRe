package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class u41 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public int b;
    public Object c;
    public final /* synthetic */ Object d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u41(Object obj, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.d = obj;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        switch (this.a) {
            case 0:
                u41 u41Var = new u41((c77) this.d, jv1Var, 0);
                u41Var.c = obj;
                return u41Var;
            default:
                return new u41((kc) this.d, jv1Var, 1);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        xx1 xx1Var = (xx1) obj;
        jv1 jv1Var = (jv1) obj2;
        switch (i) {
            case 0:
                break;
        }
        return ((u41) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x005e A[PHI: r0 r9
      0x005e: PHI (r0v5 fc2) = (r0v7 fc2), (r0v9 fc2) binds: [B:15:0x005b, B:11:0x0023] A[DONT_GENERATE, DONT_INLINE]
      0x005e: PHI (r9v9 java.lang.Object) = (r9v17 java.lang.Object), (r9v0 java.lang.Object) binds: [B:15:0x005b, B:11:0x0023] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0066, code lost:
    
        if (r0.invoke(r9, r8) == r3) goto L19;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0066 -> B:20:0x006a). Please report as a decompilation issue!!! */
    @Override // defpackage.ml0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) throws java.lang.Throwable {
        /*
            r8 = this;
            int r0 = r8.a
            be8 r1 = defpackage.be8.a
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            yx1 r3 = defpackage.yx1.a
            java.lang.Object r4 = r8.d
            r5 = 1
            r6 = 0
            switch(r0) {
                case 0: goto L80;
                default: goto Lf;
            }
        Lf:
            kc r4 = (defpackage.kc) r4
            int r0 = r8.b
            r7 = 2
            if (r0 == 0) goto L2b
            if (r0 == r5) goto L23
            if (r0 != r7) goto L1e
            defpackage.lg7.H(r9)
            goto L6a
        L1e:
            defpackage.l0.e(r2)
        L21:
            r1 = r6
            goto L7f
        L23:
            java.lang.Object r0 = r8.c
            fc2 r0 = (defpackage.fc2) r0
            defpackage.lg7.H(r9)
            goto L5e
        L2b:
            defpackage.lg7.H(r9)
            java.lang.Object r9 = r4.e
            tr9 r9 = (defpackage.tr9) r9
            java.lang.Object r9 = r9.b
            java.util.concurrent.atomic.AtomicInteger r9 = (java.util.concurrent.atomic.AtomicInteger) r9
            int r9 = r9.get()
            if (r9 <= 0) goto L79
        L3c:
            java.lang.Object r9 = r4.b
            xx1 r9 = (defpackage.xx1) r9
            ox1 r9 = r9.d()
            defpackage.sz8.p(r9)
            java.lang.Object r9 = r4.c
            r0 = r9
            fc2 r0 = (defpackage.fc2) r0
            java.lang.Object r9 = r4.d
            uw0 r9 = (defpackage.uw0) r9
            r8.c = r0
            r8.b = r5
            r9.getClass()
            java.lang.Object r9 = defpackage.uw0.B(r9, r8)
            if (r9 != r3) goto L5e
            goto L68
        L5e:
            r8.c = r6
            r8.b = r7
            java.lang.Object r9 = r0.invoke(r9, r8)
            if (r9 != r3) goto L6a
        L68:
            r1 = r3
            goto L7f
        L6a:
            java.lang.Object r9 = r4.e
            tr9 r9 = (defpackage.tr9) r9
            java.lang.Object r9 = r9.b
            java.util.concurrent.atomic.AtomicInteger r9 = (java.util.concurrent.atomic.AtomicInteger) r9
            int r9 = r9.decrementAndGet()
            if (r9 != 0) goto L3c
            goto L7f
        L79:
            java.lang.String r8 = "Check failed."
            defpackage.l0.e(r8)
            goto L21
        L7f:
            return r1
        L80:
            java.lang.Object r0 = r8.c
            xx1 r0 = (defpackage.xx1) r0
            int r0 = r8.b
            if (r0 == 0) goto L95
            if (r0 != r5) goto L90
            defpackage.lg7.H(r9)     // Catch: java.lang.Throwable -> L8e
            goto La5
        L8e:
            r8 = move-exception
            goto La7
        L90:
            defpackage.l0.e(r2)
            r3 = r6
            goto Lbf
        L95:
            defpackage.lg7.H(r9)
            c77 r4 = (defpackage.c77) r4
            r8.c = r6     // Catch: java.lang.Throwable -> L8e
            r8.b = r5     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r8 = r4.c(r8, r1)     // Catch: java.lang.Throwable -> L8e
            if (r8 != r3) goto La5
            goto Lbf
        La5:
            r9 = r1
            goto Lac
        La7:
            bn6 r9 = new bn6
            r9.<init>(r8)
        Lac:
            boolean r8 = r9 instanceof defpackage.bn6
            if (r8 != 0) goto Lb1
            goto Lba
        Lb1:
            java.lang.Throwable r8 = defpackage.en6.a(r9)
            q41 r1 = new q41
            r1.<init>(r8)
        Lba:
            s41 r3 = new s41
            r3.<init>(r1)
        Lbf:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.u41.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
