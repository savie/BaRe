package defpackage;

import com.microsoft.identity.client.Account;
import com.microsoft.identity.client.AcquireTokenSilentParameters;
import com.microsoft.identity.client.AuthenticationResult;
import com.microsoft.identity.client.CurrentAccountResult;
import com.microsoft.identity.client.SingleAccountPublicClientApplication;
import com.microsoft.identity.client.exception.MsalException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class oq5 {
    public static final boolean a(SingleAccountPublicClientApplication singleAccountPublicClientApplication, boolean z) {
        try {
            CurrentAccountResult currentAccount = singleAccountPublicClientApplication.getCurrentAccount();
            currentAccount.getClass();
            if (currentAccount.getCurrentAccount() == null) {
                vr6.i$default(vr6.INSTANCE, "ISAPCA", "acquireTokenSilentBlocking: IAccount is null!", null, 4, null);
                return false;
            }
        } catch (Exception e) {
            vr6.e$default(vr6.INSTANCE, "ISAPCA", "acquireTokenSilentBlocking: Error while getting current account", e, null, 8, null);
        }
        if (!z) {
            jq5 jq5Var = nq5.i;
            if (jq5.d()) {
                return true;
            }
        }
        vr6 vr6Var = vr6.INSTANCE;
        vr6.i$default(vr6Var, "ISAPCA", "Refreshing OneDrive token silently...", null, 4, null);
        try {
            AuthenticationResult authenticationResultB = b(singleAccountPublicClientApplication, singleAccountPublicClientApplication.getCurrentAccount().getCurrentAccount(), z);
            String accessToken = authenticationResultB.getAccessToken();
            accessToken.getClass();
            if (accessToken.length() <= 0) {
                vr6.e$default(vr6Var, "ISAPCA", "acquireTokenSilentBlocking: Invalid token=".concat(accessToken), null, 4, null);
                return false;
            }
            jq5 jq5Var2 = nq5.i;
            jq5.e(accessToken, authenticationResultB.getExpiresOn());
            vr6.i$default(vr6Var, "ISAPCA", "Token successfully acquired", null, 4, null);
            return true;
        } catch (Exception e2) {
            vr6.e$default(vr6.INSTANCE, "ISAPCA", "acquireTokenSilentBlocking: Error while getting token", e2, null, 8, null);
        }
    }

    public static final AuthenticationResult b(SingleAccountPublicClientApplication singleAccountPublicClientApplication, Account account, boolean z) throws MsalException, InterruptedException {
        AcquireTokenSilentParameters.Builder builderFromAuthority = new AcquireTokenSilentParameters.Builder().forAccount(account).withScopes(x50.z0((String[]) ed1.a.getValue())).fromAuthority(singleAccountPublicClientApplication.getConfiguration().getDefaultAuthority().getAuthorityUri().toString());
        builderFromAuthority.forceRefresh(z);
        AuthenticationResult authenticationResultAcquireTokenSilent = singleAccountPublicClientApplication.acquireTokenSilent(new AcquireTokenSilentParameters(builderFromAuthority));
        authenticationResultAcquireTokenSilent.getClass();
        return authenticationResultAcquireTokenSilent;
    }
}
