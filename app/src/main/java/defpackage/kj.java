package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kj extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ ji b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ boolean e;
    public final /* synthetic */ k28 f;
    public final /* synthetic */ bt3 k;
    public final /* synthetic */ boolean n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public kj(ji jiVar, boolean z, boolean z2, boolean z3, k28 k28Var, bt3 bt3Var, boolean z4, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = jiVar;
        this.c = z;
        this.d = z2;
        this.e = z3;
        this.f = k28Var;
        this.k = bt3Var;
        this.n = z4;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new kj(this.b, this.c, this.d, this.e, this.f, this.k, this.n, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((kj) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            boolean z = this.c;
            ji jiVar = this.b;
            final ArrayList arrayListB = ni.b(jiVar, z);
            final ArrayList arrayListA = ni.a(jiVar, this.d, this.e);
            zn4 zn4Var = zn4.a;
            final k28 k28Var = this.f;
            final ji jiVar2 = this.b;
            final boolean z2 = this.c;
            final boolean z3 = this.d;
            final boolean z4 = this.e;
            final bt3 bt3Var = this.k;
            final boolean z5 = this.n;
            bt3 bt3Var2 = new bt3() { // from class: jj
                @Override // defpackage.bt3
                public final Object invoke() {
                    k28 k28Var2 = k28Var;
                    boolean zIsDestroyed = k28Var2.isDestroyed();
                    be8 be8Var = be8.a;
                    if (zIsDestroyed) {
                        return be8Var;
                    }
                    rj rjVar = new rj(k28Var2, jiVar2, arrayListB, arrayListA, z2, z3, z4, bt3Var);
                    if (z5) {
                        rjVar.F(k28Var2, false, false);
                        return be8Var;
                    }
                    rjVar.G(k28Var2, 48);
                    return be8Var;
                }
            };
            this.a = 1;
            Object objG = zn4.g(bt3Var2, this);
            yx1 yx1Var = yx1.a;
            if (objG == yx1Var) {
                return yx1Var;
            }
        } else {
            if (i != 1) {
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            lg7.H(obj);
        }
        return be8.a;
    }
}
