package com.nimbusds.jose.jwk.source;

import com.nimbusds.jose.KeySourceException;
import com.nimbusds.jose.jwk.JWKSet;
import com.nimbusds.jose.proc.SecurityContext;
import com.nimbusds.jose.shaded.jcip.ThreadSafe;
import com.nimbusds.jose.util.events.EventListener;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class RetryingJWKSetSource<C extends SecurityContext> extends JWKSetSourceWrapper<C> {
    private final EventListener<RetryingJWKSetSource<C>, C> eventListener;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class RetrialEvent<C extends SecurityContext> extends AbstractJWKSetSourceEvent<RetryingJWKSetSource<C>, C> {
        private final Exception exception;

        private RetrialEvent(RetryingJWKSetSource<C> retryingJWKSetSource, Exception exc, C c) {
            super(retryingJWKSetSource, c);
            Objects.requireNonNull(exc);
            this.exception = exc;
        }

        @Override // com.nimbusds.jose.jwk.source.AbstractJWKSetSourceEvent, com.nimbusds.jose.util.events.Event
        public /* bridge */ /* synthetic */ SecurityContext getContext() {
            return super.getContext();
        }

        public Exception getException() {
            return this.exception;
        }

        @Override // com.nimbusds.jose.jwk.source.AbstractJWKSetSourceEvent, com.nimbusds.jose.util.events.Event
        public /* bridge */ /* synthetic */ JWKSetSource getSource() {
            return super.getSource();
        }
    }

    public RetryingJWKSetSource(JWKSetSource<C> jWKSetSource, EventListener<RetryingJWKSetSource<C>, C> eventListener) {
        super(jWKSetSource);
        this.eventListener = eventListener;
    }

    @Override // com.nimbusds.jose.jwk.source.JWKSetSource
    public JWKSet getJWKSet(JWKSetCacheRefreshEvaluator jWKSetCacheRefreshEvaluator, long j, C c) throws KeySourceException {
        try {
            return getSource().getJWKSet(jWKSetCacheRefreshEvaluator, j, c);
        } catch (JWKSetUnavailableException e) {
            EventListener<RetryingJWKSetSource<C>, C> eventListener = this.eventListener;
            if (eventListener != null) {
                eventListener.notify(new RetrialEvent(e, c));
            }
            return getSource().getJWKSet(jWKSetCacheRefreshEvaluator, j, c);
        }
    }
}
