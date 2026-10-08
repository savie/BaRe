package com.microsoft.identity.common.java.providers.oauth2;

import defpackage.q03;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AuthorizationErrorResponse implements IErrorResponse {

    @q03
    private String mError;

    @q03
    private String mErrorDescription;
    private boolean mTokenProtectionRequired;
    private String mUpnToWpj;

    public AuthorizationErrorResponse(String str, String str2) {
        this.mError = str;
        this.mErrorDescription = str2;
    }

    @Override // com.microsoft.identity.common.java.providers.oauth2.IErrorResponse
    public final String getError() {
        return this.mError;
    }

    @Override // com.microsoft.identity.common.java.providers.oauth2.IErrorResponse
    public final String getErrorDescription() {
        return this.mErrorDescription;
    }

    public final String getUpnToWpj() {
        return this.mUpnToWpj;
    }

    public final boolean isTokenProtectionRequired() {
        return this.mTokenProtectionRequired;
    }

    public final void setTokenProtectionRequired(boolean z) {
        this.mTokenProtectionRequired = z;
    }

    public final void setUpnToWpj(String str) {
        this.mUpnToWpj = str;
    }
}
