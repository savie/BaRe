package com.nimbusds.jose.jwk.source;

import com.nimbusds.jose.jwk.JWK;
import com.nimbusds.jose.jwk.JWKSelector;
import com.nimbusds.jose.jwk.JWKSet;
import com.nimbusds.jose.proc.SecurityContext;
import com.nimbusds.jose.shaded.jcip.Immutable;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@Immutable
public class ImmutableJWKSet<C extends SecurityContext> implements JWKSource<C> {
    private final JWKSet jwkSet;

    public ImmutableJWKSet(JWKSet jWKSet) {
        Objects.requireNonNull(jWKSet);
        this.jwkSet = jWKSet;
    }

    @Override // com.nimbusds.jose.jwk.source.JWKSource
    public List<JWK> get(JWKSelector jWKSelector, C c) {
        return jWKSelector.select(this.jwkSet);
    }

    public JWKSet getJWKSet() {
        return this.jwkSet;
    }
}
