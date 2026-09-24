package com.nimbusds.jose.jwk.source;

import com.nimbusds.jose.jwk.JWKSet;
import com.nimbusds.jose.proc.SecurityContext;
import com.nimbusds.jose.shaded.jcip.ThreadSafe;
import com.nimbusds.jose.util.cache.CachedObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
abstract class AbstractCachingJWKSetSource<C extends SecurityContext> extends JWKSetSourceWrapper<C> {
    private volatile CachedObject<JWKSet> cachedJWKSet;
    private final long timeToLive;

    public AbstractCachingJWKSetSource(JWKSetSource<C> jWKSetSource, long j) {
        super(jWKSetSource);
        this.timeToLive = j;
    }

    public CachedObject<JWKSet> cacheJWKSet(JWKSet jWKSet, long j) {
        CachedObject<JWKSet> cachedObject = new CachedObject<>(jWKSet, currentTimeMillis(), CachedObject.computeExpirationTime(j, getTimeToLive()));
        setCachedJWKSet(cachedObject);
        return cachedObject;
    }

    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    public CachedObject<JWKSet> getCachedJWKSet() {
        return this.cachedJWKSet;
    }

    public CachedObject<JWKSet> getCachedJWKSetIfValid(long j) {
        CachedObject<JWKSet> cachedJWKSet = getCachedJWKSet();
        if (cachedJWKSet == null || !cachedJWKSet.isValid(j)) {
            return null;
        }
        return cachedJWKSet;
    }

    public long getTimeToLive() {
        return this.timeToLive;
    }

    public void setCachedJWKSet(CachedObject<JWKSet> cachedObject) {
        this.cachedJWKSet = cachedObject;
    }
}
