package com.nimbusds.jose.mint;

import com.nimbusds.jose.jwk.source.JWKSource;
import com.nimbusds.jose.proc.SecurityContext;
import com.nimbusds.jose.produce.JWSSignerFactory;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface JWSMinterConfiguration<C extends SecurityContext> {
    JWKSource<C> getJWKSource();

    JWSSignerFactory getJWSSignerFactory();

    void setJWKSource(JWKSource<C> jWKSource);

    void setJWSSignerFactory(JWSSignerFactory jWSSignerFactory);
}
