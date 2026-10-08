package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import android.webkit.ClientCertRequest;
import com.microsoft.identity.common.internal.ui.webview.challengehandlers.IChallengeHandler;
import com.microsoft.identity.common.java.exception.BaseException;
import com.microsoft.identity.common.java.opentelemetry.CertBasedAuthTelemetryHelper;
import com.microsoft.identity.common.java.providers.RawAuthorizationResult;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractCertBasedAuthChallengeHandler implements IChallengeHandler<ClientCertRequest, Void> {
    protected boolean mIsCertBasedAuthProceeding;
    protected CertBasedAuthTelemetryHelper mTelemetryHelper;

    public abstract void cleanUp();

    public final void emitTelemetryForCertBasedAuthResults(RawAuthorizationResult rawAuthorizationResult) {
        String str;
        if (this.mIsCertBasedAuthProceeding) {
            int resultCode = rawAuthorizationResult.getResultCode();
            if (resultCode != 3 && resultCode != 7 && resultCode != 2) {
                this.mTelemetryHelper.setResultSuccess();
                return;
            }
            BaseException exception = rawAuthorizationResult.getException();
            CertBasedAuthTelemetryHelper certBasedAuthTelemetryHelper = this.mTelemetryHelper;
            if (exception != null) {
                certBasedAuthTelemetryHelper.setResultFailure(exception);
                return;
            }
            switch (resultCode) {
                case 1:
                    str = "UNKNOWN";
                    break;
                case 2:
                    str = "CANCELLED";
                    break;
                case 3:
                    str = "NON_OAUTH_ERROR";
                    break;
                case 4:
                    str = "COMPLETED";
                    break;
                case 5:
                    str = "BROKER_INSTALLATION_TRIGGERED";
                    break;
                case 6:
                    str = "DEVICE_REGISTRATION_REQUIRED";
                    break;
                case 7:
                    str = "SDK_CANCELLED";
                    break;
                case 8:
                    str = "MDM_FLOW";
                    break;
                case XmlPullParser.COMMENT /* 9 */:
                    str = "INSUFFICIENT_DEVICE_REGISTRATION";
                    break;
                case 10:
                    str = "TIMED_OUT";
                    break;
                default:
                    throw null;
            }
            certBasedAuthTelemetryHelper.setResultFailure(str);
        }
    }
}
