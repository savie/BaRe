package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class k41 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public int b;
    public Object c;
    public final /* synthetic */ Object d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k41(Object obj, Object obj2, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.d;
        switch (i) {
            case 0:
                k41 k41Var = new k41((l41) obj2, jv1Var, 0);
                k41Var.c = obj;
                return k41Var;
            case 1:
                return new k41((x54) this.c, (String) obj2, jv1Var, 1);
            case 2:
                k41 k41Var2 = new k41((qt3) obj2, jv1Var, 2);
                k41Var2.c = obj;
                return k41Var2;
            case 3:
                return new k41((kd7) this.c, (q87) obj2, jv1Var, 3);
            default:
                return new k41((iu8) obj2, jv1Var, 4);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                return ((k41) create((r76) obj, (jv1) obj2)).invokeSuspend(be8Var);
            case 1:
                return ((k41) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
            case 2:
                return ((k41) create((ij5) obj, (jv1) obj2)).invokeSuspend(be8Var);
            case 3:
                return ((k41) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
            default:
                return ((k41) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x006b  */
    /* JADX WARN: Code duplicated, block: B:21:0x0075  */
    /* JADX WARN: Code duplicated, block: B:22:0x007b  */
    /* JADX WARN: Code duplicated, block: B:23:0x0082  */
    /* JADX WARN: Code duplicated, block: B:25:0x0086  */
    /* JADX WARN: Code duplicated, block: B:27:0x008e  */
    /* JADX WARN: Code duplicated, block: B:28:0x0091  */
    /* JADX WARN: Code duplicated, block: B:30:0x009a  */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00cd, code lost:
    
        if (r11 == r3) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:?, code lost:
    
        return r3;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v24 */
    @Override // defpackage.ml0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            Method dump skipped, instruction units count: 446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.k41.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k41(Object obj, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.d = obj;
    }
}
