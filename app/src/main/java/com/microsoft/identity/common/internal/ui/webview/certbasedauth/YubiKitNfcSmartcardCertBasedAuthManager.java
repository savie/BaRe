package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import android.app.Activity;
import android.content.Context;
import android.nfc.NfcAdapter;
import com.microsoft.identity.common.java.opentelemetry.CertBasedAuthTelemetryHelper;
import com.microsoft.identity.common.logging.Logger;
import defpackage.ai7;
import defpackage.bp0;
import defpackage.bq4;
import defpackage.cn6;
import defpackage.ke;
import defpackage.o12;
import defpackage.rm5;
import defpackage.um5;
import defpackage.vz0;
import defpackage.w16;
import java.util.Arrays;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class YubiKitNfcSmartcardCertBasedAuthManager extends AbstractSmartcardCertBasedAuthManager {
    private static final Object sDeviceLock = new Object();
    protected boolean isDeviceChanged = false;
    private um5 mNfcDevice;
    private final bp0 mNfcYubiKitManager;
    private byte[] mTagId;

    public YubiKitNfcSmartcardCertBasedAuthManager(Context context) throws rm5 {
        this.mNfcYubiKitManager = new bp0(context.getApplicationContext());
    }

    public final void disconnect(final IDisconnectionCallback iDisconnectionCallback) {
        synchronized (sDeviceLock) {
            try {
                um5 um5Var = this.mNfcDevice;
                if (um5Var != null) {
                    Runnable runnable = new Runnable() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.YubiKitNfcSmartcardCertBasedAuthManager.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i = Logger.a;
                            com.microsoft.identity.common.java.logging.Logger.info("YubiKitNfcSmartcardCertBasedAuthManager:disconnect", "YubiKey connected via NFC has been disconnected");
                            YubiKitNfcSmartcardCertBasedAuthManager.this.mNfcDevice = null;
                            ((NfcSmartcardCertBasedAuthChallengeHandler.AnonymousClass2) iDisconnectionCallback).onClosedConnection();
                        }
                    };
                    um5Var.a.set(true);
                    um5Var.b.submit(new o12(4, um5Var, runnable));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthManager
    public final void initBeforeProceedingWithRequest(CertBasedAuthTelemetryHelper certBasedAuthTelemetryHelper) {
        YubiKeyPivProviderManager.addPivProvider(certBasedAuthTelemetryHelper, new vz0() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.YubiKitNfcSmartcardCertBasedAuthManager.3
            @Override // defpackage.vz0
            public final void invoke(Object obj) {
                final vz0 vz0Var = (vz0) obj;
                synchronized (YubiKitNfcSmartcardCertBasedAuthManager.sDeviceLock) {
                    try {
                        if (YubiKitNfcSmartcardCertBasedAuthManager.this.isDeviceConnected()) {
                            YubiKitNfcSmartcardCertBasedAuthManager.this.mNfcDevice.b(new vz0() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.YubiKitNfcSmartcardCertBasedAuthManager.3.1
                                @Override // defpackage.vz0
                                public final void invoke(Object obj2) {
                                    final cn6 cn6Var = (cn6) obj2;
                                    vz0Var.invoke(cn6.c(new Callable<w16>() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.YubiKitNfcSmartcardCertBasedAuthManager.3.1.1
                                        @Override // java.util.concurrent.Callable
                                        public final w16 call() throws Exception {
                                            return new w16((ai7) cn6Var.b());
                                        }
                                    }));
                                }
                            });
                            return;
                        }
                        int i = Logger.a;
                        com.microsoft.identity.common.java.logging.Logger.error("YubiKitNfcSmartcardCertBasedAuthManagergetPivProviderCallback:", "No NFC device is currently connected.", null);
                        vz0Var.invoke(cn6.a(new Exception("No NFC device is currently connected.")));
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        });
    }

    public final boolean isDeviceConnected() {
        boolean z;
        synchronized (sDeviceLock) {
            z = this.mNfcDevice != null;
        }
        return z;
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthManager
    public final void requestDeviceSession(final AbstractSmartcardCertBasedAuthManager.ISessionCallback iSessionCallback) {
        synchronized (sDeviceLock) {
            try {
                if (isDeviceConnected()) {
                    this.mNfcDevice.b(new vz0() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.YubiKitNfcSmartcardCertBasedAuthManager.2
                        @Override // defpackage.vz0
                        public final void invoke(Object obj) {
                            cn6 cn6Var = (cn6) obj;
                            AbstractSmartcardCertBasedAuthManager.ISessionCallback iSessionCallback2 = iSessionCallback;
                            try {
                                iSessionCallback2.onGetSession(new YubiKitSmartcardSession(new w16((ai7) cn6Var.b())));
                            } catch (Exception e) {
                                iSessionCallback2.onException(e);
                            }
                        }
                    });
                    return;
                }
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.error("YubiKitNfcSmartcardCertBasedAuthManagerrequestDeviceSession:", "No NFC device is currently connected.", null);
                iSessionCallback.onException(new Exception());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean startDiscovery(Activity activity) {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("YubiKitNfcSmartcardCertBasedAuthManager:startDiscovery", "Starting YubiKey discovery for NFC");
        try {
            bp0 bp0Var = this.mNfcYubiKitManager;
            bq4 bq4Var = new bq4();
            bq4Var.a = 5000;
            bp0Var.a(activity, bq4Var, new vz0() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.YubiKitNfcSmartcardCertBasedAuthManager.1
                @Override // defpackage.vz0
                public final void invoke(Object obj) {
                    int i2 = Logger.a;
                    com.microsoft.identity.common.java.logging.Logger.info("YubiKitNfcSmartcardCertBasedAuthManager:startDiscovery", "A YubiKey device was connected via NFC.");
                    YubiKitNfcSmartcardCertBasedAuthManager yubiKitNfcSmartcardCertBasedAuthManager = YubiKitNfcSmartcardCertBasedAuthManager.this;
                    yubiKitNfcSmartcardCertBasedAuthManager.mNfcDevice = (um5) obj;
                    byte[] id = yubiKitNfcSmartcardCertBasedAuthManager.mNfcDevice.c.getId();
                    yubiKitNfcSmartcardCertBasedAuthManager.isDeviceChanged = (yubiKitNfcSmartcardCertBasedAuthManager.mTagId == null || Arrays.equals(yubiKitNfcSmartcardCertBasedAuthManager.mTagId, id)) ? false : true;
                    yubiKitNfcSmartcardCertBasedAuthManager.mTagId = id;
                    IConnectionCallback iConnectionCallback = yubiKitNfcSmartcardCertBasedAuthManager.mConnectionCallback;
                    if (iConnectionCallback != null) {
                        iConnectionCallback.onCreateConnection();
                    }
                }
            });
            return false;
        } catch (rm5 unused) {
            com.microsoft.identity.common.java.logging.Logger.info("YubiKitNfcSmartcardCertBasedAuthManager:startDiscovery", "Device has NFC functionality turned off.");
            return true;
        }
    }

    public final void stopDiscovery(Activity activity) {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("YubiKitNfcSmartcardCertBasedAuthManager:stopDiscovery", "Stopping YubiKey discovery for NFC");
        synchronized (sDeviceLock) {
            this.mNfcDevice = null;
            bp0 bp0Var = this.mNfcYubiKitManager;
            ExecutorService executorService = (ExecutorService) bp0Var.c;
            if (executorService != null) {
                executorService.shutdown();
                bp0Var.c = null;
            }
            ((NfcAdapter) ((ke) bp0Var.b).b).disableReaderMode(activity);
        }
    }
}
