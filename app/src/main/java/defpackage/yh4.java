package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yh4 extends an6 implements qt3 {
    public wn5 b;
    public h61 c;
    public int d;
    public int e;
    public int f;
    public /* synthetic */ Object k;
    public final /* synthetic */ ci4 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yh4(jv1 jv1Var, ci4 ci4Var) {
        super(2, jv1Var);
        this.n = ci4Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        yh4 yh4Var = new yh4(jv1Var, this.n);
        yh4Var.k = obj;
        return yh4Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((yh4) create((g77) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005f  */
    /* JADX WARN: Code duplicated, block: B:23:0x0063  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0061 -> B:25:0x0077). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.ml0
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.k
            g77 r0 = (defpackage.g77) r0
            int r1 = r7.f
            r2 = 2
            r3 = 1
            r4 = 0
            yx1 r5 = defpackage.yx1.a
            if (r1 == 0) goto L27
            if (r1 == r3) goto L23
            if (r1 != r2) goto L1d
            int r1 = r7.e
            int r3 = r7.d
            h61 r4 = r7.c
            wn5 r6 = r7.b
            defpackage.lg7.H(r8)
            goto L77
        L1d:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r7)
            return r4
        L23:
            defpackage.lg7.H(r8)
            goto L7c
        L27:
            defpackage.lg7.H(r8)
            ci4 r8 = r7.n
            java.lang.Object r8 = r8.z()
            boolean r1 = r8 instanceof defpackage.h61
            if (r1 == 0) goto L40
            h61 r8 = (defpackage.h61) r8
            k61 r8 = r8.n
            r7.k = r4
            r7.f = r3
            r0.d(r8, r7)
            return r5
        L40:
            boolean r1 = r8 instanceof defpackage.fb4
            if (r1 == 0) goto L7c
            fb4 r8 = (defpackage.fb4) r8
            wn5 r8 = r8.b()
            if (r8 == 0) goto L7c
            java.lang.Object r1 = r8.i()
            r1.getClass()
            v05 r1 = (defpackage.v05) r1
            r3 = 0
            r6 = r8
            r4 = r1
            r1 = r3
        L59:
            boolean r8 = r4.equals(r6)
            if (r8 != 0) goto L7c
            boolean r8 = r4 instanceof defpackage.h61
            if (r8 == 0) goto L77
            h61 r4 = (defpackage.h61) r4
            k61 r8 = r4.n
            r7.k = r0
            r7.b = r6
            r7.c = r4
            r7.d = r3
            r7.e = r1
            r7.f = r2
            r0.d(r8, r7)
            return r5
        L77:
            v05 r4 = r4.j()
            goto L59
        L7c:
            be8 r7 = defpackage.be8.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.yh4.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
