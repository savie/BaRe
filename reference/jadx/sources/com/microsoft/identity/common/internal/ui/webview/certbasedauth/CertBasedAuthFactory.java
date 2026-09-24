package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import android.content.Context;
import android.webkit.WebView;
import androidx.fragment.app.u;
import com.microsoft.identity.common.internal.providers.oauth2.AuthorizationActivity;
import com.microsoft.identity.common.java.opentelemetry.CertBasedAuthChoice;
import com.microsoft.identity.common.java.opentelemetry.CertBasedAuthTelemetryHelper;
import com.microsoft.identity.common.logging.Logger;
import defpackage.rm5;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CertBasedAuthFactory {
    private final u mActivity;
    private final DialogHolder mDialogHolder;
    private final YubiKitNfcSmartcardCertBasedAuthManager mNfcSmartcardCertBasedAuthManager;
    private final YubiKitUsbSmartcardCertBasedAuthManager mUsbSmartcardCertBasedAuthManager;
    private boolean wasCertBasedAuthInitiated;

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.CertBasedAuthFactory$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 implements UserChoiceDialog.PositiveButtonListener {
        final /* synthetic */ CertBasedAuthFactory this$0;
        final /* synthetic */ CertBasedAuthChallengeHandlerCallback val$callback;
        final /* synthetic */ CertBasedAuthTelemetryHelper val$telemetryHelper;

        public AnonymousClass1(CertBasedAuthChallengeHandlerCallback certBasedAuthChallengeHandlerCallback, CertBasedAuthFactory certBasedAuthFactory, CertBasedAuthTelemetryHelper certBasedAuthTelemetryHelper) {
            this.this$0 = certBasedAuthFactory;
            this.val$telemetryHelper = certBasedAuthTelemetryHelper;
            this.val$callback = certBasedAuthChallengeHandlerCallback;
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.CertBasedAuthFactory$2, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass2 implements ICancelCbaCallback {
        final /* synthetic */ CertBasedAuthFactory this$0;
        final /* synthetic */ CertBasedAuthChallengeHandlerCallback val$callback;
        final /* synthetic */ CertBasedAuthTelemetryHelper val$telemetryHelper;

        public AnonymousClass2(CertBasedAuthChallengeHandlerCallback certBasedAuthChallengeHandlerCallback, CertBasedAuthFactory certBasedAuthFactory, CertBasedAuthTelemetryHelper certBasedAuthTelemetryHelper) {
            this.this$0 = certBasedAuthFactory;
            this.val$callback = certBasedAuthChallengeHandlerCallback;
            this.val$telemetryHelper = certBasedAuthTelemetryHelper;
        }

        public final void onCancel() {
            CertBasedAuthFactory.access$300(this.val$callback, this.this$0, this.val$telemetryHelper);
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.CertBasedAuthFactory$3, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass3 implements IDismissCallback {
        final /* synthetic */ CertBasedAuthFactory this$0;
        final /* synthetic */ CertBasedAuthChallengeHandlerCallback val$callback;
        final /* synthetic */ CertBasedAuthTelemetryHelper val$telemetryHelper;

        public AnonymousClass3(CertBasedAuthChallengeHandlerCallback certBasedAuthChallengeHandlerCallback, CertBasedAuthFactory certBasedAuthFactory, CertBasedAuthTelemetryHelper certBasedAuthTelemetryHelper) {
            this.this$0 = certBasedAuthFactory;
            this.val$callback = certBasedAuthChallengeHandlerCallback;
            this.val$telemetryHelper = certBasedAuthTelemetryHelper;
        }

        @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.IDismissCallback
        public final void onDismiss() {
            CertBasedAuthFactory certBasedAuthFactory = this.this$0;
            YubiKitUsbSmartcardCertBasedAuthManager yubiKitUsbSmartcardCertBasedAuthManager = certBasedAuthFactory.mUsbSmartcardCertBasedAuthManager;
            CertBasedAuthTelemetryHelper certBasedAuthTelemetryHelper = this.val$telemetryHelper;
            CertBasedAuthChallengeHandlerCallback certBasedAuthChallengeHandlerCallback = this.val$callback;
            if (yubiKitUsbSmartcardCertBasedAuthManager == null || !certBasedAuthFactory.mUsbSmartcardCertBasedAuthManager.isDeviceConnected()) {
                certBasedAuthFactory.showSmartcardPromptDialogAndSetConnectionCallback(certBasedAuthChallengeHandlerCallback, certBasedAuthTelemetryHelper);
            } else {
                certBasedAuthChallengeHandlerCallback.onReceived(new UsbSmartcardCertBasedAuthChallengeHandler(certBasedAuthFactory.mActivity, certBasedAuthFactory.mUsbSmartcardCertBasedAuthManager, certBasedAuthFactory.mDialogHolder, certBasedAuthTelemetryHelper));
            }
        }
    }

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.CertBasedAuthFactory$4, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass4 implements ICancelCbaCallback {
        final /* synthetic */ CertBasedAuthFactory this$0;
        final /* synthetic */ CertBasedAuthChallengeHandlerCallback val$challengeHandlerCallback;
        final /* synthetic */ CertBasedAuthTelemetryHelper val$telemetryHelper;

        public AnonymousClass4(CertBasedAuthChallengeHandlerCallback certBasedAuthChallengeHandlerCallback, CertBasedAuthFactory certBasedAuthFactory, CertBasedAuthTelemetryHelper certBasedAuthTelemetryHelper) {
            this.this$0 = certBasedAuthFactory;
            this.val$challengeHandlerCallback = certBasedAuthChallengeHandlerCallback;
            this.val$telemetryHelper = certBasedAuthTelemetryHelper;
        }

        public final void onCancel() {
            CertBasedAuthFactory certBasedAuthFactory = this.this$0;
            if (certBasedAuthFactory.mNfcSmartcardCertBasedAuthManager != null) {
                certBasedAuthFactory.mNfcSmartcardCertBasedAuthManager.stopDiscovery(certBasedAuthFactory.mActivity);
            }
            CertBasedAuthFactory.access$300(this.val$challengeHandlerCallback, certBasedAuthFactory, this.val$telemetryHelper);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public interface CertBasedAuthChallengeHandlerCallback {
        void onReceived(AbstractCertBasedAuthChallengeHandler abstractCertBasedAuthChallengeHandler);
    }

    public CertBasedAuthFactory(u uVar) {
        YubiKitUsbSmartcardCertBasedAuthManager yubiKitUsbSmartcardCertBasedAuthManager;
        this.mActivity = uVar;
        Context applicationContext = uVar.getApplicationContext();
        YubiKitNfcSmartcardCertBasedAuthManager yubiKitNfcSmartcardCertBasedAuthManager = null;
        if (applicationContext.getSystemService("usb") == null) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("SmartcardCertBasedAuthManagerFactory:createUsbSmartcardCertBasedAuthManager", "Certificate Based Authentication via YubiKey not enabled due to device not supporting the USB_SERVICE system service.");
            yubiKitUsbSmartcardCertBasedAuthManager = null;
        } else {
            yubiKitUsbSmartcardCertBasedAuthManager = new YubiKitUsbSmartcardCertBasedAuthManager(applicationContext);
        }
        this.mUsbSmartcardCertBasedAuthManager = yubiKitUsbSmartcardCertBasedAuthManager;
        try {
            yubiKitNfcSmartcardCertBasedAuthManager = new YubiKitNfcSmartcardCertBasedAuthManager(uVar.getApplicationContext());
        } catch (rm5 unused) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("SmartcardCertBasedAuthManagerFactory:createNfcSmartcardCertBasedAuthManager", "Device does not support NFC capabilities.");
        }
        this.mNfcSmartcardCertBasedAuthManager = yubiKitNfcSmartcardCertBasedAuthManager;
        this.mDialogHolder = new DialogHolder(this.mActivity);
        this.wasCertBasedAuthInitiated = false;
        YubiKitUsbSmartcardCertBasedAuthManager yubiKitUsbSmartcardCertBasedAuthManager2 = this.mUsbSmartcardCertBasedAuthManager;
        if (yubiKitUsbSmartcardCertBasedAuthManager2 != null) {
            yubiKitUsbSmartcardCertBasedAuthManager2.startDiscovery(uVar);
        }
    }

    public static void access$200(CertBasedAuthChallengeHandlerCallback certBasedAuthChallengeHandlerCallback, CertBasedAuthFactory certBasedAuthFactory, CertBasedAuthTelemetryHelper certBasedAuthTelemetryHelper) {
        DialogHolder dialogHolder = certBasedAuthFactory.mDialogHolder;
        u uVar = certBasedAuthFactory.mActivity;
        YubiKitUsbSmartcardCertBasedAuthManager yubiKitUsbSmartcardCertBasedAuthManager = certBasedAuthFactory.mUsbSmartcardCertBasedAuthManager;
        if (yubiKitUsbSmartcardCertBasedAuthManager != null && yubiKitUsbSmartcardCertBasedAuthManager.isDeviceConnected()) {
            certBasedAuthChallengeHandlerCallback.onReceived(new UsbSmartcardCertBasedAuthChallengeHandler(uVar, yubiKitUsbSmartcardCertBasedAuthManager, dialogHolder, certBasedAuthTelemetryHelper));
            return;
        }
        YubiKitNfcSmartcardCertBasedAuthManager yubiKitNfcSmartcardCertBasedAuthManager = certBasedAuthFactory.mNfcSmartcardCertBasedAuthManager;
        if (yubiKitNfcSmartcardCertBasedAuthManager == null || !yubiKitNfcSmartcardCertBasedAuthManager.startDiscovery(uVar)) {
            certBasedAuthFactory.showSmartcardPromptDialogAndSetConnectionCallback(certBasedAuthChallengeHandlerCallback, certBasedAuthTelemetryHelper);
        } else {
            dialogHolder.showSmartcardNfcReminderDialog(new AnonymousClass3(certBasedAuthChallengeHandlerCallback, certBasedAuthFactory, certBasedAuthTelemetryHelper));
        }
    }

    public static void access$300(CertBasedAuthChallengeHandlerCallback certBasedAuthChallengeHandlerCallback, CertBasedAuthFactory certBasedAuthFactory, CertBasedAuthTelemetryHelper certBasedAuthTelemetryHelper) {
        certBasedAuthFactory.mDialogHolder.dismissDialog();
        certBasedAuthTelemetryHelper.setResultFailure("User canceled smartcard CBA flow.");
        YubiKitNfcSmartcardCertBasedAuthManager yubiKitNfcSmartcardCertBasedAuthManager = certBasedAuthFactory.mNfcSmartcardCertBasedAuthManager;
        if (yubiKitNfcSmartcardCertBasedAuthManager != null) {
            yubiKitNfcSmartcardCertBasedAuthManager.mConnectionCallback = null;
        }
        YubiKitUsbSmartcardCertBasedAuthManager yubiKitUsbSmartcardCertBasedAuthManager = certBasedAuthFactory.mUsbSmartcardCertBasedAuthManager;
        if (yubiKitUsbSmartcardCertBasedAuthManager != null) {
            yubiKitUsbSmartcardCertBasedAuthManager.mConnectionCallback = null;
        }
        certBasedAuthChallengeHandlerCallback.onReceived(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showSmartcardPromptDialogAndSetConnectionCallback(final CertBasedAuthChallengeHandlerCallback certBasedAuthChallengeHandlerCallback, final CertBasedAuthTelemetryHelper certBasedAuthTelemetryHelper) {
        this.mDialogHolder.showSmartcardPromptDialog(new AnonymousClass4(certBasedAuthChallengeHandlerCallback, this, certBasedAuthTelemetryHelper));
        YubiKitUsbSmartcardCertBasedAuthManager yubiKitUsbSmartcardCertBasedAuthManager = this.mUsbSmartcardCertBasedAuthManager;
        if (yubiKitUsbSmartcardCertBasedAuthManager != null) {
            yubiKitUsbSmartcardCertBasedAuthManager.mConnectionCallback = new IConnectionCallback() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.CertBasedAuthFactory.5
                @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.IConnectionCallback
                public final void onCreateConnection() {
                    CertBasedAuthFactory certBasedAuthFactory = this;
                    if (certBasedAuthFactory.mNfcSmartcardCertBasedAuthManager != null) {
                        certBasedAuthFactory.mNfcSmartcardCertBasedAuthManager.stopDiscovery(certBasedAuthFactory.mActivity);
                        certBasedAuthFactory.clearAllSmartcardConnectionAndDisconnectionCallbacks();
                    }
                    certBasedAuthChallengeHandlerCallback.onReceived(new UsbSmartcardCertBasedAuthChallengeHandler(certBasedAuthFactory.mActivity, certBasedAuthFactory.mUsbSmartcardCertBasedAuthManager, certBasedAuthFactory.mDialogHolder, certBasedAuthTelemetryHelper));
                }
            };
        }
        YubiKitNfcSmartcardCertBasedAuthManager yubiKitNfcSmartcardCertBasedAuthManager = this.mNfcSmartcardCertBasedAuthManager;
        if (yubiKitNfcSmartcardCertBasedAuthManager == null) {
            return;
        }
        yubiKitNfcSmartcardCertBasedAuthManager.mConnectionCallback = new IConnectionCallback() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.CertBasedAuthFactory.6
            @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.IConnectionCallback
            public final void onCreateConnection() {
                CertBasedAuthFactory certBasedAuthFactory = this;
                if (certBasedAuthFactory.mUsbSmartcardCertBasedAuthManager != null) {
                    certBasedAuthFactory.clearAllSmartcardConnectionAndDisconnectionCallbacks();
                }
                certBasedAuthFactory.mDialogHolder.showSmartcardNfcLoadingDialog();
                certBasedAuthChallengeHandlerCallback.onReceived(new NfcSmartcardCertBasedAuthChallengeHandler(certBasedAuthFactory.mActivity, certBasedAuthFactory.mNfcSmartcardCertBasedAuthManager, certBasedAuthFactory.mDialogHolder, certBasedAuthTelemetryHelper, "NfcSmartcardCertBasedAuthChallengeHandler"));
            }
        };
    }

    public final void clearAllSmartcardConnectionAndDisconnectionCallbacks() {
        YubiKitUsbSmartcardCertBasedAuthManager yubiKitUsbSmartcardCertBasedAuthManager = this.mUsbSmartcardCertBasedAuthManager;
        if (yubiKitUsbSmartcardCertBasedAuthManager != null) {
            yubiKitUsbSmartcardCertBasedAuthManager.mConnectionCallback = null;
            yubiKitUsbSmartcardCertBasedAuthManager.mDisconnectionCallback = null;
        }
        YubiKitNfcSmartcardCertBasedAuthManager yubiKitNfcSmartcardCertBasedAuthManager = this.mNfcSmartcardCertBasedAuthManager;
        if (yubiKitNfcSmartcardCertBasedAuthManager != null) {
            yubiKitNfcSmartcardCertBasedAuthManager.mConnectionCallback = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    public final void createCertBasedAuthChallengeHandler(CertBasedAuthChallengeHandlerCallback certBasedAuthChallengeHandlerCallback) {
        CertBasedAuthTelemetryHelper certBasedAuthTelemetryHelper;
        u uVar = this.mActivity;
        if (uVar instanceof AuthorizationActivity) {
            AuthorizationActivity authorizationActivity = (AuthorizationActivity) uVar;
            if (authorizationActivity.getSpanContext() != null) {
                certBasedAuthTelemetryHelper = new CertBasedAuthTelemetryHelper(authorizationActivity.getSpanContext());
            } else {
                certBasedAuthTelemetryHelper = new CertBasedAuthTelemetryHelper();
            }
        } else {
            certBasedAuthTelemetryHelper = new CertBasedAuthTelemetryHelper();
        }
        certBasedAuthTelemetryHelper.setUserChoice(CertBasedAuthChoice.NON_APPLICABLE);
        certBasedAuthTelemetryHelper.setCertBasedAuthChallengeHandler("N/A");
        certBasedAuthTelemetryHelper.setPublicKeyAlgoType("N/A");
        this.wasCertBasedAuthInitiated = true;
        DialogHolder dialogHolder = this.mDialogHolder;
        YubiKitUsbSmartcardCertBasedAuthManager yubiKitUsbSmartcardCertBasedAuthManager = this.mUsbSmartcardCertBasedAuthManager;
        if (yubiKitUsbSmartcardCertBasedAuthManager == null || !yubiKitUsbSmartcardCertBasedAuthManager.isDeviceConnected()) {
            dialogHolder.showUserChoiceDialog(new AnonymousClass1(certBasedAuthChallengeHandlerCallback, this, certBasedAuthTelemetryHelper), new AnonymousClass2(certBasedAuthChallengeHandlerCallback, this, certBasedAuthTelemetryHelper));
        } else {
            certBasedAuthTelemetryHelper.setUserChoice(CertBasedAuthChoice.SMARTCARD_CHOICE);
            certBasedAuthChallengeHandlerCallback.onReceived(new UsbSmartcardCertBasedAuthChallengeHandler(uVar, yubiKitUsbSmartcardCertBasedAuthManager, dialogHolder, certBasedAuthTelemetryHelper));
        }
    }

    public final void onDestroy() {
        YubiKitUsbSmartcardCertBasedAuthManager yubiKitUsbSmartcardCertBasedAuthManager = this.mUsbSmartcardCertBasedAuthManager;
        if (yubiKitUsbSmartcardCertBasedAuthManager != null) {
            yubiKitUsbSmartcardCertBasedAuthManager.stopDiscovery(this.mActivity);
        }
        if (this.mNfcSmartcardCertBasedAuthManager != null) {
            YubiKeyPivProviderManager.removePivProvider();
        }
        if (this.wasCertBasedAuthInitiated) {
            WebView.clearClientCertPreferences(null);
        }
    }
}
