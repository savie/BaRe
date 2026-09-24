package com.nimbusds.jose.jwk;

import com.nimbusds.jose.JOSEException;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.cert.X509Certificate;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface AsymmetricJWK {
    boolean matches(X509Certificate x509Certificate);

    KeyPair toKeyPair() throws JOSEException;

    PrivateKey toPrivateKey() throws JOSEException;

    PublicKey toPublicKey() throws JOSEException;
}
