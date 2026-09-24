package com.nimbusds.jose.jwk.gen;

import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.jwk.RSAKey;
import defpackage.c6;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.interfaces.RSAPublicKey;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class RSAKeyGenerator extends JWKGenerator<RSAKey> {
    public static final int MIN_KEY_SIZE_BITS = 2048;
    private final int size;

    public RSAKeyGenerator(int i, boolean z) {
        if (z || i >= 2048) {
            this.size = i;
        } else {
            c6.f("The key size must be at least 2048 bits");
            throw null;
        }
    }

    @Override // com.nimbusds.jose.jwk.gen.JWKGenerator
    public RSAKey generate() throws JOSEException {
        KeyPairGenerator keyPairGenerator;
        try {
            KeyStore keyStore = this.keyStore;
            if (keyStore != null) {
                keyPairGenerator = KeyPairGenerator.getInstance("RSA", keyStore.getProvider());
            } else {
                Provider provider = this.provider;
                keyPairGenerator = provider != null ? KeyPairGenerator.getInstance("RSA", provider) : KeyPairGenerator.getInstance("RSA");
            }
            SecureRandom secureRandom = this.secureRandom;
            int i = this.size;
            if (secureRandom != null) {
                keyPairGenerator.initialize(i, secureRandom);
            } else {
                keyPairGenerator.initialize(i);
            }
            KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
            RSAKey.Builder builderKeyStore = new RSAKey.Builder((RSAPublicKey) keyPairGenerateKeyPair.getPublic()).privateKey(keyPairGenerateKeyPair.getPrivate()).keyUse(this.use).keyOperations(this.ops).algorithm(this.alg).expirationTime(this.exp).notBeforeTime(this.nbf).issueTime(this.iat).keyStore(this.keyStore);
            if (this.tprKid) {
                builderKeyStore.keyIDFromThumbprint();
            } else {
                builderKeyStore.keyID(this.kid);
            }
            return builderKeyStore.build();
        } catch (NoSuchAlgorithmException e) {
            throw new JOSEException(e.getMessage(), e);
        }
    }

    public RSAKeyGenerator(int i) {
        this(i, false);
    }
}
