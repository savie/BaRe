package com.nimbusds.jose.mint;

import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWSHeader;
import com.nimbusds.jose.JWSObject;
import com.nimbusds.jose.Payload;
import com.nimbusds.jose.crypto.factories.DefaultJWSSignerFactory;
import com.nimbusds.jose.jwk.JWK;
import com.nimbusds.jose.jwk.JWKMatcher;
import com.nimbusds.jose.jwk.JWKSelector;
import com.nimbusds.jose.jwk.JWKSet;
import com.nimbusds.jose.jwk.source.JWKSource;
import com.nimbusds.jose.proc.JWKSecurityContext;
import com.nimbusds.jose.proc.SecurityContext;
import com.nimbusds.jose.produce.JWSSignerFactory;
import defpackage.f6;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class DefaultJWSMinter<C extends SecurityContext> implements ConfigurableJWSMinter<C> {
    private JWKSource<C> jwkSource;
    private JWSSignerFactory jwsSignerFactory = new DefaultJWSSignerFactory();

    private List<JWK> jwks(JWSHeader jWSHeader, C c) throws JOSEException {
        JWKSelector jWKSelector = new JWKSelector(JWKMatcher.forJWSHeader(jWSHeader));
        if (c instanceof JWKSecurityContext) {
            return jWKSelector.select(new JWKSet(((JWKSecurityContext) c).getKeys()));
        }
        JWKSource<C> jWKSource = this.jwkSource;
        if (jWKSource != null) {
            return jWKSource.get(jWKSelector, c);
        }
        f6.j("No JWK source configured");
        return null;
    }

    @Override // com.nimbusds.jose.mint.JWSMinterConfiguration
    public JWKSource<C> getJWKSource() {
        return this.jwkSource;
    }

    @Override // com.nimbusds.jose.mint.JWSMinterConfiguration
    public JWSSignerFactory getJWSSignerFactory() {
        return this.jwsSignerFactory;
    }

    @Override // com.nimbusds.jose.mint.JWSMinter
    public JWSObject mint(JWSHeader jWSHeader, Payload payload, C c) throws JOSEException {
        List<JWK> listJwks = jwks(jWSHeader, c);
        if (listJwks.isEmpty()) {
            f6.j("No JWKs found for signing");
            return null;
        }
        JWK jwk = listJwks.get(0);
        JWSObject jWSObject = new JWSObject(new JWSHeader.Builder(jWSHeader).keyID(jwk.getKeyID()).x509CertURL(jwk.getX509CertURL()).x509CertChain(jwk.getX509CertChain()).x509CertSHA256Thumbprint(jwk.getX509CertSHA256Thumbprint()).x509CertThumbprint(jwk.getX509CertThumbprint()).build(), payload);
        JWSSignerFactory jWSSignerFactory = this.jwsSignerFactory;
        if (jWSSignerFactory != null) {
            jWSObject.sign(jWSSignerFactory.createJWSSigner(jwk));
            return jWSObject;
        }
        f6.j("No JWS signer factory configured");
        return null;
    }

    @Override // com.nimbusds.jose.mint.JWSMinterConfiguration
    public void setJWKSource(JWKSource<C> jWKSource) {
        this.jwkSource = jWKSource;
    }

    @Override // com.nimbusds.jose.mint.JWSMinterConfiguration
    public void setJWSSignerFactory(JWSSignerFactory jWSSignerFactory) {
        this.jwsSignerFactory = jWSSignerFactory;
    }
}
