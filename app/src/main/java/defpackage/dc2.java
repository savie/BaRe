package defpackage;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dc2 extends ws7 implements qt3 {
    public int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ ic2 c;
    public final /* synthetic */ qt3 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dc2(ic2 ic2Var, qt3 qt3Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.c = ic2Var;
        this.d = qt3Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        dc2 dc2Var = new dc2(this.c, this.d, jv1Var);
        dc2Var.b = obj;
        return dc2Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((dc2) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i = this.a;
        jv1 jv1Var = null;
        int i2 = 1;
        if (i != 0) {
            if (i == 1) {
                lg7.H(obj);
                return obj;
            }
            l0.e("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        lg7.H(obj);
        xx1 xx1Var = (xx1) this.b;
        bn1 bn1VarA = ly8.a();
        ic2 ic2Var = this.c;
        fd5 fd5Var = new fd5(this.d, bn1VarA, ic2Var.h.c(), xx1Var.d());
        kc kcVar = ic2Var.l;
        Object objF = ((uw0) kcVar.d).f(fd5Var);
        if (objF instanceof q41) {
            Throwable th = ((q41) objF).a;
            if (th == null) {
                throw new ma1("Channel was closed normally");
            }
            throw th;
        }
        if (objF instanceof r41) {
            l0.e("Check failed.");
            return null;
        }
        if (((AtomicInteger) ((tr9) kcVar.e).b).getAndIncrement() == 0) {
            l73.v((xx1) kcVar.b, null, new u41(kcVar, jv1Var, i2), 3);
        }
        this.a = 1;
        Object objK = bn1VarA.k(this);
        yx1 yx1Var = yx1.a;
        return objK == yx1Var ? yx1Var : objK;
    }
}
