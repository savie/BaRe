package com.nimbusds.jose.crypto.bc;

import defpackage.qu0;
import java.security.Provider;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class BouncyCastleProviderSingleton {
    private static Provider bouncyCastleProvider;

    private BouncyCastleProviderSingleton() {
    }

    public static Provider getInstance() {
        if (bouncyCastleProvider == null) {
            bouncyCastleProvider = new qu0();
        }
        return bouncyCastleProvider;
    }
}
