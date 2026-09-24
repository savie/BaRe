package defpackage;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class lb2 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public int b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ lb2(Object obj, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.c = obj;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return new lb2((ic2) obj2, jv1Var, 0);
            case 1:
                return new lb2((kg4) obj2, jv1Var, 1);
            case 2:
                return new lb2((ka7) obj2, jv1Var, 2);
            default:
                return new lb2((pp8) obj2, jv1Var, 3);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                return ((lb2) create((li3) obj, (jv1) obj2)).invokeSuspend(be8Var);
            case 1:
                return ((lb2) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
            case 2:
                return ((lb2) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
            default:
                return ((lb2) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
        }
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        yx1 yx1Var = yx1.a;
        Object obj2 = this.c;
        jv1 jv1Var = null;
        switch (i) {
            case 0:
                int i2 = this.b;
                if (i2 == 0) {
                    lg7.H(obj);
                    this.b = 1;
                    return ic2.d((ic2) obj2, this) == yx1Var ? yx1Var : be8Var;
                }
                if (i2 == 1) {
                    lg7.H(obj);
                    return be8Var;
                }
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            case 1:
                int i3 = this.b;
                if (i3 == 0) {
                    lg7.H(obj);
                    mb8 mb8Var = ((kg4) obj2).b;
                    this.b = 1;
                    return mb8Var.e(this) == yx1Var ? yx1Var : be8Var;
                }
                if (i3 == 1) {
                    lg7.H(obj);
                    return be8Var;
                }
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            case 2:
                int i4 = this.b;
                if (i4 != 0) {
                    if (i4 == 1) {
                        lg7.H(obj);
                        return obj;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                ji3 data = ((ka7) obj2).b.getData();
                this.b = 1;
                Object objD = xx3.d(data, this);
                return objD == yx1Var ? yx1Var : objD;
            default:
                pp8 pp8Var = (pp8) obj2;
                uv7 uv7Var = pp8Var.h;
                int i5 = this.b;
                if (i5 == 0) {
                    lg7.H(obj);
                    pp8Var.r.k(wo8.a);
                    this.b = 1;
                    if (yc9.j(1000L, this) == yx1Var) {
                        return yx1Var;
                    }
                } else {
                    if (i5 != 1) {
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    lg7.H(obj);
                }
                op8 op8Var = pp8Var.k;
                if (op8Var != null) {
                    uv7Var.getClass();
                    uv7.b.remove(op8Var);
                }
                op8 op8Var2 = new op8(pp8Var);
                pp8Var.k = op8Var2;
                uv7Var.getClass();
                zn4 zn4Var = zn4.a;
                zn4.b(null, new mg1(op8Var2, jv1Var, 5));
                return be8Var;
        }
    }
}
