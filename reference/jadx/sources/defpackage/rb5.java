package defpackage;

import org.swiftapps.swiftbackup.cloud.clients.MegaClient$Credentials;
import org.swiftapps.swiftbackup.cloud.connect.MegaSignInActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class rb5 extends ws7 implements qt3 {
    public final /* synthetic */ int a;
    public int b;
    public final /* synthetic */ Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ rb5(Object obj, jv1 jv1Var, int i) {
        super(2, jv1Var);
        this.a = i;
        this.c = obj;
    }

    @Override // defpackage.ml0
    public final jv1 create(Object obj, jv1 jv1Var) {
        int i = this.a;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return new rb5((MegaSignInActivity) obj2, jv1Var, 0);
            default:
                return new rb5((jo6) obj2, jv1Var, 1);
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
                break;
        }
        return ((rb5) create(xx1Var, jv1Var)).invokeSuspend(be8Var);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        int i = this.a;
        be8 be8Var = be8.a;
        Object obj2 = this.c;
        yx1 yx1Var = yx1.a;
        switch (i) {
            case 0:
                MegaSignInActivity megaSignInActivity = (MegaSignInActivity) obj2;
                int i2 = this.b;
                if (i2 != 0) {
                    if (i2 == 1) {
                        lg7.H(obj);
                        return be8Var;
                    }
                    l0.e("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                lg7.H(obj);
                MegaClient$Credentials megaClient$CredentialsP = megaSignInActivity.a0().g;
                if (megaClient$CredentialsP == null) {
                    x95 x95Var = x95.g;
                    megaClient$CredentialsP = x95.p();
                }
                megaSignInActivity.a0().k(megaClient$CredentialsP);
                zn4 zn4Var = zn4.a;
                lx lxVar = new lx(9, megaSignInActivity, megaClient$CredentialsP);
                this.b = 1;
                return zn4.g(lxVar, this) == yx1Var ? yx1Var : be8Var;
            default:
                int i3 = this.b;
                if (i3 == 0) {
                    lg7.H(obj);
                    this.b = 1;
                    return jo6.l((jo6) obj2, this) == yx1Var ? yx1Var : be8Var;
                }
                if (i3 == 1) {
                    lg7.H(obj);
                    return be8Var;
                }
                l0.e("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }
}
