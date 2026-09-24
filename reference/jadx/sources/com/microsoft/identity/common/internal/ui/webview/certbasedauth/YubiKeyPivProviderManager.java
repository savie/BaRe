package com.microsoft.identity.common.internal.ui.webview.certbasedauth;

import com.microsoft.identity.common.java.opentelemetry.CertBasedAuthTelemetryHelper;
import com.microsoft.identity.common.logging.Logger;
import defpackage.t16;
import defpackage.vz0;
import java.security.Security;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class YubiKeyPivProviderManager {
    public static void addPivProvider(CertBasedAuthTelemetryHelper certBasedAuthTelemetryHelper, vz0 vz0Var) {
        if (Security.getProvider("YKPiv") != null) {
            Security.removeProvider("YKPiv");
            certBasedAuthTelemetryHelper.setExistingPivProviderPresent(true);
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("YubiKeyPivProviderManager:addPivProvider", "Existing PivProvider was present in Security static list.");
        } else {
            certBasedAuthTelemetryHelper.setExistingPivProviderPresent(false);
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("YubiKeyPivProviderManager:addPivProvider", "Security static list does not have existing PivProvider.");
        }
        Security.insertProviderAt(new t16(vz0Var), 1);
        com.microsoft.identity.common.java.logging.Logger.info("YubiKeyPivProviderManager:addPivProvider", "An instance of PivProvider was added to Security static list.");
    }

    public static void removePivProvider() {
        if (Security.getProvider("YKPiv") == null) {
            return;
        }
        Security.removeProvider("YKPiv");
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("YubiKeyPivProviderManager", "An instance of PivProvider was removed from Security static list.");
    }
}
