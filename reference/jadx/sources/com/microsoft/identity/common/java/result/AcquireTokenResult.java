package com.microsoft.identity.common.java.result;

import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsAuthorizationResult;
import com.microsoft.identity.common.java.providers.oauth2.TokenResult;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AcquireTokenResult {
    private MicrosoftStsAuthorizationResult mAuthorizationResult;
    private LocalAuthenticationResult mLocalAuthenticationResult;
    private Boolean mSucceeded = Boolean.FALSE;
    private TokenResult mTokenResult;

    public final MicrosoftStsAuthorizationResult getAuthorizationResult() {
        return this.mAuthorizationResult;
    }

    public final LocalAuthenticationResult getLocalAuthenticationResult() {
        return this.mLocalAuthenticationResult;
    }

    public final Boolean getSucceeded() {
        return this.mSucceeded;
    }

    public final TokenResult getTokenResult() {
        return this.mTokenResult;
    }

    public final void setAuthorizationResult(MicrosoftStsAuthorizationResult microsoftStsAuthorizationResult) {
        this.mAuthorizationResult = microsoftStsAuthorizationResult;
    }

    public final void setLocalAuthenticationResult(LocalAuthenticationResult localAuthenticationResult) {
        this.mLocalAuthenticationResult = localAuthenticationResult;
        this.mSucceeded = Boolean.TRUE;
    }

    public final void setTokenResult(TokenResult tokenResult) {
        this.mTokenResult = tokenResult;
    }
}
