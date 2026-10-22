package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lb8 extends ws7 implements qt3 {
    public cs5[] a;
    public mb8 b;
    public g98 c;
    public int d;
    public int e;
    public int f;
    public int k;
    public final /* synthetic */ cs5[] n;
    public final /* synthetic */ mb8 p;
    public final /* synthetic */ g98 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lb8(cs5[] cs5VarArr, mb8 mb8Var, g98 g98Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.n = cs5VarArr;
        this.p = mb8Var;
        this.q = g98Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new lb8(this.n, this.p, this.q, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((lb8) create((e98) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0031  */
    /* JADX WARN: Code duplicated, block: B:13:0x003b  */
    /* JADX WARN: Code duplicated, block: B:15:0x003f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0041  */
    /* JADX WARN: Code duplicated, block: B:19:0x0056  */
    /* JADX WARN: Code duplicated, block: B:21:0x0059  */
    /* JADX WARN: Code duplicated, block: B:23:0x005d  */
    /* JADX WARN: Code duplicated, block: B:26:0x0072  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0072 -> B:27:0x0073). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // defpackage.ml0
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            int r0 = r11.k
            r1 = 0
            r2 = 2
            r3 = 1
            if (r0 == 0) goto L21
            if (r0 == r3) goto Lb
            if (r0 != r2) goto L1b
        Lb:
            int r0 = r11.f
            int r4 = r11.e
            int r5 = r11.d
            g98 r6 = r11.c
            mb8 r7 = r11.b
            cs5[] r8 = r11.a
            defpackage.lg7.H(r12)
            goto L57
        L1b:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.l0.e(r11)
            return r1
        L21:
            defpackage.lg7.H(r12)
            cs5[] r12 = r11.n
            int r0 = r12.length
            r4 = 0
            mb8 r5 = r11.p
            g98 r6 = r11.q
            r8 = r12
            r12 = r4
            r7 = r5
        L2f:
            if (r4 >= r0) goto L75
            r5 = r8[r4]
            int r9 = r12 + 1
            int r5 = r5.ordinal()
            if (r5 == 0) goto L72
            yx1 r10 = defpackage.yx1.a
            if (r5 == r3) goto L5d
            if (r5 != r2) goto L59
            r11.a = r8
            r11.b = r7
            r11.c = r6
            r11.d = r9
            r11.e = r4
            r11.f = r0
            r11.k = r2
            java.lang.Object r12 = defpackage.mb8.d(r7, r6, r12, r11)
            if (r12 != r10) goto L56
            goto L71
        L56:
            r5 = r9
        L57:
            r12 = r5
            goto L73
        L59:
            defpackage.q.j()
            return r1
        L5d:
            r11.a = r8
            r11.b = r7
            r11.c = r6
            r11.d = r9
            r11.e = r4
            r11.f = r0
            r11.k = r3
            java.lang.Object r12 = defpackage.mb8.c(r7, r6, r12, r11)
            if (r12 != r10) goto L56
        L71:
            return r10
        L72:
            r12 = r9
        L73:
            int r4 = r4 + r3
            goto L2f
        L75:
            be8 r11 = defpackage.be8.a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lb8.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
