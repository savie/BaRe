package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class z2 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ z2(Object obj, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                return new z2((a3) obj2, jv1Var, 0);
            case 1:
                return new z2((List) obj2, jv1Var, 1);
            default:
                return new z2((s11) obj2, jv1Var, 2);
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
                ((z2) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            case 1:
                ((z2) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            default:
                ((z2) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
        }
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        Object obj2 = this.b;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                lg7.H(obj);
                ArrayList arrayListA = c41.a();
                zn4 zn4Var = zn4.a;
                zn4.e(new y2(0, (a3) obj2, arrayListA));
                break;
            case 1:
                lg7.H(obj);
                for (q63 q63Var : (List) obj2) {
                    if (!q63Var.h()) {
                        Log.w("AppCloudCacheCleaner", "Unable to fully delete stale deferred cloud cache at ".concat(q63Var.v()));
                    }
                }
                break;
            default:
                lg7.H(obj);
                ex6 ex6Var = ((s11) obj2).g;
                SwiftApp.Companion companion = SwiftApp.d;
                if (ai8.i(SwiftApp.Companion.c())) {
                    tb1 tb1Var = tb1.a;
                    if (qb1.m()) {
                        ex6Var.k(l11.a);
                        ArrayList arrayListE = d01.e();
                        ex6Var.k(arrayListE.isEmpty() ? k11.a : new i11(arrayListE));
                        if (arrayListE.isEmpty()) {
                            re3.d().i(null);
                        } else {
                            re3.d().i(new Integer(arrayListE.size()));
                        }
                    } else {
                        ex6Var.k(j11.a);
                    }
                } else {
                    ex6Var.k(m11.a);
                }
                break;
        }
        return be8Var;
    }
}
