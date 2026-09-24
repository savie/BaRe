package com.nimbusds.jose.jwk.source;

import com.nimbusds.jose.jwk.JWKSet;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class JWKSetCacheRefreshEvaluator {
    public static JWKSetCacheRefreshEvaluator forceRefresh() {
        return ForceRefreshJWKSetCacheEvaluator.getInstance();
    }

    public static JWKSetCacheRefreshEvaluator noRefresh() {
        return NoRefreshJWKSetCacheEvaluator.getInstance();
    }

    public static JWKSetCacheRefreshEvaluator referenceComparison(JWKSet jWKSet) {
        return new ReferenceComparisonRefreshJWKSetEvaluator(jWKSet);
    }

    public abstract boolean requiresRefresh(JWKSet jWKSet);
}
