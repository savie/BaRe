package com.nimbusds.jose.crypto.impl;

import com.nimbusds.jose.EncryptionMethod;
import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWEAlgorithm;
import com.nimbusds.jose.JWEProvider;
import com.nimbusds.jose.jca.JWEJCAContext;
import defpackage.c6;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import javax.crypto.SecretKey;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class BaseJWEProvider implements JWEProvider {
    private static final Set<String> ACCEPTABLE_CEK_ALGS = Collections.unmodifiableSet(new HashSet(Arrays.asList("AES", "ChaCha20")));
    private final Set<JWEAlgorithm> algs;
    private final SecretKey cek;
    private final Set<EncryptionMethod> encs;
    private final JWEJCAContext jcaContext;

    public BaseJWEProvider(Set<JWEAlgorithm> set, Set<EncryptionMethod> set2, SecretKey secretKey) {
        this.jcaContext = new JWEJCAContext();
        if (set == null) {
            c6.f("The supported JWE algorithm set must not be null");
            throw null;
        }
        this.algs = Collections.unmodifiableSet(set);
        if (set2 == null) {
            c6.f("The supported encryption methods must not be null");
            throw null;
        }
        this.encs = set2;
        if (secretKey == null || set.size() <= 1 || (secretKey.getAlgorithm() != null && ACCEPTABLE_CEK_ALGS.contains(secretKey.getAlgorithm()))) {
            this.cek = secretKey;
        } else {
            c6.f("The algorithm of the content encryption key (CEK) must be AES or ChaCha20");
            throw null;
        }
    }

    public SecretKey getCEK(EncryptionMethod encryptionMethod) throws JOSEException {
        return (isCEKProvided() || encryptionMethod == null) ? this.cek : ContentCryptoProvider.generateCEK(encryptionMethod, this.jcaContext.getSecureRandom());
    }

    public boolean isCEKProvided() {
        return this.cek != null;
    }

    @Override // com.nimbusds.jose.JWEProvider
    public Set<EncryptionMethod> supportedEncryptionMethods() {
        return this.encs;
    }

    @Override // com.nimbusds.jose.JWEProvider
    public Set<JWEAlgorithm> supportedJWEAlgorithms() {
        return this.algs;
    }

    @Override // com.nimbusds.jose.jca.JCAAware
    public JWEJCAContext getJCAContext() {
        return this.jcaContext;
    }

    public BaseJWEProvider(Set<JWEAlgorithm> set, Set<EncryptionMethod> set2) {
        this(set, set2, null);
    }
}
