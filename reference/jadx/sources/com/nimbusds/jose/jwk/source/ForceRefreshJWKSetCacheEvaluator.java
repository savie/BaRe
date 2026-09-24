package com.nimbusds.jose.jwk.source;

import com.nimbusds.jose.jwk.JWKSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class ForceRefreshJWKSetCacheEvaluator extends JWKSetCacheRefreshEvaluator {
    private static final ForceRefreshJWKSetCacheEvaluator INSTANCE = new ForceRefreshJWKSetCacheEvaluator();

    private ForceRefreshJWKSetCacheEvaluator() {
    }

    public static ForceRefreshJWKSetCacheEvaluator getInstance() {
        return INSTANCE;
    }

    public boolean equals(Object obj) {
        return obj instanceof ForceRefreshJWKSetCacheEvaluator;
    }

    public int hashCode() {
        return 0;
    }

    @Override // com.nimbusds.jose.jwk.source.JWKSetCacheRefreshEvaluator
    public boolean requiresRefresh(JWKSet jWKSet) {
        return true;
    }
}
