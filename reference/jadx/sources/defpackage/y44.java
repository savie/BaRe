package defpackage;

import java.util.ArrayList;
import org.swiftapps.swiftbackup.home.search.HomeSearchActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class y44 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ zc6 b;
    public final /* synthetic */ HomeSearchActivity c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y44(zc6 zc6Var, HomeSearchActivity homeSearchActivity, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = zc6Var;
        this.c = homeSearchActivity;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new y44(this.b, this.c, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((y44) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            zc6 zc6Var = this.b;
            ArrayList arrayListK = w13.k(zc6Var);
            lk3 lk3VarF = w13.f(zc6Var, arrayListK.size());
            zn4 zn4Var = zn4.a;
            kk2 kk2Var = new kk2(this.c, arrayListK, zc6Var, lk3VarF, 1);
            this.a = 1;
            Object objG = zn4.g(kk2Var, this);
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
