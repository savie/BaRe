package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class u01 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u01(Object obj, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        switch (this.a) {
            case 0:
                return new u01((v01) this.b, jv1Var, 0);
            case 1:
                return new u01((eb2) this.b, jv1Var, 1);
            case 2:
                u01 u01Var = new u01(2, jv1Var);
                u01Var.b = obj;
                return u01Var;
            case 3:
                return new u01((cs6) this.b, jv1Var, 3);
            default:
                return new u01((q47) this.b, jv1Var, 4);
        }
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        int i = this.a;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                ((u01) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
                break;
            case 1:
                ((u01) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
                break;
            case 2:
                ((u01) create((String) obj, (jv1) obj2)).invokeSuspend(be8Var);
                break;
            case 3:
                ((u01) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
                break;
            default:
                ((u01) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8Var);
                break;
        }
        return be8Var;
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        boolean z = false;
        be8 be8Var = be8.a;
        switch (i) {
            case 0:
                lg7.H(obj);
                v01 v01Var = (v01) this.b;
                ex6 ex6Var = v01Var.f;
                ex6Var.k(new s01(new ArrayList(), true));
                ArrayList arrayListE = v01Var.g ? d01.e() : d01.f();
                if (!arrayListE.isEmpty()) {
                    ex6Var.k(new s01(arrayListE, false));
                } else {
                    v01Var.d();
                }
                break;
            case 1:
                lg7.H(obj);
                ua1 ua1Var = ua1.g;
                eb2 eb2Var = (eb2) this.b;
                ua1Var.getClass();
                ji jiVarQ = ua1.q(eb2Var);
                if (jiVarQ != null) {
                    Log.d(ua1Var.a, "onChildRemoved = " + jiVarQ.asString());
                    ua1Var.n(jiVarQ);
                }
                break;
            case 2:
                lg7.H(obj);
                u48.s("Error failed to fetch the remote configs: ", (String) this.b, "FirebaseSessions");
                break;
            case 3:
                lg7.H(obj);
                vr6 vr6Var = vr6.INSTANCE;
                List<jv6> messages = vr6Var.getMessages();
                cs6 cs6Var = (cs6) this.b;
                boolean z2 = cs6Var.f;
                cs6Var.e.k(new fm7(vr6.filterLogs$default(vr6Var, messages, z2, z2, false, 8, null), (Set) null, false, (String) null, 30));
                break;
            default:
                lg7.H(obj);
                try {
                    Thread.sleep(1000L);
                    break;
                } catch (Exception unused) {
                }
                zn4.c(new h47((q47) this.b, z));
                break;
        }
        return be8Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ u01(int i, jv1 jv1Var) {
        super(i, jv1Var);
        this.a = 2;
    }
}
