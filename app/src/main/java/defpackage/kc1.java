package defpackage;

import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kc1 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public int b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ kc1(Object obj, jv1 jv1Var, int i) {
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
                return new kc1((lc1) obj2, jv1Var, 0);
            case 1:
                return new kc1((ih4) obj2, jv1Var, 1);
            default:
                return new kc1((mt3) obj2, jv1Var, 2);
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
                break;
            case 1:
                break;
        }
        return ((kc1) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj2 = this.c;
        yx1 yx1Var = yx1.a;
        switch (i) {
            case 0:
                lc1 lc1Var = (lc1) obj2;
                int i2 = this.b;
                if (i2 == 0) {
                    lg7.H(obj);
                    lc1Var.h(R.string.processing);
                    this.b = 1;
                    if (yc9.j(1000L, this) == yx1Var) {
                        return yx1Var;
                    }
                } else {
                    if (i2 != 1) {
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    lg7.H(obj);
                }
                lc1Var.g.k(Boolean.TRUE);
                lc1Var.f();
                return be8Var;
            case 1:
                int i3 = this.b;
                if (i3 == 0) {
                    lg7.H(obj);
                    ji3 data = ((ih4) obj2).c.a.getData();
                    this.b = 1;
                    obj = xx3.e(data, this);
                    if (obj == yx1Var) {
                        return yx1Var;
                    }
                } else {
                    if (i3 != 1) {
                        l0.e("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    lg7.H(obj);
                }
                ij5 ij5Var = (ij5) obj;
                return ij5Var != null ? ij5Var.a() : pv2.a;
            default:
                int i4 = this.b;
                if (i4 != 0) {
                    if (i4 == 1) {
                        lg7.H(obj);
                        return be8Var;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                String str = ry5.u;
                ry5 ry5VarB = qy5.b(zn7.q.d());
                zn4 zn4Var = zn4.a;
                yq yqVar = new yq(7, (mt3) obj2, ry5VarB);
                this.b = 1;
                return zn4.g(yqVar, this) == yx1Var ? yx1Var : be8Var;
        }
    }
}
