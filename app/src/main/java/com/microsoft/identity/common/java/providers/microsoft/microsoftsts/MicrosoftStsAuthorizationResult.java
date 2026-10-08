package com.microsoft.identity.common.java.providers.microsoft.microsoftsts;

import com.microsoft.identity.common.java.providers.oauth2.AuthorizationStatus;
import com.microsoft.identity.common.java.providers.oauth2.IErrorResponse;
import com.microsoft.identity.common.java.providers.oauth2.IResult;
import com.microsoft.identity.common.java.providers.oauth2.ISuccessResponse;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MicrosoftStsAuthorizationResult implements IResult {
    private MicrosoftStsAuthorizationErrorResponse mAuthorizationErrorResponse;
    private MicrosoftStsAuthorizationResponse mAuthorizationResponse;
    private AuthorizationStatus mAuthorizationStatus;
    private final boolean mSuccess;

    public MicrosoftStsAuthorizationResult(MicrosoftStsAuthorizationResponse microsoftStsAuthorizationResponse, MicrosoftStsAuthorizationErrorResponse microsoftStsAuthorizationErrorResponse) {
        this.mSuccess = false;
        this.mAuthorizationResponse = microsoftStsAuthorizationResponse;
        this.mAuthorizationErrorResponse = microsoftStsAuthorizationErrorResponse;
        if (microsoftStsAuthorizationResponse != null) {
            this.mSuccess = true;
        }
    }

    public final MicrosoftStsAuthorizationErrorResponse getAuthorizationErrorResponse() {
        return this.mAuthorizationErrorResponse;
    }

    public final MicrosoftStsAuthorizationResponse getAuthorizationResponse() {
        return this.mAuthorizationResponse;
    }

    public final AuthorizationStatus getAuthorizationStatus() {
        return this.mAuthorizationStatus;
    }

    @Override // com.microsoft.identity.common.java.providers.oauth2.IResult
    public final IErrorResponse getErrorResponse() {
        return this.mAuthorizationErrorResponse;
    }

    @Override // com.microsoft.identity.common.java.providers.oauth2.IResult
    public final boolean getSuccess() {
        return this.mSuccess;
    }

    @Override // com.microsoft.identity.common.java.providers.oauth2.IResult
    public final ISuccessResponse getSuccessResponse() {
        return this.mAuthorizationResponse;
    }

    public final void setAuthorizationResponse(MicrosoftStsAuthorizationResponse microsoftStsAuthorizationResponse) {
        this.mAuthorizationResponse = microsoftStsAuthorizationResponse;
    }

    public final void setAuthorizationStatus(AuthorizationStatus authorizationStatus) {
        this.mAuthorizationStatus = authorizationStatus;
    }

    public MicrosoftStsAuthorizationResult(AuthorizationStatus authorizationStatus, MicrosoftStsAuthorizationErrorResponse microsoftStsAuthorizationErrorResponse) {
        this((MicrosoftStsAuthorizationResponse) null, microsoftStsAuthorizationErrorResponse);
        setAuthorizationStatus(authorizationStatus);
        this.mAuthorizationErrorResponse = microsoftStsAuthorizationErrorResponse;
    }
}
