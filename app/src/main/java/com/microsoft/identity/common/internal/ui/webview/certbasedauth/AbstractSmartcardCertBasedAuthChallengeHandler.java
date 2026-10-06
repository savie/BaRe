package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import android.app.Activity;
import android.webkit.ClientCertRequest;
import com.microsoft.identity.common.internal.ui.webview.ISendResultCallback;
import com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthManager;
import com.microsoft.identity.common.java.opentelemetry.CertBasedAuthTelemetryHelper;
import com.microsoft.identity.common.logging.Logger;
import defpackage.j16;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractSmartcardCertBasedAuthChallengeHandler<T extends AbstractSmartcardCertBasedAuthManager> extends AbstractCertBasedAuthChallengeHandler {
    protected final String TAG;
    protected final Activity mActivity;
    protected final T mCbaManager;
    protected final DialogHolder mDialogHolder;

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthChallengeHandler$2, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass2 implements ICancelCbaCallback {
        final /* synthetic */ ClientCertRequest val$request;

        public AnonymousClass2(ClientCertRequest clientCertRequest) {
            this.val$request = clientCertRequest;
        }

        public final void onCancel() {
            AbstractSmartcardCertBasedAuthChallengeHandler abstractSmartcardCertBasedAuthChallengeHandler = AbstractSmartcardCertBasedAuthChallengeHandler.this;
            abstractSmartcardCertBasedAuthChallengeHandler.mDialogHolder.dismissDialog();
            abstractSmartcardCertBasedAuthChallengeHandler.mTelemetryHelper.setResultFailure("User canceled smartcard CBA flow.");
            this.val$request.cancel();
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthChallengeHandler$3, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass3 implements SmartcardCertPickerDialog.PositiveButtonListener {
        final /* synthetic */ ClientCertRequest val$request;

        public AnonymousClass3(ClientCertRequest clientCertRequest) {
            this.val$request = clientCertRequest;
        }
    }

    public AbstractSmartcardCertBasedAuthChallengeHandler(Activity activity, T t, DialogHolder dialogHolder, CertBasedAuthTelemetryHelper certBasedAuthTelemetryHelper, String str) {
        this.TAG = str;
        this.mActivity = activity;
        this.mIsCertBasedAuthProceeding = false;
        this.mCbaManager = t;
        this.mDialogHolder = dialogHolder;
        this.mTelemetryHelper = certBasedAuthTelemetryHelper;
        certBasedAuthTelemetryHelper.setCertBasedAuthChallengeHandler(str);
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractCertBasedAuthChallengeHandler
    public final void cleanUp() {
        this.mDialogHolder.dismissDialog();
        clearAllManagerCallbacks();
    }

    public abstract void clearAllManagerCallbacks();

    public abstract SmartcardPinDialog.PositiveButtonListener getSmartcardPinDialogPositiveButtonListener(YubiKitCertDetails yubiKitCertDetails, ClientCertRequest clientCertRequest);

    public final void indicateGeneralException(String str, Exception exc) {
        String message = exc.getMessage();
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.error(str, message, exc);
        this.mTelemetryHelper.setResultFailure(exc);
        this.mDialogHolder.showErrorDialog(R.string.smartcard_general_error_dialog_title, R.string.smartcard_general_error_dialog_message);
    }

    public abstract void prepForNextUserInteraction(IDisconnectionCallback iDisconnectionCallback);

    @Override // com.microsoft.identity.common.internal.ui.webview.challengehandlers.IChallengeHandler
    public final Void processChallenge(ClientCertRequest clientCertRequest) {
        final ClientCertRequest clientCertRequest2 = clientCertRequest;
        final String strConcat = this.TAG.concat(":processChallenge");
        this.mCbaManager.requestDeviceSession(new AbstractSmartcardCertBasedAuthManager.ISessionCallback() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthChallengeHandler.1
            @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthManager.ISessionCallback
            public final void onException(final Exception exc) {
                clientCertRequest2.cancel();
                AbstractSmartcardCertBasedAuthChallengeHandler.this.prepForNextUserInteraction(new IDisconnectionCallback() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthChallengeHandler.1.2
                    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.IDisconnectionCallback
                    public final void onClosedConnection() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        AbstractSmartcardCertBasedAuthChallengeHandler.this.indicateGeneralException(strConcat, exc);
                    }
                });
            }

            @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthManager.ISessionCallback
            public final void onGetSession(YubiKitSmartcardSession yubiKitSmartcardSession) throws Exception {
                final int pinAttemptsRemaining = yubiKitSmartcardSession.getPinAttemptsRemaining();
                final ArrayList certDetailsList = yubiKitSmartcardSession.getCertDetailsList();
                AbstractSmartcardCertBasedAuthChallengeHandler.this.prepForNextUserInteraction(new IDisconnectionCallback() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthChallengeHandler.1.1
                    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.IDisconnectionCallback
                    public final void onClosedConnection() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        String str = strConcat;
                        ClientCertRequest clientCertRequest3 = clientCertRequest2;
                        AbstractSmartcardCertBasedAuthChallengeHandler abstractSmartcardCertBasedAuthChallengeHandler = AbstractSmartcardCertBasedAuthChallengeHandler.this;
                        if (pinAttemptsRemaining == 0) {
                            int i = Logger.a;
                            com.microsoft.identity.common.java.logging.Logger.info(str, "User has reached the maximum failed attempts allowed.");
                            abstractSmartcardCertBasedAuthChallengeHandler.mTelemetryHelper.setResultFailure("User has reached the maximum failed attempts allowed.");
                            abstractSmartcardCertBasedAuthChallengeHandler.mDialogHolder.showErrorDialog(R.string.smartcard_max_attempt_dialog_title, R.string.smartcard_max_attempt_dialog_message);
                            clientCertRequest3.cancel();
                            return;
                        }
                        ArrayList arrayList = certDetailsList;
                        if (!arrayList.isEmpty()) {
                            abstractSmartcardCertBasedAuthChallengeHandler.mDialogHolder.showCertPickerDialog(arrayList, new AnonymousClass3(clientCertRequest3), new AnonymousClass2(clientCertRequest3));
                            return;
                        }
                        int i2 = Logger.a;
                        com.microsoft.identity.common.java.logging.Logger.info(str, "No PIV certificates found on smartcard device.");
                        abstractSmartcardCertBasedAuthChallengeHandler.mTelemetryHelper.setResultFailure("No PIV certificates found on smartcard device.");
                        abstractSmartcardCertBasedAuthChallengeHandler.mDialogHolder.showErrorDialog(R.string.smartcard_no_cert_dialog_title, R.string.smartcard_no_cert_dialog_message);
                        clientCertRequest3.cancel();
                    }
                });
            }
        });
        return null;
    }

    public abstract void promptSmartcardRemovalForResult(ISendResultCallback iSendResultCallback);

    public abstract void setPinDialogForIncorrectAttempt(YubiKitCertDetails yubiKitCertDetails, ClientCertRequest clientCertRequest);

    public final void tryUsingSmartcardWithPin(char[] cArr, final YubiKitCertDetails yubiKitCertDetails, final ClientCertRequest clientCertRequest, YubiKitSmartcardSession yubiKitSmartcardSession) throws Exception {
        final String strConcat = this.TAG.concat(":tryUsingSmartcardWithPin");
        if (!yubiKitSmartcardSession.verifyPin(cArr)) {
            final int pinAttemptsRemaining = yubiKitSmartcardSession.getPinAttemptsRemaining();
            prepForNextUserInteraction(new IDisconnectionCallback() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthChallengeHandler.4
                @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.IDisconnectionCallback
                public final void onClosedConnection() {
                    ClientCertRequest clientCertRequest2 = clientCertRequest;
                    int i = pinAttemptsRemaining;
                    AbstractSmartcardCertBasedAuthChallengeHandler abstractSmartcardCertBasedAuthChallengeHandler = AbstractSmartcardCertBasedAuthChallengeHandler.this;
                    if (i != 0) {
                        abstractSmartcardCertBasedAuthChallengeHandler.setPinDialogForIncorrectAttempt(yubiKitCertDetails, clientCertRequest2);
                        return;
                    }
                    abstractSmartcardCertBasedAuthChallengeHandler.getClass();
                    int i2 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info(strConcat, "User has reached the maximum failed attempts allowed.");
                    abstractSmartcardCertBasedAuthChallengeHandler.mTelemetryHelper.setResultFailure("User has reached the maximum failed attempts allowed.");
                    abstractSmartcardCertBasedAuthChallengeHandler.mDialogHolder.showErrorDialog(R.string.smartcard_max_attempt_dialog_title, R.string.smartcard_max_attempt_dialog_message);
                    clientCertRequest2.cancel();
                }
            });
            return;
        }
        this.mCbaManager.initBeforeProceedingWithRequest(this.mTelemetryHelper);
        j16 keyForAuth = yubiKitSmartcardSession.getKeyForAuth(yubiKitCertDetails, cArr);
        X509Certificate[] x509CertificateArr = {yubiKitCertDetails.getCertificate()};
        this.mTelemetryHelper.setPublicKeyAlgoType(x509CertificateArr[0].getPublicKey().getAlgorithm());
        this.mDialogHolder.dismissDialog();
        this.mIsCertBasedAuthProceeding = true;
        clientCertRequest.proceed(keyForAuth, x509CertificateArr);
    }
}
