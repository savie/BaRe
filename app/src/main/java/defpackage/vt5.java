package defpackage;

import com.microsoft.identity.client.AuthenticationResult;
import com.microsoft.identity.client.SingleAccountPublicClientApplication;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vt5 extends qo0 {
    public SingleAccountPublicClientApplication e;
    public final ix6 f = new ix6();
    public final ix6 g = new ix6();
    public final ix6 h = new ix6();

    public vt5() {
        zn4 zn4Var = zn4.a;
        zn4.b(null, new tt5(this, null));
    }

    public final void j(boolean z, AuthenticationResult authenticationResult) {
        String accessToken;
        this.g.k(Boolean.valueOf(z));
        if (authenticationResult == null || (accessToken = authenticationResult.getAccessToken()) == null) {
            return;
        }
        jq5 jq5Var = nq5.i;
        jq5.e(accessToken, authenticationResult.getExpiresOn());
    }
}
