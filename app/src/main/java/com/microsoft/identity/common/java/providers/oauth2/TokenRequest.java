package com.microsoft.identity.common.java.providers.oauth2;

import com.microsoft.identity.common.java.commands.parameters.IHasExtraParameters;
import defpackage.q03;
import defpackage.y77;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class TokenRequest implements IHasExtraParameters {

    @q03
    @y77("brk_client_id")
    private String mBrkClientId;

    @q03
    @y77("brk_redirect_uri")
    private String mBrkRedirectUri;

    @y77("client_assertion")
    private String mClientAssertion;

    @q03
    @y77("client_assertion_type")
    private String mClientAssertionType;

    @q03
    @y77("client_id")
    private String mClientId;

    @y77("client_secret")
    private String mClientSecret;

    @y77("code")
    private String mCode;
    private transient Iterable<Map.Entry<String, String>> mExtendedParameters;

    @q03
    @y77("grant_type")
    private String mGrantType;

    @q03
    @y77("redirect_uri")
    private String mRedirectUri;

    @y77("refresh_token")
    private String mRefreshToken;

    @y77("req_cnf")
    private String mRequestConfirmation;

    @q03
    @y77("scope")
    private String mScope;

    @q03
    @y77("token_type")
    private String mTokenType;

    @Override // com.microsoft.identity.common.java.commands.parameters.IHasExtraParameters
    public final synchronized Iterable<Map.Entry<String, String>> getExtraParameters() {
        return this.mExtendedParameters;
    }

    public final String getGrantType() {
        return this.mGrantType;
    }

    public final String getScope() {
        return this.mScope;
    }

    public final String getTokenType() {
        return this.mTokenType;
    }

    public final void setBrkClientId(String str) {
        this.mBrkClientId = str;
    }

    public final void setBrkRedirectUri(String str) {
        this.mBrkRedirectUri = str;
    }

    public final void setClientId(String str) {
        this.mClientId = str;
    }

    public final void setCode(String str) {
        this.mCode = str;
    }

    @Override // com.microsoft.identity.common.java.commands.parameters.IHasExtraParameters
    public final synchronized void setExtraParameters(Iterable<Map.Entry<String, String>> iterable) {
        this.mExtendedParameters = iterable;
    }

    public final void setGrantType(String str) {
        this.mGrantType = str;
    }

    public final void setRedirectUri(String str) {
        this.mRedirectUri = str;
    }

    public final void setRefreshToken(String str) {
        this.mRefreshToken = str;
    }

    public final void setRequestConfirmation(String str) {
        this.mRequestConfirmation = str;
    }

    public final void setScope(String str) {
        this.mScope = str;
    }

    public final void setTokenType() {
        this.mTokenType = "pop";
    }
}
