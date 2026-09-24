package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import com.microsoft.identity.common.java.opentelemetry.CertBasedAuthTelemetryHelper;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractSmartcardCertBasedAuthManager {
    protected IConnectionCallback mConnectionCallback;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    interface ISessionCallback {
        void onException(Exception exc);

        void onGetSession(YubiKitSmartcardSession yubiKitSmartcardSession) throws Exception;
    }

    public abstract void initBeforeProceedingWithRequest(CertBasedAuthTelemetryHelper certBasedAuthTelemetryHelper);

    public abstract void requestDeviceSession(ISessionCallback iSessionCallback);
}
