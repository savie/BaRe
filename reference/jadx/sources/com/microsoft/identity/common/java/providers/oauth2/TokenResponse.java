package com.microsoft.identity.common.java.providers.oauth2;

import com.microsoft.identity.client.claims.ClaimsRequest;
import defpackage.q03;
import defpackage.y77;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class TokenResponse implements ISuccessResponse {

    @y77(ClaimsRequest.ACCESS_TOKEN)
    private String mAccessToken;

    @q03
    @y77("expires_in")
    private Long mExpiresIn;
    private transient Iterable<Map.Entry<String, String>> mExtraParameters;

    @y77(ClaimsRequest.ID_TOKEN)
    private String mIdToken;

    @q03
    @y77("refresh_in")
    private Long mRefreshIn;

    @y77("refresh_token")
    private String mRefreshToken;

    @q03
    private long mResponseReceivedTime;

    @q03
    @y77("scope")
    private String mScope;

    @q03
    @y77("state")
    private String mState;

    @q03
    @y77("token_type")
    private String mTokenType;

    public final String getAccessToken() {
        return this.mAccessToken;
    }

    public final Long getExpiresIn() {
        return this.mExpiresIn;
    }

    @Override // com.microsoft.identity.common.java.commands.parameters.IHasExtraParameters
    public final synchronized Iterable<Map.Entry<String, String>> getExtraParameters() {
        return this.mExtraParameters;
    }

    public final String getIdToken() {
        return this.mIdToken;
    }

    public final Long getRefreshIn() {
        return this.mRefreshIn;
    }

    public final String getRefreshToken() {
        return this.mRefreshToken;
    }

    public final String getScope() {
        return this.mScope;
    }

    public final String getTokenType() {
        return this.mTokenType;
    }

    @Override // com.microsoft.identity.common.java.commands.parameters.IHasExtraParameters
    public final synchronized void setExtraParameters(Iterable<Map.Entry<String, String>> iterable) {
        this.mExtraParameters = iterable;
    }

    public String toString() {
        return "TokenResponse{mExpiresIn=" + this.mExpiresIn + ", mRefreshIn=" + this.mRefreshIn + ", mAccessToken='" + this.mAccessToken + "', mTokenType='" + this.mTokenType + "', mRefreshToken='" + this.mRefreshToken + "', mScope='" + this.mScope + "', mState='" + this.mState + "', mIdToken='" + this.mIdToken + "', mResponseReceivedTime=" + this.mResponseReceivedTime + '}';
    }
}
