package com.nimbusds.jose.crypto.bc;

import java.security.Provider;
import java.security.Security;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class BouncyCastleFIPSProviderSingleton {
    private static Provider bouncyCastleFIPSProvider;

    private BouncyCastleFIPSProviderSingleton() {
    }

    public static Provider getInstance() {
        if (bouncyCastleFIPSProvider == null) {
            bouncyCastleFIPSProvider = Security.getProvider("BCFIPS");
        }
        return bouncyCastleFIPSProvider;
    }
}
