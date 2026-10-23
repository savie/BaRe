package defpackage;

import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vs extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ vs(Object obj, jv1 jv1Var, int i) {
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
                return new vs((ji) obj2, jv1Var, 0);
            case 1:
                return new vs((bt3) obj2, jv1Var, 1);
            case 2:
                return new vs((fi5) obj2, jv1Var, 2);
            default:
                return new vs((od6) obj2, jv1Var, 3);
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
                ((vs) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                return be8Var;
            case 1:
                ((vs) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                return be8Var;
            case 2:
                return ((vs) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
            default:
                ((vs) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                return be8Var;
        }
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                lg7.H(obj);
                g00 g00Var = g00.a;
                g00.g(((ji) obj2).getPackageName());
                return be8Var;
            case 1:
                lg7.H(obj);
                ((bt3) obj2).invoke();
                return be8Var;
            case 2:
                lg7.H(obj);
                return new Integer(xc7.b.nativeGetCounterValue(((xc7) ((fi5) obj2).i.getValue()).a));
            default:
                lg7.H(obj);
                od6 od6Var = (od6) obj2;
                qo0 qo0Var = od6Var.i;
                if (qo0Var != null) {
                    qo0Var.h(R.string.preparing);
                }
                ArrayList arrayListE = d01.e();
                if (arrayListE.isEmpty()) {
                    od6Var.j().k(null);
                    qo0 qo0Var2 = od6Var.i;
                    if (qo0Var2 != null) {
                        qo0Var2.f();
                    }
                } else {
                    rz0 rz0Var = (rz0) arrayListE.get(0);
                    if (rz0Var.getLocalFile().j()) {
                        od6Var.j().k(rz0Var.getLocalFile());
                        qo0 qo0Var3 = od6Var.i;
                        if (qo0Var3 != null) {
                            qo0Var3.f();
                        }
                    } else {
                        qo0 qo0Var4 = od6Var.i;
                        if (qo0Var4 != null) {
                            qo0Var4.h(R.string.downloading_backup_files);
                        }
                        if (d01.d(rz0Var) && rz0Var.getLocalFile().j()) {
                            od6Var.j().k(rz0Var.getLocalFile());
                        } else {
                            od6Var.j().k(null);
                        }
                        qo0 qo0Var5 = od6Var.i;
                        if (qo0Var5 != null) {
                            qo0Var5.f();
                        }
                    }
                }
                return be8Var;
        }
    }
}
