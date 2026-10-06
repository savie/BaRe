package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import android.webkit.ClientCertRequest;
import com.microsoft.identity.common.internal.ui.webview.ISendResultCallback;
import com.microsoft.identity.common.logging.Logger;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class NfcSmartcardCertBasedAuthChallengeHandler extends AbstractSmartcardCertBasedAuthChallengeHandler<YubiKitNfcSmartcardCertBasedAuthManager> {

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.NfcSmartcardCertBasedAuthChallengeHandler$2, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass2 implements IDisconnectionCallback {
        final /* synthetic */ AtomicBoolean val$hasCallbackBeenCalled;
        final /* synthetic */ IDisconnectionCallback val$nextInteractionCallback;

        public AnonymousClass2(AtomicBoolean atomicBoolean, IDisconnectionCallback iDisconnectionCallback) {
            this.val$hasCallbackBeenCalled = atomicBoolean;
            this.val$nextInteractionCallback = iDisconnectionCallback;
        }

        @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.IDisconnectionCallback
        public final void onClosedConnection() {
            if (this.val$hasCallbackBeenCalled.compareAndSet(false, true)) {
                NfcSmartcardCertBasedAuthChallengeHandler nfcSmartcardCertBasedAuthChallengeHandler = NfcSmartcardCertBasedAuthChallengeHandler.this;
                nfcSmartcardCertBasedAuthChallengeHandler.mDialogHolder.dismissDialog();
                ((YubiKitNfcSmartcardCertBasedAuthManager) nfcSmartcardCertBasedAuthChallengeHandler.mCbaManager).stopDiscovery(nfcSmartcardCertBasedAuthChallengeHandler.mActivity);
                this.val$nextInteractionCallback.onClosedConnection();
            }
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.NfcSmartcardCertBasedAuthChallengeHandler$3, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass3 implements SmartcardPinDialog.PositiveButtonListener {
        final /* synthetic */ YubiKitCertDetails val$certDetails;
        final /* synthetic */ String val$methodTag;
        final /* synthetic */ ClientCertRequest val$request;

        /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.NfcSmartcardCertBasedAuthChallengeHandler$3$2, reason: invalid class name */
        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        final class AnonymousClass2 implements IConnectionCallback {
            final /* synthetic */ char[] val$pin;

            public AnonymousClass2(char[] cArr) {
                this.val$pin = cArr;
            }

            @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.IConnectionCallback
            public final void onCreateConnection() {
                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                NfcSmartcardCertBasedAuthChallengeHandler nfcSmartcardCertBasedAuthChallengeHandler = NfcSmartcardCertBasedAuthChallengeHandler.this;
                nfcSmartcardCertBasedAuthChallengeHandler.mDialogHolder.showSmartcardNfcLoadingDialog();
                YubiKitNfcSmartcardCertBasedAuthManager yubiKitNfcSmartcardCertBasedAuthManager = (YubiKitNfcSmartcardCertBasedAuthManager) nfcSmartcardCertBasedAuthChallengeHandler.mCbaManager;
                if (!yubiKitNfcSmartcardCertBasedAuthManager.isDeviceChanged) {
                    yubiKitNfcSmartcardCertBasedAuthManager.requestDeviceSession(new AbstractSmartcardCertBasedAuthManager.ISessionCallback() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.NfcSmartcardCertBasedAuthChallengeHandler.3.2.2
                        @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthManager.ISessionCallback
                        public final void onException(final Exception exc) {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            Arrays.fill(anonymousClass2.val$pin, (char) 0);
                            AnonymousClass3 anonymousClass4 = AnonymousClass3.this;
                            anonymousClass4.val$request.cancel();
                            NfcSmartcardCertBasedAuthChallengeHandler.this.prepForNextUserInteraction(new IDisconnectionCallback() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.NfcSmartcardCertBasedAuthChallengeHandler.3.2.2.1
                                @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.IDisconnectionCallback
                                public final void onClosedConnection() {
                                    AnonymousClass3 anonymousClass5 = AnonymousClass3.this;
                                    NfcSmartcardCertBasedAuthChallengeHandler.this.indicateGeneralException(anonymousClass5.val$methodTag, exc);
                                }
                            });
                        }

                        @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthManager.ISessionCallback
                        public final void onGetSession(YubiKitSmartcardSession yubiKitSmartcardSession) throws Exception {
                            AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                            AnonymousClass3 anonymousClass4 = AnonymousClass3.this;
                            NfcSmartcardCertBasedAuthChallengeHandler nfcSmartcardCertBasedAuthChallengeHandler2 = NfcSmartcardCertBasedAuthChallengeHandler.this;
                            char[] cArr = anonymousClass2.val$pin;
                            nfcSmartcardCertBasedAuthChallengeHandler2.tryUsingSmartcardWithPin(cArr, anonymousClass4.val$certDetails, anonymousClass4.val$request, yubiKitSmartcardSession);
                            Arrays.fill(cArr, (char) 0);
                        }
                    });
                    return;
                }
                Arrays.fill(this.val$pin, (char) 0);
                anonymousClass3.val$request.cancel();
                nfcSmartcardCertBasedAuthChallengeHandler.prepForNextUserInteraction(new IDisconnectionCallback() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.NfcSmartcardCertBasedAuthChallengeHandler.3.2.1
                    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.IDisconnectionCallback
                    public final void onClosedConnection() {
                        AnonymousClass3 anonymousClass4 = AnonymousClass3.this;
                        String str = anonymousClass4.val$methodTag;
                        int i = Logger.a;
                        com.microsoft.identity.common.java.logging.Logger.info(str, "Device connected via NFC is different from initially connected device.");
                        NfcSmartcardCertBasedAuthChallengeHandler.this.mTelemetryHelper.setResultFailure("Device connected via NFC is different from initially connected device.");
                        NfcSmartcardCertBasedAuthChallengeHandler.this.mDialogHolder.showErrorDialog();
                    }
                });
            }
        }

        public AnonymousClass3(ClientCertRequest clientCertRequest, String str, YubiKitCertDetails yubiKitCertDetails) {
            this.val$request = clientCertRequest;
            this.val$methodTag = str;
            this.val$certDetails = yubiKitCertDetails;
        }

        @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.SmartcardPinDialog.PositiveButtonListener
        public final void onClick(char[] cArr) {
            NfcSmartcardCertBasedAuthChallengeHandler nfcSmartcardCertBasedAuthChallengeHandler = NfcSmartcardCertBasedAuthChallengeHandler.this;
            nfcSmartcardCertBasedAuthChallengeHandler.mDialogHolder.showSmartcardNfcPromptDialog(new UsbSmartcardCertBasedAuthChallengeHandler.AnonymousClass5(this));
            YubiKitNfcSmartcardCertBasedAuthManager yubiKitNfcSmartcardCertBasedAuthManager = (YubiKitNfcSmartcardCertBasedAuthManager) nfcSmartcardCertBasedAuthChallengeHandler.mCbaManager;
            yubiKitNfcSmartcardCertBasedAuthManager.mConnectionCallback = new AnonymousClass2(cArr);
            yubiKitNfcSmartcardCertBasedAuthManager.startDiscovery(nfcSmartcardCertBasedAuthChallengeHandler.mActivity);
        }
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthChallengeHandler
    public final void clearAllManagerCallbacks() {
        ((YubiKitNfcSmartcardCertBasedAuthManager) this.mCbaManager).mConnectionCallback = null;
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthChallengeHandler
    public final SmartcardPinDialog.PositiveButtonListener getSmartcardPinDialogPositiveButtonListener(YubiKitCertDetails yubiKitCertDetails, ClientCertRequest clientCertRequest) {
        return new AnonymousClass3(clientCertRequest, this.TAG.concat(":getSmartcardPinDialogPositiveButtonListener"), yubiKitCertDetails);
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthChallengeHandler
    public final void prepForNextUserInteraction(final IDisconnectionCallback iDisconnectionCallback) {
        YubiKitNfcSmartcardCertBasedAuthManager yubiKitNfcSmartcardCertBasedAuthManager = (YubiKitNfcSmartcardCertBasedAuthManager) this.mCbaManager;
        if (!yubiKitNfcSmartcardCertBasedAuthManager.isDeviceConnected()) {
            iDisconnectionCallback.onClosedConnection();
            return;
        }
        clearAllManagerCallbacks();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.mDialogHolder.showSmartcardRemovalPromptDialog(new IDismissCallback() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.NfcSmartcardCertBasedAuthChallengeHandler.1
            @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.IDismissCallback
            public final void onDismiss() {
                if (atomicBoolean.compareAndSet(false, true)) {
                    NfcSmartcardCertBasedAuthChallengeHandler nfcSmartcardCertBasedAuthChallengeHandler = NfcSmartcardCertBasedAuthChallengeHandler.this;
                    ((YubiKitNfcSmartcardCertBasedAuthManager) nfcSmartcardCertBasedAuthChallengeHandler.mCbaManager).stopDiscovery(nfcSmartcardCertBasedAuthChallengeHandler.mActivity);
                    iDisconnectionCallback.onClosedConnection();
                }
            }
        });
        yubiKitNfcSmartcardCertBasedAuthManager.disconnect(new AnonymousClass2(atomicBoolean, iDisconnectionCallback));
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthChallengeHandler
    public final void promptSmartcardRemovalForResult(final ISendResultCallback iSendResultCallback) {
        if (((YubiKitNfcSmartcardCertBasedAuthManager) this.mCbaManager).isDeviceConnected()) {
            prepForNextUserInteraction(new IDisconnectionCallback() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.NfcSmartcardCertBasedAuthChallengeHandler.4
                @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.IDisconnectionCallback
                public final void onClosedConnection() {
                    iSendResultCallback.onResultReady();
                }
            });
        } else {
            iSendResultCallback.onResultReady();
        }
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthChallengeHandler
    public final void setPinDialogForIncorrectAttempt(YubiKitCertDetails yubiKitCertDetails, ClientCertRequest clientCertRequest) {
        SmartcardPinDialog.PositiveButtonListener smartcardPinDialogPositiveButtonListener = getSmartcardPinDialogPositiveButtonListener(yubiKitCertDetails, clientCertRequest);
        AbstractSmartcardCertBasedAuthChallengeHandler.AnonymousClass2 anonymousClass2 = new AbstractSmartcardCertBasedAuthChallengeHandler.AnonymousClass2(clientCertRequest);
        DialogHolder dialogHolder = this.mDialogHolder;
        dialogHolder.showPinDialog(smartcardPinDialogPositiveButtonListener, anonymousClass2);
        dialogHolder.setPinDialogErrorMode();
    }
}
