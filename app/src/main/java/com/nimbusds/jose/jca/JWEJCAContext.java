package com.nimbusds.jose.jca;

import java.security.Provider;
import java.security.SecureRandom;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class JWEJCAContext extends JCAContext {
    private Provider ceProvider;
    private Provider keProvider;
    private Provider macProvider;

    public JWEJCAContext() {
        this(null, null, null, null, null);
    }

    public Provider getContentEncryptionProvider() {
        Provider provider = this.ceProvider;
        return provider != null ? provider : getProvider();
    }

    public Provider getKeyEncryptionProvider() {
        Provider provider = this.keProvider;
        return provider != null ? provider : getProvider();
    }

    public Provider getMACProvider() {
        Provider provider = this.macProvider;
        return provider != null ? provider : getProvider();
    }

    public void setContentEncryptionProvider(Provider provider) {
        this.ceProvider = provider;
    }

    public void setKeyEncryptionProvider(Provider provider) {
        this.keProvider = provider;
    }

    public void setMACProvider(Provider provider) {
        this.macProvider = provider;
    }

    public JWEJCAContext(Provider provider, Provider provider2, Provider provider3, Provider provider4, SecureRandom secureRandom) {
        super(provider, secureRandom);
        this.keProvider = provider2;
        this.ceProvider = provider3;
        this.macProvider = provider4;
    }
}
