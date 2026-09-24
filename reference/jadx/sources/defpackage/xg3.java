package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xg3 extends ws7 implements qt3 {
    public final /* synthetic */ int a = 1;
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xg3(yg3 yg3Var, j97 j97Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.c = yg3Var;
        this.d = j97Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.d;
        switch (i) {
            case 0:
                return new xg3((yg3) this.c, (j97) obj2, jv1Var);
            default:
                xg3 xg3Var = new xg3((mb8) obj2, jv1Var);
                xg3Var.c = obj;
                return xg3Var;
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                return ((xg3) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
            default:
                return ((xg3) create((e98) obj, (jv1) obj2)).invokeSuspend(be8Var);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0088, code lost:
    
        if (r6.b(r10) == r4) goto L35;
     */
    @Override // defpackage.ml0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xg3.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xg3(mb8 mb8Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.d = mb8Var;
    }
}
