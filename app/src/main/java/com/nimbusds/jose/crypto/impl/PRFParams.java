package com.nimbusds.jose.crypto.impl;

import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWEAlgorithm;
import com.nimbusds.jose.shaded.jcip.Immutable;
import java.security.Provider;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Immutable
public final class PRFParams {
    private final int dkLen;
    private final String jcaMacAlg;
    private final Provider macProvider;

    public PRFParams(String str, Provider provider, int i) {
        Objects.requireNonNull(str);
        this.jcaMacAlg = str;
        this.macProvider = provider;
        this.dkLen = i;
    }

    public static PRFParams resolve(JWEAlgorithm jWEAlgorithm, Provider provider) throws JOSEException {
        String str;
        int i;
        if (JWEAlgorithm.PBES2_HS256_A128KW.equals(jWEAlgorithm)) {
            str = "HmacSHA256";
            i = 16;
        } else if (JWEAlgorithm.PBES2_HS384_A192KW.equals(jWEAlgorithm)) {
            str = "HmacSHA384";
            i = 24;
        } else {
            if (!JWEAlgorithm.PBES2_HS512_A256KW.equals(jWEAlgorithm)) {
                throw new JOSEException(AlgorithmSupportMessage.unsupportedJWEAlgorithm(jWEAlgorithm, PasswordBasedCryptoProvider.SUPPORTED_ALGORITHMS));
            }
            str = "HmacSHA512";
            i = 32;
        }
        return new PRFParams(str, provider, i);
    }

    public int getDerivedKeyByteLength() {
        return this.dkLen;
    }

    public String getMACAlgorithm() {
        return this.jcaMacAlg;
    }

    public Provider getMacProvider() {
        return this.macProvider;
    }
}
