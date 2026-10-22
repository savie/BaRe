package defpackage;

import java.util.ArrayList;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.tasks.TaskService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qj extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ qj(Object obj, jv1 jv1Var, int i) {
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
                return new qj((rj) obj2, jv1Var, 0);
            case 1:
                return new qj((mk2) obj2, jv1Var, 1);
            case 2:
                return new qj((ye5) obj2, jv1Var, 2);
            default:
                return new qj((TaskService) obj2, jv1Var, 3);
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
                ((qj) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            case 1:
                ((qj) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            case 2:
                ((qj) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            default:
                ((qj) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
        }
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        switch (this.a) {
            case 0:
                lg7.H(obj);
                g00 g00Var = g00.a;
                g00.c(((rj) this.b).f.getPackageName(), false);
                return be8.a;
            case 1:
                be8 be8Var = be8.a;
                lg7.H(obj);
                mk2 mk2Var = (mk2) this.b;
                ex6 ex6Var = mk2Var.l;
                SwiftApp.Companion companion = SwiftApp.d;
                if (ai8.i(SwiftApp.Companion.c())) {
                    tb1 tb1Var = tb1.a;
                    if (qb1.m()) {
                        yj2 yj2Var = (yj2) ex6Var.d();
                        if ((yj2Var != null ? yj2Var.a : null) != xj2.BackedUp) {
                            ex6Var.k(new yj2(xj2.Loading));
                        }
                        zc2 zc2Var = re3.a;
                        re3.n(mk2Var.m, mk2Var.n);
                        ji jiVar = mk2Var.e;
                        if (jiVar == null) {
                            pe4.F("app");
                            throw null;
                        }
                        String appId = jiVar.getAppId();
                        appId.getClass();
                        zc2 zc2VarD = re3.c().d(appId);
                        mk2Var.m = zc2VarD;
                        lk2 lk2Var = new lk2(mk2Var);
                        mk2Var.n = lk2Var;
                        zc2VarD.c(lk2Var);
                    } else {
                        ex6Var.k(new yj2(xj2.DriveNotConnected));
                    }
                } else {
                    ex6Var.k(new yj2(xj2.NetworkError));
                }
                return be8Var;
            case 2:
                be8 be8Var2 = be8.a;
                lg7.H(obj);
                ex6 ex6Var2 = ((ye5) this.b).g;
                SwiftApp.Companion companion2 = SwiftApp.d;
                if (ai8.i(SwiftApp.Companion.c())) {
                    tb1 tb1Var2 = tb1.a;
                    if (qb1.m()) {
                        ex6Var2.k(se5.a);
                        ArrayList arrayListE = ud5.e();
                        ex6Var2.k(arrayListE.isEmpty() ? re5.a : new pe5(arrayListE));
                        if (arrayListE.isEmpty()) {
                            re3.i().i(null);
                        } else {
                            re3.i().i(new Integer(arrayListE.size()));
                        }
                    } else {
                        ex6Var2.k(qe5.a);
                    }
                } else {
                    ex6Var2.k(te5.a);
                }
                return be8Var2;
            default:
                lg7.H(obj);
                TaskService taskService = (TaskService) this.b;
                jc2 jc2Var = jc2.TIMEOUT;
                gz7 gz7Var = TaskService.b;
                taskService.a(jc2Var);
                qc2.a.f("TaskService timeout", false);
                return be8.a;
        }
    }
}
