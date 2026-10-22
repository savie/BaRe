package defpackage;

import org.swiftapps.swiftbackup.cloud.connect.GmsSignInActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ez3 extends ws7 implements qt3 {
    public int a;
    public final /* synthetic */ GmsSignInActivity b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ez3(GmsSignInActivity gmsSignInActivity, jv1 jv1Var) {
        super(2, jv1Var);
        this.b = gmsSignInActivity;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        return new ez3(this.b, jv1Var);
    }

    @Override // defpackage.qt3
    public final Object invoke(Object obj, Object obj2) {
        return ((ez3) create((xx1) obj, (jv1) obj2)).invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        GmsSignInActivity gmsSignInActivity = this.b;
        try {
            if (i == 0) {
                lg7.H(obj);
                zv3 zv3VarN = GmsSignInActivity.N(gmsSignInActivity);
                u22 u22Var = (u22) gmsSignInActivity.L.getValue();
                this.a = 1;
                u22Var.getClass();
                obj = u22.b(gmsSignInActivity, zv3VarN, this);
                yx1 yx1Var = yx1.a;
                if (obj == yx1Var) {
                    return yx1Var;
                }
            } else {
                if (i != 1) {
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
            }
            GmsSignInActivity.O(gmsSignInActivity, ((bw3) obj).a);
        } catch (yv3 e) {
            vr6.e$default(vr6.INSTANCE, gmsSignInActivity.r(), "Credential provider configuration failed", e, null, 8, null);
            gmsSignInActivity.U().j(e.getMessage(), true);
        } catch (wv3 e2) {
            vr6.e$default(vr6.INSTANCE, gmsSignInActivity.r(), "Credential sign-in failed", e2, null, 8, null);
            gmsSignInActivity.U().j(e2.getMessage(), false);
        } catch (Exception e3) {
            vr6.e$default(vr6.INSTANCE, gmsSignInActivity.r(), "Credential sign-in failed", e3, null, 8, null);
            gmsSignInActivity.U().j(io4.b(e3), false);
        }
        return be8.a;
    }
}
