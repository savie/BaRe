package com.microsoft.identity.common.java.providers.microsoft;

import com.microsoft.identity.common.java.providers.oauth2.AuthorizationResponse;
import defpackage.q03;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class MicrosoftAuthorizationResponse extends AuthorizationResponse {

    @q03
    protected String mCloudGraphHostName;

    @q03
    protected String mCloudInstanceHostName;

    @q03
    protected String mCloudInstanceName;

    @q03
    protected String mCorrelationId;

    @q03
    protected String mDeviceCode;

    @q03
    protected String mExpiresIn;

    @q03
    protected String mInterval;

    @q03
    protected String mMessage;

    @q03
    protected String mSessionState;

    @q03
    protected String mUserCode;

    @q03
    protected String mVerificationUri;

    public final String getCloudInstanceHostName() {
        return this.mCloudInstanceHostName;
    }

    public final String getDeviceCode() {
        return this.mDeviceCode;
    }
}
