package defpackage;

import java.util.List;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.slog.SLogActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xr6 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ List b;
    public final /* synthetic */ SLogActivity c;
    public final /* synthetic */ d7 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xr6(List list, SLogActivity sLogActivity, d7 d7Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = list;
        this.c = sLogActivity;
        this.d = d7Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new xr6(this.b, this.c, this.d, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((xr6) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            String strB = dt7.b(Const.n(), this.b);
            zn4 zn4Var = zn4.a;
            gn3 gn3Var = new gn3(2, this.c, this.d, strB);
            this.a = 1;
            Object objG = zn4.g(gn3Var, this);
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
