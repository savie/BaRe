package defpackage;

import android.content.Context;
import java.util.List;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.slog.SLogActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yr6 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ List b;
    public final /* synthetic */ SLogActivity c;
    public final /* synthetic */ boolean d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yr6(List list, SLogActivity sLogActivity, boolean z, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = list;
        this.c = sLogActivity;
        this.d = z;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new yr6(this.b, this.c, this.d, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((yr6) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            String strN = Const.n();
            List list = this.b;
            String strB = dt7.b(strN, list);
            SLogActivity sLogActivity = this.c;
            Context applicationContext = sLogActivity.getApplicationContext();
            applicationContext.getClass();
            q63 q63VarA = dt7.a(applicationContext, this.d, list);
            zn4 zn4Var = zn4.a;
            ld6 ld6Var = new ld6(sLogActivity, q63VarA, strB, strN, 1);
            this.a = 1;
            Object objG = zn4.g(ld6Var, this);
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
