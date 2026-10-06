package com.nimbusds.jose.jwk.gen;

import com.google.crypto.tink.subtle.Ed25519Sign;
import com.google.crypto.tink.subtle.X25519;
import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.jwk.Curve;
import com.nimbusds.jose.jwk.OctetKeyPair;
import com.nimbusds.jose.util.Base64URL;
import defpackage.c6;
import defpackage.f6;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class OctetKeyPairGenerator extends JWKGenerator<OctetKeyPair> {
    public static final Set<Curve> SUPPORTED_CURVES;
    private final Curve crv;

    static {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(Curve.X25519);
        linkedHashSet.add(Curve.Ed25519);
        SUPPORTED_CURVES = Collections.unmodifiableSet(linkedHashSet);
    }

    public OctetKeyPairGenerator(Curve curve) {
        Set<Curve> set = SUPPORTED_CURVES;
        Objects.requireNonNull(curve);
        if (set.contains(curve)) {
            this.crv = curve;
        } else {
            c6.f("Curve not supported for OKP generation");
            throw null;
        }
    }

    @Override // com.nimbusds.jose.jwk.gen.JWKGenerator
    public OctetKeyPair generate() throws JOSEException {
        Base64URL base64URLEncode;
        Base64URL base64URLEncode2;
        if (this.crv.equals(Curve.X25519)) {
            try {
                byte[] bArrGeneratePrivateKey = X25519.generatePrivateKey();
                byte[] bArrPublicFromPrivate = X25519.publicFromPrivate(bArrGeneratePrivateKey);
                base64URLEncode = Base64URL.encode(bArrGeneratePrivateKey);
                base64URLEncode2 = Base64URL.encode(bArrPublicFromPrivate);
            } catch (InvalidKeyException e) {
                throw new JOSEException(e.getMessage(), e);
            }
        } else {
            if (!this.crv.equals(Curve.Ed25519)) {
                f6.j("Curve not supported");
                return null;
            }
            try {
                Ed25519Sign.KeyPair keyPairNewKeyPair = Ed25519Sign.KeyPair.newKeyPair();
                Base64URL base64URLEncode3 = Base64URL.encode(keyPairNewKeyPair.getPrivateKey());
                base64URLEncode2 = Base64URL.encode(keyPairNewKeyPair.getPublicKey());
                base64URLEncode = base64URLEncode3;
            } catch (GeneralSecurityException e2) {
                throw new JOSEException(e2.getMessage(), e2);
            }
        }
        OctetKeyPair.Builder builderIssueTime = new OctetKeyPair.Builder(this.crv, base64URLEncode2).d(base64URLEncode).keyUse(this.use).keyOperations(this.ops).algorithm(this.alg).expirationTime(this.exp).notBeforeTime(this.nbf).issueTime(this.iat);
        if (this.tprKid) {
            builderIssueTime.keyIDFromThumbprint();
        } else {
            builderIssueTime.keyID(this.kid);
        }
        return builderIssueTime.build();
    }
}
