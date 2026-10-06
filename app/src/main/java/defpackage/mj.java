package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class mj extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ mj(Object obj, jv1 jv1Var, int i) {
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
                return new mj((rj) obj2, jv1Var, 0);
            case 1:
                return new mj((bt3) obj2, jv1Var, 1);
            case 2:
                return new mj((he5) obj2, jv1Var, 2);
            default:
                return new mj((od6) obj2, jv1Var, 3);
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
                ((mj) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            case 1:
                ((mj) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            case 2:
                ((mj) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
            default:
                ((mj) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
                break;
        }
        return be8Var;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x002e  */
    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        q63 localFile;
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                lg7.H(obj);
                g00 g00Var = g00.a;
                rj rjVar = (rj) obj2;
                g00.g(rjVar.f.getPackageName());
                rjVar.I();
                break;
            case 1:
                lg7.H(obj);
                ((bt3) obj2).invoke();
                break;
            case 2:
                lg7.H(obj);
                he5 he5Var = (he5) obj2;
                ArrayList arrayListE = he5Var.g ? ud5.e() : ud5.f();
                if (!arrayListE.isEmpty()) {
                    he5Var.f.k(new fe5(arrayListE, false));
                } else {
                    he5Var.d();
                }
                break;
            default:
                lg7.H(obj);
                od6 od6Var = (od6) obj2;
                ArrayList arrayListF = ud5.f();
                if (arrayListF.isEmpty()) {
                    localFile = null;
                } else {
                    vd5 vd5Var = (vd5) arrayListF.get(0);
                    if (vd5Var.getLocalFile().j()) {
                        localFile = vd5Var.getLocalFile();
                    } else {
                        localFile = null;
                    }
                }
                ((ix6) od6Var.e.getValue()).k(localFile);
                break;
        }
        return be8Var;
    }
}
