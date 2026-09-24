package com.microsoft.identity.common.java.providers.microsoft.microsoftsts;

import com.microsoft.identity.common.java.providers.microsoft.MicrosoftAuthorizationResponse;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MicrosoftStsAuthorizationResponse extends MicrosoftAuthorizationResponse {
    public MicrosoftStsAuthorizationResponse(String str, String str2, Map<String, String> map) {
        super(str, str2);
        this.mCloudGraphHostName = map.get("cloud_graph_host_name");
        this.mCloudInstanceHostName = map.get("cloud_instance_host_name");
        this.mCloudInstanceName = map.get("cloud_instance_name");
        this.mSessionState = map.get("session_state");
        this.mDeviceCode = map.get("device_code");
        this.mUserCode = map.get("user_code");
        this.mVerificationUri = map.get("verification_uri");
        this.mExpiresIn = map.get("expires_in");
        this.mInterval = map.get("interval");
        this.mMessage = map.get("message");
    }
}
