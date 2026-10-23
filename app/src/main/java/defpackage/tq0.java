package defpackage;

import android.content.Context;
import java.util.List;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.common.V;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class tq0 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ p56 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tq0(p56 p56Var, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = p56Var;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new tq0(this.b, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((tq0) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        wb6 wb6VarA;
        int i = this.a;
        if (i == 0) {
            lg7.H(obj);
            wq0 wq0Var = wq0.a;
            wq0.e("restorePurchases", "Restore purchase action initiated");
            wq0.c.k(pq0.a);
            V.INSTANCE.setV(0L);
            List listC = wq0.c();
            if (listC != null && !listC.isEmpty()) {
                if ((cf3.c(re3.k().d("transactions").d("premium"), wb6.Companion.m78default()) instanceof ze3) && (wb6VarA = wq0.a(listC)) != null) {
                    wq0.g(wb6VarA, null);
                }
            }
            if (listC == null || listC.isEmpty()) {
                wq0.e("restorePurchases", "No purchases found");
                SwiftApp.Companion companion = SwiftApp.d;
                Context contextC = SwiftApp.Companion.c();
                String strG = dj7.g(R.string.no_purchases_found);
                zn4 zn4Var = zn4.a;
                dj7.y(contextC, strG);
                this.b.d();
            } else {
                this.a = 1;
                Object objJ = yc9.j(4000L, this);
                yx1 yx1Var = yx1.a;
                if (objJ == yx1Var) {
                    return yx1Var;
                }
            }
            return be8.a;
        }
        if (i != 1) {
            l0.e("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        lg7.H(obj);
        Const.E("BillingManager: Restore purchase");
        return be8.a;
    }
}
