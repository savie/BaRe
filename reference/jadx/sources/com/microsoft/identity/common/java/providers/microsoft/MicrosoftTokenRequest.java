package com.microsoft.identity.common.java.providers.microsoft;

import com.microsoft.identity.common.java.providers.oauth2.TokenRequest;
import defpackage.q03;
import defpackage.y77;
import java.util.UUID;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class MicrosoftTokenRequest extends TokenRequest {

    @q03
    @y77("claims")
    private String mClaims;

    @q03
    @y77("x-app-name")
    private String mClientAppName;

    @q03
    @y77("x-app-ver")
    private String mClientAppVersion;

    @q03
    @y77("client_info")
    private String mClientInfoEnabled = "1";

    @y77("code_verifier")
    private String mCodeVerifier;

    @q03
    @y77("client-request-id")
    private UUID mCorrelationId;

    @q03
    @y77("device_code")
    private String mDeviceCode;

    @q03
    @y77("itver")
    private String mIdTokenVersion;

    @q03
    @y77("instance_aware")
    private String mInstanceAware;

    @q03
    @y77("mamver")
    private String mMamVersion;

    @q03
    @y77("microsoft_enrollment_id")
    private String mMicrosoftEnrollmentId;

    @q03
    @y77("transfer_token")
    private String mTransferToken;

    public final String getClientAppName() {
        return this.mClientAppName;
    }

    public final String getClientAppVersion() {
        return this.mClientAppVersion;
    }

    public final void setClaims(String str) {
        this.mClaims = str;
    }

    public final void setClientAppName(String str) {
        this.mClientAppName = str;
    }

    public final void setClientAppVersion(String str) {
        this.mClientAppVersion = str;
    }

    public final void setCodeVerifier(String str) {
        this.mCodeVerifier = str;
    }

    public final void setCorrelationId(UUID uuid) {
        this.mCorrelationId = uuid;
    }

    public final void setDeviceCode(String str) {
        this.mDeviceCode = str;
    }

    public final void setIdTokenVersion(String str) {
        this.mIdTokenVersion = str;
    }
}
