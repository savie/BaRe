package com.nimbusds.jose.jwk.source;

import com.nimbusds.jose.KeySourceException;
import com.nimbusds.jose.jwk.JWKSet;
import com.nimbusds.jose.proc.SecurityContext;
import com.nimbusds.jose.shaded.jcip.ThreadSafe;
import com.nimbusds.jose.util.events.EventListener;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class RateLimitedJWKSetSource<C extends SecurityContext> extends JWKSetSourceWrapper<C> {
    private int counter;
    private final EventListener<RateLimitedJWKSetSource<C>, C> eventListener;
    private final long minTimeInterval;
    private long nextOpeningTime;

    public RateLimitedJWKSetSource(JWKSetSource<C> jWKSetSource, long j, EventListener<RateLimitedJWKSetSource<C>, C> eventListener) {
        super(jWKSetSource);
        this.nextOpeningTime = -1L;
        this.counter = 0;
        this.minTimeInterval = j;
        this.eventListener = eventListener;
    }

    @Override // com.nimbusds.jose.jwk.source.JWKSetSource
    public JWKSet getJWKSet(JWKSetCacheRefreshEvaluator jWKSetCacheRefreshEvaluator, long j, C c) throws KeySourceException {
        boolean z;
        synchronized (this) {
            try {
                z = false;
                if (this.nextOpeningTime <= j) {
                    this.nextOpeningTime = this.minTimeInterval + j;
                    this.counter = 1;
                } else {
                    int i = this.counter;
                    z = i <= 0;
                    if (!z) {
                        this.counter = i - 1;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z) {
            return getSource().getJWKSet(jWKSetCacheRefreshEvaluator, j, c);
        }
        EventListener<RateLimitedJWKSetSource<C>, C> eventListener = this.eventListener;
        if (eventListener != null) {
            eventListener.notify(new RateLimitedEvent(c));
        }
        throw new RateLimitReachedException();
    }

    public long getMinTimeInterval() {
        return this.minTimeInterval;
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class RateLimitedEvent<C extends SecurityContext> extends AbstractJWKSetSourceEvent<RateLimitedJWKSetSource<C>, C> {
        @Override // com.nimbusds.jose.jwk.source.AbstractJWKSetSourceEvent, com.nimbusds.jose.util.events.Event
        public /* bridge */ /* synthetic */ SecurityContext getContext() {
            return super.getContext();
        }

        @Override // com.nimbusds.jose.jwk.source.AbstractJWKSetSourceEvent, com.nimbusds.jose.util.events.Event
        public /* bridge */ /* synthetic */ JWKSetSource getSource() {
            return super.getSource();
        }

        private RateLimitedEvent(RateLimitedJWKSetSource<C> rateLimitedJWKSetSource, C c) {
            super(rateLimitedJWKSetSource, c);
        }
    }
}
