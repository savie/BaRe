package com.nimbusds.jose.jwk.gen;

import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.jwk.OctetSequenceKey;
import com.nimbusds.jose.util.Base64URL;
import defpackage.c6;
import java.security.SecureRandom;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class OctetSequenceKeyGenerator extends JWKGenerator<OctetSequenceKey> {
    public static final int MIN_KEY_SIZE_BITS = 112;
    private final int size;

    public OctetSequenceKeyGenerator(int i) {
        if (i < 112) {
            c6.f("The key size must be at least 112 bits");
            throw null;
        }
        if (i % 8 == 0) {
            this.size = i;
        } else {
            c6.f("The key size in bits must be divisible by 8");
            throw null;
        }
    }

    @Override // com.nimbusds.jose.jwk.gen.JWKGenerator
    public OctetSequenceKey generate() throws JOSEException {
        byte[] bArr = new byte[this.size / 8];
        SecureRandom secureRandom = this.secureRandom;
        if (secureRandom != null) {
            secureRandom.nextBytes(bArr);
        } else {
            new SecureRandom().nextBytes(bArr);
        }
        OctetSequenceKey.Builder builderKeyStore = new OctetSequenceKey.Builder(Base64URL.encode(bArr)).keyUse(this.use).keyOperations(this.ops).algorithm(this.alg).expirationTime(this.exp).notBeforeTime(this.nbf).issueTime(this.iat).keyStore(this.keyStore);
        if (this.tprKid) {
            builderKeyStore.keyIDFromThumbprint();
        } else {
            builderKeyStore.keyID(this.kid);
        }
        return builderKeyStore.build();
    }
}
