package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class o41 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o41(qt3 qt3Var, b36 b36Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = 1;
        this.c = qt3Var;
        this.d = b36Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.d;
        switch (i) {
            case 0:
                o41 o41Var = new o41((p41) obj2, jv1Var, 0);
                o41Var.c = obj;
                return o41Var;
            case 1:
                return new o41((qt3) this.c, (b36) obj2, jv1Var);
            case 2:
                o41 o41Var2 = new o41((List) obj2, jv1Var, 2);
                o41Var2.c = obj;
                return o41Var2;
            default:
                o41 o41Var3 = new o41((mt3) obj2, jv1Var, 3);
                o41Var3.c = obj;
                return o41Var3;
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                return ((o41) create((li3) obj, (jv1) obj2)).invokeSuspend(be8Var);
            case 1:
                return ((o41) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
            case 2:
                return ((o41) create((ib2) obj, (jv1) obj2)).invokeSuspend(be8Var);
            default:
                return ((o41) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
        }
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj2 = this.d;
        yx1 yx1Var = yx1.a;
        switch (i) {
            case 0:
                li3 li3Var = (li3) this.c;
                int i2 = this.b;
                if (i2 != 0) {
                    if (i2 == 1) {
                        lg7.H(obj);
                        return be8Var;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                this.c = null;
                this.b = 1;
                Object objT = ((p41) obj2).d.t(li3Var, this);
                if (objT != yx1Var) {
                    objT = be8Var;
                }
                return objT == yx1Var ? yx1Var : be8Var;
            case 1:
                int i3 = this.b;
                if (i3 == 0) {
                    lg7.H(obj);
                    this.b = 1;
                    Object objInvoke = ((qt3) this.c).invoke((b36) obj2, this);
                    return objInvoke == yx1Var ? yx1Var : objInvoke;
                }
                if (i3 == 1) {
                    lg7.H(obj);
                    return obj;
                }
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            case 2:
                int i4 = this.b;
                if (i4 == 0) {
                    lg7.H(obj);
                    ib2 ib2Var = (ib2) this.c;
                    this.b = 1;
                    return zh8.a((List) obj2, ib2Var, this) == yx1Var ? yx1Var : be8Var;
                }
                if (i4 == 1) {
                    lg7.H(obj);
                    return be8Var;
                }
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            default:
                int i5 = this.b;
                if (i5 == 0) {
                    lg7.H(obj);
                    if (((xx1) this.c).d().get(c98.b) != null) {
                        this.b = 1;
                        Object objInvoke2 = ((mt3) obj2).invoke(this);
                        return objInvoke2 == yx1Var ? yx1Var : objInvoke2;
                    }
                    l0.e("Expected a TransactionElement in the CoroutineContext but none was found.");
                } else {
                    if (i5 == 1) {
                        lg7.H(obj);
                        return obj;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                }
                return null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ o41(Object obj, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.d = obj;
    }
}
