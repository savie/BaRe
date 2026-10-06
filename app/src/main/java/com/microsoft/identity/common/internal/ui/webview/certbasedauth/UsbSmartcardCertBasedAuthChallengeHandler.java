package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import android.app.Activity;
import android.webkit.ClientCertRequest;
import com.microsoft.identity.common.internal.ui.webview.ISendResultCallback;
import com.microsoft.identity.common.java.opentelemetry.CertBasedAuthTelemetryHelper;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class UsbSmartcardCertBasedAuthChallengeHandler extends AbstractSmartcardCertBasedAuthChallengeHandler<YubiKitUsbSmartcardCertBasedAuthManager> {

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.UsbSmartcardCertBasedAuthChallengeHandler$5, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass5 implements ICancelCbaCallback, IDismissCallback {
        final /* synthetic */ Object val$callback;

        public /* synthetic */ AnonymousClass5(Object obj) {
            this.val$callback = obj;
        }

        public void onCancel() {
            NfcSmartcardCertBasedAuthChallengeHandler.AnonymousClass3 anonymousClass3 = (NfcSmartcardCertBasedAuthChallengeHandler.AnonymousClass3) this.val$callback;
            NfcSmartcardCertBasedAuthChallengeHandler nfcSmartcardCertBasedAuthChallengeHandler = NfcSmartcardCertBasedAuthChallengeHandler.this;
            ClientCertRequest clientCertRequest = anonymousClass3.val$request;
            nfcSmartcardCertBasedAuthChallengeHandler.mDialogHolder.dismissDialog();
            nfcSmartcardCertBasedAuthChallengeHandler.mTelemetryHelper.setResultFailure("User canceled smartcard CBA flow.");
            clientCertRequest.cancel();
            ((YubiKitNfcSmartcardCertBasedAuthManager) nfcSmartcardCertBasedAuthChallengeHandler.mCbaManager).stopDiscovery(nfcSmartcardCertBasedAuthChallengeHandler.mActivity);
        }

        @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.IDismissCallback
        public void onDismiss() {
            ((ISendResultCallback) this.val$callback).onResultReady();
        }
    }

    public UsbSmartcardCertBasedAuthChallengeHandler(Activity activity, YubiKitUsbSmartcardCertBasedAuthManager yubiKitUsbSmartcardCertBasedAuthManager, DialogHolder dialogHolder, CertBasedAuthTelemetryHelper certBasedAuthTelemetryHelper) {
        super(activity, yubiKitUsbSmartcardCertBasedAuthManager, dialogHolder, certBasedAuthTelemetryHelper, "UsbSmartcardCertBasedAuthChallengeHandler");
        yubiKitUsbSmartcardCertBasedAuthManager.mConnectionCallback = new DialogHolder.AnonymousClass1(this);
        yubiKitUsbSmartcardCertBasedAuthManager.mDisconnectionCallback = new DialogHolder.AnonymousClass2(this);
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthChallengeHandler
    public final void clearAllManagerCallbacks() {
        T t = this.mCbaManager;
        ((YubiKitUsbSmartcardCertBasedAuthManager) t).mConnectionCallback = null;
        ((YubiKitUsbSmartcardCertBasedAuthManager) t).mDisconnectionCallback = null;
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthChallengeHandler
    public final SmartcardPinDialog.PositiveButtonListener getSmartcardPinDialogPositiveButtonListener(final YubiKitCertDetails yubiKitCertDetails, final ClientCertRequest clientCertRequest) {
        final String strConcat = this.TAG.concat(":getSmartcardPinDialogPositiveButtonListener");
        return new SmartcardPinDialog.PositiveButtonListener() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.UsbSmartcardCertBasedAuthChallengeHandler.3
            @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardPinDialog.PositiveButtonListener
            public final void onClick(final char[] cArr) {
                ((YubiKitUsbSmartcardCertBasedAuthManager) UsbSmartcardCertBasedAuthChallengeHandler.this.mCbaManager).requestDeviceSession(new AbstractSmartcardCertBasedAuthManager.ISessionCallback() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.UsbSmartcardCertBasedAuthChallengeHandler.3.1
                    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthManager.ISessionCallback
                    public final void onException(Exception exc) {
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        UsbSmartcardCertBasedAuthChallengeHandler usbSmartcardCertBasedAuthChallengeHandler = UsbSmartcardCertBasedAuthChallengeHandler.this;
                        usbSmartcardCertBasedAuthChallengeHandler.indicateGeneralException(strConcat, exc);
                        usbSmartcardCertBasedAuthChallengeHandler.clearAllManagerCallbacks();
                        clientCertRequest.cancel();
                        Arrays.fill(cArr, (char) 0);
                    }

                    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthManager.ISessionCallback
                    public final void onGetSession(YubiKitSmartcardSession yubiKitSmartcardSession) throws Exception {
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        UsbSmartcardCertBasedAuthChallengeHandler usbSmartcardCertBasedAuthChallengeHandler = UsbSmartcardCertBasedAuthChallengeHandler.this;
                        YubiKitCertDetails yubiKitCertDetails2 = yubiKitCertDetails;
                        ClientCertRequest clientCertRequest2 = clientCertRequest;
                        char[] cArr2 = cArr;
                        usbSmartcardCertBasedAuthChallengeHandler.tryUsingSmartcardWithPin(cArr2, yubiKitCertDetails2, clientCertRequest2, yubiKitSmartcardSession);
                        Arrays.fill(cArr2, (char) 0);
                    }
                });
            }
        };
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthChallengeHandler
    public final void prepForNextUserInteraction(IDisconnectionCallback iDisconnectionCallback) {
        iDisconnectionCallback.onClosedConnection();
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthChallengeHandler
    public final void promptSmartcardRemovalForResult(final ISendResultCallback iSendResultCallback) {
        YubiKitUsbSmartcardCertBasedAuthManager yubiKitUsbSmartcardCertBasedAuthManager = (YubiKitUsbSmartcardCertBasedAuthManager) this.mCbaManager;
        if (!yubiKitUsbSmartcardCertBasedAuthManager.isDeviceConnected() || yubiKitUsbSmartcardCertBasedAuthManager.mUsbDeviceInitiallyPluggedIn) {
            iSendResultCallback.onResultReady();
            return;
        }
        yubiKitUsbSmartcardCertBasedAuthManager.mDisconnectionCallback = new IDisconnectionCallback() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.UsbSmartcardCertBasedAuthChallengeHandler.4
            @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.IDisconnectionCallback
            public final void onClosedConnection() {
                UsbSmartcardCertBasedAuthChallengeHandler.this.mDialogHolder.dismissDialog();
                iSendResultCallback.onResultReady();
            }
        };
        this.mDialogHolder.showSmartcardRemovalPromptDialog(new AnonymousClass5(iSendResultCallback));
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthChallengeHandler
    public final void setPinDialogForIncorrectAttempt(YubiKitCertDetails yubiKitCertDetails, ClientCertRequest clientCertRequest) {
        this.mDialogHolder.setPinDialogErrorMode();
    }
}
