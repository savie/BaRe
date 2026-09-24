package defpackage;

import android.util.Log;
import org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fz3 extends ws7 implements qt3 {
    public int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ GmsSignInActivity c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fz3(GmsSignInActivity gmsSignInActivity, jv1 jv1Var) {
        super(2, jv1Var);
        this.c = gmsSignInActivity;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        fz3 fz3Var = new fz3(this.c, jv1Var);
        fz3Var.b = obj;
        return fz3Var;
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((fz3) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        Object bn6Var;
        int i = this.a;
        be8 be8Var = be8.a;
        GmsSignInActivity gmsSignInActivity = this.c;
        try {
            if (i == 0) {
                lg7.H(obj);
                u22 u22Var = (u22) gmsSignInActivity.L.getValue();
                f91 f91Var = new f91();
                this.b = null;
                this.a = 1;
                Object objA = u22Var.a(f91Var, this);
                yx1 yx1Var = yx1.a;
                if (objA == yx1Var) {
                    return yx1Var;
                }
            } else {
                if (i != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
            }
            bn6Var = be8Var;
        } catch (Throwable th) {
            bn6Var = new bn6(th);
        }
        Throwable thA = en6.a(bn6Var);
        if (thA != null) {
            vr6.e$default(vr6.INSTANCE, gmsSignInActivity.r(), "Failed to clear credential state", thA, null, 8, null);
        }
        gz3 gz3VarU = gmsSignInActivity.U();
        Log.d(gz3VarU.b, "signOutAfterCredentialClear() called");
        ((d45) gz3VarU.f.getValue()).c();
        gz3VarU.g.k(Boolean.TRUE);
        return be8Var;
    }
}
