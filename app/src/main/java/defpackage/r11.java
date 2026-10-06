package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class r11 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r11(Object obj, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                return new r11((s11) obj2, jv1Var, 0);
            default:
                return new r11((bt3) obj2, jv1Var, 1);
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
                ((r11) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            default:
                ((r11) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
        }
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                lg7.H(obj);
                ArrayList arrayListF = d01.f();
                ((s11) obj2).f.k(arrayListF.isEmpty() ? p11.a : new o11(arrayListF));
                break;
            default:
                lg7.H(obj);
                ((bt3) obj2).invoke();
                break;
        }
        return be8Var;
    }
}
