package com.microsoft.identity.common.java.providers.oauth2;

import defpackage.dj7;
import defpackage.q03;
import defpackage.y77;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class TokenErrorResponse implements IErrorResponse {

    @q03
    @y77("error")
    private String mError;

    @q03
    @y77("error_description")
    private String mErrorDescription;

    @q03
    @y77("error_uri")
    private String mErrorUri;
    private String mResponseBody;

    @q03
    private String mResponseHeadersJson;

    @q03
    private int mStatusCode;

    @q03
    @y77("suberror")
    private String mSubError;

    @Override // com.microsoft.identity.common.java.providers.oauth2.IErrorResponse
    public final String getError() {
        return this.mError;
    }

    @Override // com.microsoft.identity.common.java.providers.oauth2.IErrorResponse
    public final String getErrorDescription() {
        return this.mErrorDescription;
    }

    public final String getResponseBody() {
        return this.mResponseBody;
    }

    public final String getResponseHeadersJson() {
        return this.mResponseHeadersJson;
    }

    public final int getStatusCode() {
        return this.mStatusCode;
    }

    public final String getSubError() {
        return this.mSubError;
    }

    public final void setError(String str) {
        this.mError = str;
    }

    public final void setErrorDescription(String str) {
        this.mErrorDescription = str;
    }

    public final void setResponseBody(String str) {
        this.mResponseBody = str;
    }

    public final void setResponseHeadersJson(String str) {
        this.mResponseHeadersJson = str;
    }

    public final void setStatusCode(int i) {
        this.mStatusCode = i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TokenErrorResponse{mStatusCode=");
        sb.append(this.mStatusCode);
        sb.append(", mResponseBody='");
        sb.append(this.mResponseBody);
        sb.append("', mResponseHeadersJson=");
        sb.append(this.mResponseHeadersJson);
        sb.append(", mError='");
        sb.append(this.mError);
        sb.append("', mSubError='");
        sb.append(this.mSubError);
        sb.append("', mErrorDescription='");
        sb.append(this.mErrorDescription);
        sb.append("', mErrorUri='");
        return dj7.n(sb, this.mErrorUri, "'}");
    }
}
