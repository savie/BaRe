package com.nimbusds.jose.crypto;

import com.google.crypto.tink.subtle.Ed25519Sign;
import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWSAlgorithm;
import com.nimbusds.jose.JWSHeader;
import com.nimbusds.jose.JWSSigner;
import com.nimbusds.jose.crypto.impl.EdDSAProvider;
import com.nimbusds.jose.jwk.Curve;
import com.nimbusds.jose.jwk.OctetKeyPair;
import com.nimbusds.jose.shaded.jcip.ThreadSafe;
import com.nimbusds.jose.util.Base64URL;
import defpackage.f6;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class Ed25519Signer extends EdDSAProvider implements JWSSigner {
    private final OctetKeyPair privateKey;
    private final Ed25519Sign tinkSigner;

    public Ed25519Signer(OctetKeyPair octetKeyPair) throws JOSEException {
        if (!Curve.Ed25519.equals(octetKeyPair.getCurve())) {
            f6.j("Ed25519Signer only supports OctetKeyPairs with crv=Ed25519");
            throw null;
        }
        if (!octetKeyPair.isPrivate()) {
            f6.j("The OctetKeyPair doesn't contain a private part");
            throw null;
        }
        this.privateKey = octetKeyPair;
        try {
            this.tinkSigner = new Ed25519Sign(octetKeyPair.getDecodedD());
        } catch (GeneralSecurityException e) {
            throw new JOSEException(e.getMessage(), e);
        }
    }

    public OctetKeyPair getPrivateKey() {
        return this.privateKey;
    }

    @Override // com.nimbusds.jose.JWSSigner
    public Base64URL sign(JWSHeader jWSHeader, byte[] bArr) throws JOSEException {
        JWSAlgorithm algorithm = jWSHeader.getAlgorithm();
        if (!JWSAlgorithm.Ed25519.equals(algorithm) && !JWSAlgorithm.EdDSA.equals(algorithm)) {
            f6.j("Ed25519Verifier requires alg=Ed25519 or alg=EdDSA in JWSHeader");
            return null;
        }
        try {
            return Base64URL.encode(this.tinkSigner.sign(bArr));
        } catch (GeneralSecurityException e) {
            throw new JOSEException(e.getMessage(), e);
        }
    }
}
