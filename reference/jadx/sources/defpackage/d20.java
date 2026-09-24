package defpackage;

import java.io.File;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.appslist.ui.listbatch.AppsBatchActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class d20 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ AppsBatchActivity b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d20(AppsBatchActivity appsBatchActivity, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = appsBatchActivity;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new d20(this.b, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((d20) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) throws Throwable {
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            AppsBatchActivity appsBatchActivity = this.b;
            l20 l20Var = appsBatchActivity.m0;
            if (l20Var == null) {
                pe4.F("mAdapter");
                throw null;
            }
            List listL = l20Var.l();
            appsBatchActivity.a0().h(R.string.processing);
            String strA = new ft(listL).a();
            File cacheDir = appsBatchActivity.getCacheDir();
            cacheDir.getClass();
            q63 q63Var = new q63(nc3.U(cacheDir, "apps_list"), "apps_list", 2);
            q63Var.h();
            q63 q63VarT = q63Var.t();
            if (q63VarT != null) {
                q63.E(q63VarT);
            }
            q63.K(q63Var, strA);
            if (!q63Var.j()) {
                g84.f(xs1.i(q63Var, "Failed creating apps list at "));
                return null;
            }
            appsBatchActivity.a0().f();
            zn4 zn4Var = zn4.a;
            y2 y2Var = new y2(2, appsBatchActivity, q63Var);
            this.a = 1;
            Object objG = zn4.g(y2Var, this);
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
