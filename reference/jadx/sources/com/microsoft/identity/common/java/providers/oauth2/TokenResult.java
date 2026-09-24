package com.microsoft.identity.common.java.providers.oauth2;

import com.microsoft.identity.common.java.providers.microsoft.MicrosoftTokenErrorResponse;
import com.microsoft.identity.common.java.providers.microsoft.microsoftsts.MicrosoftStsTokenResponse;
import com.microsoft.identity.common.java.telemetry.CliTelemInfo;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class TokenResult implements IResult {
    private CliTelemInfo mCliTelemInfo;
    private final boolean mSuccess;
    private final TokenErrorResponse mTokenErrorResponse;
    private final TokenResponse mTokenResponse;

    public TokenResult(MicrosoftStsTokenResponse microsoftStsTokenResponse, MicrosoftTokenErrorResponse microsoftTokenErrorResponse) {
        this.mSuccess = false;
        this.mTokenResponse = microsoftStsTokenResponse;
        this.mTokenErrorResponse = microsoftTokenErrorResponse;
        if (microsoftStsTokenResponse != null) {
            this.mSuccess = true;
        }
    }

    public final CliTelemInfo getCliTelemInfo() {
        return this.mCliTelemInfo;
    }

    @Override // com.microsoft.identity.common.java.providers.oauth2.IResult
    public final IErrorResponse getErrorResponse() {
        return this.mTokenErrorResponse;
    }

    @Override // com.microsoft.identity.common.java.providers.oauth2.IResult
    public final boolean getSuccess() {
        return this.mSuccess;
    }

    @Override // com.microsoft.identity.common.java.providers.oauth2.IResult
    public final ISuccessResponse getSuccessResponse() {
        return this.mTokenResponse;
    }

    public final TokenResponse getTokenResponse() {
        return this.mTokenResponse;
    }

    public final void setCliTelemInfo(CliTelemInfo cliTelemInfo) {
        this.mCliTelemInfo = cliTelemInfo;
    }

    public final String toString() {
        return "TokenResult{mTokenResponse=" + this.mTokenResponse + ", mTokenErrorResponse=" + this.mTokenErrorResponse + ", mSuccess=" + this.mSuccess + '}';
    }

    @Override // com.microsoft.identity.common.java.providers.oauth2.IResult
    public final TokenErrorResponse getErrorResponse() {
        return this.mTokenErrorResponse;
    }

    @Override // com.microsoft.identity.common.java.providers.oauth2.IResult
    public final TokenResponse getSuccessResponse() {
        return this.mTokenResponse;
    }
}
