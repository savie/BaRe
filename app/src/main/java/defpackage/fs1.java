package defpackage;

import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fs1 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ fs1(qt3 qt3Var, Object obj, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.c = qt3Var;
        this.d = obj;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.d;
        switch (i) {
            case 0:
                return new fs1((qt3) this.c, (lh6) obj2, jv1Var, 0);
            case 1:
                return new fs1((qt3) this.c, (ga2) obj2, jv1Var, 1);
            default:
                fs1 fs1Var = new fs1((gh4) obj2, jv1Var);
                fs1Var.c = obj;
                return fs1Var;
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                return ((fs1) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
            case 1:
                return ((fs1) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
            default:
                return ((fs1) create((ij5) obj, (jv1) obj2)).invokeSuspend(be8Var);
        }
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        Object obj2 = this.d;
        yx1 yx1Var = yx1.a;
        switch (i) {
            case 0:
                int i2 = this.b;
                if (i2 != 0) {
                    if (i2 == 1) {
                        lg7.H(obj);
                        return obj;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                qt3 qt3Var = (qt3) this.c;
                Object obj3 = ((lh6) obj2).a;
                this.b = 1;
                Object objInvoke = qt3Var.invoke(obj3, this);
                return objInvoke == yx1Var ? yx1Var : objInvoke;
            case 1:
                int i3 = this.b;
                if (i3 != 0) {
                    if (i3 == 1) {
                        lg7.H(obj);
                        return obj;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                qt3 qt3Var2 = (qt3) this.c;
                Object obj4 = ((ga2) obj2).b;
                this.b = 1;
                Object objInvoke2 = qt3Var2.invoke(obj4, this);
                return objInvoke2 == yx1Var ? yx1Var : objInvoke2;
            default:
                int i4 = this.b;
                if (i4 != 0) {
                    if (i4 != 1) {
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ij5 ij5Var = (ij5) this.c;
                    lg7.H(obj);
                    return ij5Var;
                }
                lg7.H(obj);
                ij5 ij5Var2 = new ij5(new LinkedHashMap(((ij5) this.c).a()), false);
                this.c = ij5Var2;
                this.b = 1;
                ((gh4) obj2).invoke(ij5Var2, this);
                return be8.a == yx1Var ? yx1Var : ij5Var2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fs1(gh4 gh4Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.a = 2;
        this.d = gh4Var;
    }
}
