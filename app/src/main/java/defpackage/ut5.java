package defpackage;

import com.microsoft.identity.client.AuthenticationCallback;
import com.microsoft.identity.client.AuthenticationResult;
import com.microsoft.identity.client.exception.MsalException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ut5 implements AuthenticationCallback {
    public final /* synthetic */ vt5 a;

    public ut5(vt5 vt5Var) {
        this.a = vt5Var;
    }

    @Override // com.microsoft.identity.client.SilentAuthenticationCallback
    public final void onError(MsalException msalException) {
        String strG0 = yc9.g0(msalException);
        vr6 vr6Var = vr6.INSTANCE;
        vt5 vt5Var = this.a;
        vr6.e$default(vr6Var, vt5Var.b, "Authentication failed: ".concat(strG0), null, 4, null);
        vt5Var.h.k(msalException);
    }

    @Override // com.microsoft.identity.client.SilentAuthenticationCallback
    public final void onSuccess(AuthenticationResult authenticationResult) {
        vr6 vr6Var = vr6.INSTANCE;
        vt5 vt5Var = this.a;
        vr6.i$default(vr6Var, vt5Var.b, "Successfully authenticated", null, 4, null);
        vt5Var.j(true, authenticationResult);
    }
}
