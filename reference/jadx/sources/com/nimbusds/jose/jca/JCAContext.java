package com.nimbusds.jose.jca;

import java.security.Provider;
import java.security.SecureRandom;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class JCAContext {
    private Provider provider;
    private SecureRandom randomGen;

    public JCAContext(Provider provider, SecureRandom secureRandom) {
        this.provider = provider;
        this.randomGen = secureRandom;
    }

    public Provider getProvider() {
        return this.provider;
    }

    public SecureRandom getSecureRandom() {
        SecureRandom secureRandom = this.randomGen;
        return secureRandom != null ? secureRandom : new SecureRandom();
    }

    public void setProvider(Provider provider) {
        this.provider = provider;
    }

    public void setSecureRandom(SecureRandom secureRandom) {
        this.randomGen = secureRandom;
    }

    public JCAContext() {
        this(null, null);
    }
}
