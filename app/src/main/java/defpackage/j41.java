package defpackage;

import java.io.File;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class j41 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public int b;
    public /* synthetic */ Object c;
    public Object d;
    public final /* synthetic */ Object e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j41(il0 il0Var, wa waVar, yf3 yf3Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = 1;
        this.c = il0Var;
        this.d = waVar;
        this.e = yf3Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.e;
        switch (i) {
            case 0:
                j41 j41Var = new j41((li3) this.d, (l41) obj2, jv1Var);
                j41Var.c = obj;
                return j41Var;
            case 1:
                return new j41((il0) this.c, (wa) this.d, (yf3) obj2, jv1Var);
            case 2:
                j41 j41Var2 = new j41((File) obj2, jv1Var, 2);
                j41Var2.c = obj;
                return j41Var2;
            default:
                j41 j41Var3 = new j41((mb8) obj2, jv1Var, 3);
                j41Var3.c = obj;
                return j41Var3;
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                return ((j41) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
            case 1:
                return ((j41) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
            case 2:
                return ((j41) create((r76) obj, (jv1) obj2)).invokeSuspend(be8Var);
            default:
                return ((j41) create((g98) obj, (jv1) obj2)).invokeSuspend(be8Var);
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006c  */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0182, code lost:
    
        if (defpackage.zv1.a(r3, r4, r20) == r0) goto L97;
     */
    @Override // defpackage.ml0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r21) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 840
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.j41.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j41(li3 li3Var, l41 l41Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = 0;
        this.d = li3Var;
        this.e = l41Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j41(Object obj, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.e = obj;
    }
}
