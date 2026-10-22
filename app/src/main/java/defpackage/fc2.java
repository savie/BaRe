package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fc2 extends ws7 implements qt3 {
    public final /* synthetic */ int a = 0;
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fc2(zc6 zc6Var, nd6 nd6Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.c = zc6Var;
        this.d = nd6Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.d;
        switch (i) {
            case 0:
                fc2 fc2Var = new fc2((ic2) obj2, jv1Var);
                fc2Var.c = obj;
                return fc2Var;
            default:
                return new fc2((zc6) this.c, (nd6) obj2, jv1Var);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                return ((fc2) create((fd5) obj, (jv1) obj2)).invokeSuspend(be8Var);
            default:
                return ((fc2) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
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
                int i2 = this.b;
                if (i2 == 0) {
                    lg7.H(obj);
                    fd5 fd5Var = (fd5) this.c;
                    this.b = 1;
                    return ic2.c((ic2) obj2, fd5Var, this) == yx1Var ? yx1Var : be8Var;
                }
                if (i2 == 1) {
                    lg7.H(obj);
                    return be8Var;
                }
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            default:
                zc6 zc6Var = (zc6) this.c;
                int i3 = this.b;
                if (i3 != 0) {
                    if (i3 == 1) {
                        lg7.H(obj);
                        return be8Var;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                ArrayList arrayListK = w13.k(zc6Var);
                lk3 lk3VarF = w13.f(zc6Var, arrayListK.size());
                zn4 zn4Var = zn4.a;
                ld6 ld6Var = new ld6((nd6) obj2, arrayListK, zc6Var, lk3VarF, 0);
                this.b = 1;
                return zn4.g(ld6Var, this) == yx1Var ? yx1Var : be8Var;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fc2(ic2 ic2Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.d = ic2Var;
    }
}
