package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import android.app.Activity;
import android.content.Context;
import android.hardware.usb.UsbDevice;
import android.hardware.usb.UsbManager;
import com.microsoft.identity.common.java.opentelemetry.CertBasedAuthTelemetryHelper;
import com.microsoft.identity.common.logging.Logger;
import defpackage.ai7;
import defpackage.cn6;
import defpackage.kg8;
import defpackage.vz0;
import defpackage.w16;
import defpackage.wg8;
import defpackage.zg8;
import java.util.Iterator;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class YubiKitUsbSmartcardCertBasedAuthManager extends AbstractSmartcardCertBasedAuthManager {
    private static final Object sDeviceLock = new Object();
    protected IDisconnectionCallback mDisconnectionCallback;
    private wg8 mUsbDevice;
    protected final boolean mUsbDeviceInitiallyPluggedIn;
    private final zg8 mUsbYubiKeyManager;

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.ui.webview.certbasedauth.YubiKitUsbSmartcardCertBasedAuthManager$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 implements vz0 {
        public AnonymousClass1() {
        }

        @Override // defpackage.vz0
        public final void invoke(Object obj) {
            wg8 wg8Var = (wg8) obj;
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("YubiKitUsbSmartcardCertBasedAuthManager:startDiscovery", "A YubiKey device was connected via USB.");
            synchronized (YubiKitUsbSmartcardCertBasedAuthManager.sDeviceLock) {
                try {
                    YubiKitUsbSmartcardCertBasedAuthManager.this.mUsbDevice = wg8Var;
                    IConnectionCallback iConnectionCallback = YubiKitUsbSmartcardCertBasedAuthManager.this.mConnectionCallback;
                    if (iConnectionCallback != null) {
                        iConnectionCallback.onCreateConnection();
                    }
                    wg8 wg8Var2 = YubiKitUsbSmartcardCertBasedAuthManager.this.mUsbDevice;
                    SmartcardPromptDialog.AnonymousClass1 anonymousClass1 = new SmartcardPromptDialog.AnonymousClass1(this, 1);
                    if (wg8Var2.a.isTerminated()) {
                        anonymousClass1.run();
                    } else {
                        wg8Var2.k = anonymousClass1;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public YubiKitUsbSmartcardCertBasedAuthManager(Context context) {
        this.mUsbYubiKeyManager = new zg8(context.getApplicationContext());
        Iterator<UsbDevice> it = ((UsbManager) context.getSystemService("usb")).getDeviceList().values().iterator();
        while (it.hasNext()) {
            if (it.next().getVendorId() == 4176) {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.verbose("YubiKitUsbSmartcardCertBasedAuthManager", "A YubiKey device is plugged-in upon manager start-up.");
                this.mUsbDeviceInitiallyPluggedIn = true;
                return;
            }
        }
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthManager
    public final void initBeforeProceedingWithRequest(CertBasedAuthTelemetryHelper certBasedAuthTelemetryHelper) {
        YubiKeyPivProviderManager.addPivProvider(certBasedAuthTelemetryHelper, new vz0() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.YubiKitUsbSmartcardCertBasedAuthManager.3
            @Override // defpackage.vz0
            public final void invoke(Object obj) {
                final vz0 vz0Var = (vz0) obj;
                synchronized (YubiKitUsbSmartcardCertBasedAuthManager.sDeviceLock) {
                    try {
                        if (YubiKitUsbSmartcardCertBasedAuthManager.this.isDeviceConnected()) {
                            YubiKitUsbSmartcardCertBasedAuthManager.this.mUsbDevice.a(new vz0() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.YubiKitUsbSmartcardCertBasedAuthManager.3.1
                                @Override // defpackage.vz0
                                public final void invoke(Object obj2) {
                                    final cn6 cn6Var = (cn6) obj2;
                                    vz0Var.invoke(cn6.c(new Callable<w16>() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.YubiKitUsbSmartcardCertBasedAuthManager.3.1.1
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
                        com.microsoft.identity.common.java.logging.Logger.error("YubiKitUsbSmartcardCertBasedAuthManagergetPivProviderCallback:", "No USB device is currently connected.", null);
                        vz0Var.invoke(cn6.a(new Exception("No USB device is currently connected.")));
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
            z = this.mUsbDevice != null;
        }
        return z;
    }

    @Override // com.microsoft.identity.common.internal.ui.webview.certbasedauth.AbstractSmartcardCertBasedAuthManager
    public final void requestDeviceSession(final AbstractSmartcardCertBasedAuthManager.ISessionCallback iSessionCallback) {
        synchronized (sDeviceLock) {
            try {
                if (isDeviceConnected()) {
                    this.mUsbDevice.a(new vz0() { // from class: com.microsoft.identity.common.internal.ui.webview.certbasedauth.YubiKitUsbSmartcardCertBasedAuthManager.2
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
                com.microsoft.identity.common.java.logging.Logger.error("YubiKitUsbSmartcardCertBasedAuthManagerrequestDeviceSession:", "No USB device is currently connected.", null);
                iSessionCallback.onException(new Exception());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean startDiscovery(Activity activity) {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("YubiKitUsbSmartcardCertBasedAuthManager:startDiscovery", "Starting YubiKey discovery for USB");
        this.mUsbYubiKeyManager.b(new kg8(), new AnonymousClass1());
        return true;
    }

    public final void stopDiscovery(Activity activity) {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("YubiKitUsbSmartcardCertBasedAuthManager:stopDiscovery", "Stopping YubiKey discovery for USB");
        synchronized (sDeviceLock) {
            this.mUsbDevice = null;
            this.mUsbYubiKeyManager.a();
        }
    }
}
