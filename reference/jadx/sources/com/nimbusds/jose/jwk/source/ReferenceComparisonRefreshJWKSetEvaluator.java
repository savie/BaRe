package com.nimbusds.jose.jwk.source;

import com.nimbusds.jose.jwk.JWKSet;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class ReferenceComparisonRefreshJWKSetEvaluator extends JWKSetCacheRefreshEvaluator {
    private final JWKSet jwkSet;

    public ReferenceComparisonRefreshJWKSetEvaluator(JWKSet jWKSet) {
        this.jwkSet = jWKSet;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return Objects.equals(this.jwkSet, ((ReferenceComparisonRefreshJWKSetEvaluator) obj).jwkSet);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.jwkSet);
    }

    @Override // com.nimbusds.jose.jwk.source.JWKSetCacheRefreshEvaluator
    public boolean requiresRefresh(JWKSet jWKSet) {
        return jWKSet == this.jwkSet;
    }
}
