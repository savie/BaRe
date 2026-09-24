package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import android.app.Activity;
import android.security.KeyChain;
import android.security.KeyChainAliasCallback;
import android.security.KeyChainException;
import android.webkit.ClientCertRequest;
import com.microsoft.identity.common.java.opentelemetry.CertBasedAuthTelemetryHelper;
import com.microsoft.identity.common.logging.Logger;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class OnDeviceCertBasedAuthChallengeHandler extends AbstractCertBasedAuthChallengeHandler {
    private final Activity mActivity;

    public OnDeviceCertBasedAuthChallengeHandler(Activity activity, CertBasedAuthTelemetryHelper certBasedAuthTelemetryHelper) {
        this.mActivity = activity;
        this.mTelemetryHelper = certBasedAuthTelemetryHelper;
        certBasedAuthTelemetryHelper.setCertBasedAuthChallengeHandler("OnDeviceCertBasedAuthChallengeHandler");
        this.mIsCertBasedAuthProceeding = false;
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.challengehandlers.IChallengeHandler
    public final Void processChallenge(ClientCertRequest clientCertRequest) {
        String[] strArr;
        final ClientCertRequest clientCertRequest2 = clientCertRequest;
        StringBuilder sb = new StringBuilder(256);
        sb.append("Processing CBA challenge.");
        if (clientCertRequest2.getKeyTypes() != null) {
            sb.append("\nKey Types: ");
            for (String str : clientCertRequest2.getKeyTypes()) {
                sb.append(str);
                sb.append(", ");
            }
        }
        if (clientCertRequest2.getPrincipals() != null) {
            sb.append("\nPrincipals: ");
            for (Principal principal : clientCertRequest2.getPrincipals()) {
                sb.append(principal.getName());
                sb.append(", ");
            }
        }
        sb.append("\nHost: ");
        sb.append(clientCertRequest2.getHost());
        sb.append("\nPort: ");
        sb.append(clientCertRequest2.getPort());
        String string = sb.toString();
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("OnDeviceCertBasedAuthChallengeHandler:processChallenge", string);
        KeyChainAliasCallback keyChainAliasCallback = new KeyChainAliasCallback() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.OnDeviceCertBasedAuthChallengeHandler.1
            @Override // android.security.KeyChainAliasCallback
            public final void alias(String str2) {
                ClientCertRequest clientCertRequest3 = clientCertRequest2;
                OnDeviceCertBasedAuthChallengeHandler onDeviceCertBasedAuthChallengeHandler = OnDeviceCertBasedAuthChallengeHandler.this;
                if (str2 == null) {
                    int i2 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("OnDeviceCertBasedAuthChallengeHandler:processChallenge", "No certificate chosen by user, cancelling the TLS request.");
                    onDeviceCertBasedAuthChallengeHandler.mTelemetryHelper.setResultFailure("No certificate chosen by user, cancelling the TLS request.");
                    clientCertRequest3.cancel();
                    return;
                }
                try {
                    X509Certificate[] certificateChain = KeyChain.getCertificateChain(onDeviceCertBasedAuthChallengeHandler.mActivity.getApplicationContext(), str2);
                    if (certificateChain != null && certificateChain.length > 0) {
                        onDeviceCertBasedAuthChallengeHandler.mTelemetryHelper.setPublicKeyAlgoType(certificateChain[0].getPublicKey().getAlgorithm());
                    }
                    PrivateKey privateKey = KeyChain.getPrivateKey(onDeviceCertBasedAuthChallengeHandler.mActivity, str2);
                    int i3 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("OnDeviceCertBasedAuthChallengeHandler:processChallenge", "Certificate is chosen by user, proceed with TLS request.");
                    onDeviceCertBasedAuthChallengeHandler.mIsCertBasedAuthProceeding = true;
                    clientCertRequest3.proceed(privateKey, certificateChain);
                } catch (KeyChainException e) {
                    int i4 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.errorPII(e, "OnDeviceCertBasedAuthChallengeHandler:processChallenge", "KeyChain exception");
                    onDeviceCertBasedAuthChallengeHandler.mTelemetryHelper.setResultFailure(e);
                    onDeviceCertBasedAuthChallengeHandler.mTelemetryHelper.setResultFailure("ClientCertRequest unexpectedly cancelled.");
                    clientCertRequest3.cancel();
                } catch (InterruptedException e2) {
                    int i5 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.errorPII(e2, "OnDeviceCertBasedAuthChallengeHandler:processChallenge", "InterruptedException exception");
                    onDeviceCertBasedAuthChallengeHandler.mTelemetryHelper.setResultFailure(e2);
                    onDeviceCertBasedAuthChallengeHandler.mTelemetryHelper.setResultFailure("ClientCertRequest unexpectedly cancelled.");
                    clientCertRequest3.cancel();
                }
            }
        };
        String[] keyTypes = clientCertRequest2.getKeyTypes();
        if (keyTypes == null) {
            strArr = null;
        } else {
            for (int i2 = 0; i2 < keyTypes.length; i2++) {
                if (keyTypes[i2].equals("ECDSA")) {
                    keyTypes[i2] = "EC";
                    break;
                }
            }
            strArr = keyTypes;
        }
        KeyChain.choosePrivateKeyAlias(this.mActivity, keyChainAliasCallback, strArr, clientCertRequest2.getPrincipals(), clientCertRequest2.getHost(), clientCertRequest2.getPort(), null);
        return null;
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractCertBasedAuthChallengeHandler
    public final void cleanUp() {
    }
}
