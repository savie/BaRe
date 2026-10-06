package com.nimbusds.jose.produce;

import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWSAlgorithm;
import com.nimbusds.jose.JWSProvider;
import com.nimbusds.jose.JWSSigner;
import com.nimbusds.jose.jwk.JWK;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface JWSSignerFactory extends JWSProvider {
    JWSSigner createJWSSigner(JWK jwk) throws JOSEException;

    JWSSigner createJWSSigner(JWK jwk, JWSAlgorithm jWSAlgorithm) throws JOSEException;
}
