package com.microsoft.identity.common.java.providers.microsoft;

import com.microsoft.identity.common.java.providers.oauth2.TokenResponse;
import defpackage.q03;
import defpackage.y77;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class MicrosoftTokenResponse extends TokenResponse {
    private transient String mClientId;

    @y77("client_info")
    private String mClientInfo;

    @q03
    @y77("cloud_instance_host_name")
    private String mCloudInstanceHostName;

    @q03
    @y77("ext_expires_in")
    private Long mExtendedExpiresIn;

    @q03
    @y77("foci")
    private String mFamilyId;

    @q03
    private String mRefreshTokenAge;

    @y77("refresh_token_expires_in")
    private String mRefreshTokenExpiresIn;

    @y77("session_key_jwe")
    private String mSessionKeyJwe;

    @q03
    private String mSpeRing;

    public final String getClientId() {
        return this.mClientId;
    }

    public final String getClientInfo() {
        return this.mClientInfo;
    }

    public final Long getExtExpiresIn() {
        return this.mExtendedExpiresIn;
    }

    public final String getFamilyId() {
        return this.mFamilyId;
    }

    public final void setClientId(String str) {
        this.mClientId = str;
    }

    public final void setRefreshTokenAge(String str) {
        this.mRefreshTokenAge = str;
    }

    public final void setSpeRing(String str) {
        this.mSpeRing = str;
    }

    @Override // com.microsoft.identity.common.java.providers.oauth2.TokenResponse
    public final String toString() {
        return "MicrosoftTokenResponse{mExtExpiresOn=null, mClientInfo='" + this.mClientInfo + "', mClientId='" + this.mClientId + "', mExtendedExpiresIn=" + this.mExtendedExpiresIn + ", mFamilyId='" + this.mFamilyId + "'} " + super.toString();
    }
}
