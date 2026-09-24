package com.nimbusds.jose.jwk.source;

import com.nimbusds.jose.KeySourceException;
import com.nimbusds.jose.jwk.JWKSet;
import com.nimbusds.jose.proc.SecurityContext;
import com.nimbusds.jose.shaded.jcip.ThreadSafe;
import com.nimbusds.jose.util.cache.CachedObject;
import com.nimbusds.jose.util.events.EventListener;
import defpackage.dj7;
import java.io.IOException;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
@ThreadSafe
public class RefreshAheadCachingJWKSetSource<C extends SecurityContext> extends CachingJWKSetSource<C> {
    private volatile long cacheExpiration;
    private final EventListener<CachingJWKSetSource<C>, C> eventListener;
    private final ExecutorService executorService;
    private final ReentrantLock lazyLock;
    private final long refreshAheadTime;
    private final ScheduledExecutorService scheduledExecutorService;
    private ScheduledFuture<?> scheduledRefreshFuture;
    private final boolean shutdownExecutorOnClose;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class RefreshNotScheduledEvent<C extends SecurityContext> extends AbstractJWKSetSourceEvent<CachingJWKSetSource<C>, C> {
        public RefreshNotScheduledEvent(RefreshAheadCachingJWKSetSource<C> refreshAheadCachingJWKSetSource, C c) {
            super(refreshAheadCachingJWKSetSource, c);
        }

        @Override // com.nimbusds.jose.jwk.source.AbstractJWKSetSourceEvent, com.nimbusds.jose.util.events.Event
        public /* bridge */ /* synthetic */ SecurityContext getContext() {
            return super.getContext();
        }

        @Override // com.nimbusds.jose.jwk.source.AbstractJWKSetSourceEvent, com.nimbusds.jose.util.events.Event
        public /* bridge */ /* synthetic */ JWKSetSource getSource() {
            return super.getSource();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class RefreshScheduledEvent<C extends SecurityContext> extends AbstractJWKSetSourceEvent<CachingJWKSetSource<C>, C> {
        public RefreshScheduledEvent(RefreshAheadCachingJWKSetSource<C> refreshAheadCachingJWKSetSource, C c) {
            super(refreshAheadCachingJWKSetSource, c);
        }

        @Override // com.nimbusds.jose.jwk.source.AbstractJWKSetSourceEvent, com.nimbusds.jose.util.events.Event
        public /* bridge */ /* synthetic */ SecurityContext getContext() {
            return super.getContext();
        }

        @Override // com.nimbusds.jose.jwk.source.AbstractJWKSetSourceEvent, com.nimbusds.jose.util.events.Event
        public /* bridge */ /* synthetic */ JWKSetSource getSource() {
            return super.getSource();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class ScheduledRefreshCompletedEvent<C extends SecurityContext> extends AbstractJWKSetSourceEvent<CachingJWKSetSource<C>, C> {
        private final JWKSet jwkSet;

        private ScheduledRefreshCompletedEvent(CachingJWKSetSource<C> cachingJWKSetSource, JWKSet jWKSet, C c) {
            super(cachingJWKSetSource, c);
            Objects.requireNonNull(jWKSet);
            this.jwkSet = jWKSet;
        }

        @Override // com.nimbusds.jose.jwk.source.AbstractJWKSetSourceEvent, com.nimbusds.jose.util.events.Event
        public /* bridge */ /* synthetic */ SecurityContext getContext() {
            return super.getContext();
        }

        public JWKSet getJWKSet() {
            return this.jwkSet;
        }

        @Override // com.nimbusds.jose.jwk.source.AbstractJWKSetSourceEvent, com.nimbusds.jose.util.events.Event
        public /* bridge */ /* synthetic */ JWKSetSource getSource() {
            return super.getSource();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class ScheduledRefreshFailed<C extends SecurityContext> extends AbstractJWKSetSourceEvent<CachingJWKSetSource<C>, C> {
        private final Exception exception;

        public ScheduledRefreshFailed(CachingJWKSetSource<C> cachingJWKSetSource, Exception exc, C c) {
            super(cachingJWKSetSource, c);
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

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class UnableToRefreshAheadOfExpirationEvent<C extends SecurityContext> extends AbstractJWKSetSourceEvent<CachingJWKSetSource<C>, C> {
        public UnableToRefreshAheadOfExpirationEvent(CachingJWKSetSource<C> cachingJWKSetSource, C c) {
            super(cachingJWKSetSource, c);
        }

        @Override // com.nimbusds.jose.jwk.source.AbstractJWKSetSourceEvent, com.nimbusds.jose.util.events.Event
        public /* bridge */ /* synthetic */ SecurityContext getContext() {
            return super.getContext();
        }

        @Override // com.nimbusds.jose.jwk.source.AbstractJWKSetSourceEvent, com.nimbusds.jose.util.events.Event
        public /* bridge */ /* synthetic */ JWKSetSource getSource() {
            return super.getSource();
        }
    }

    public RefreshAheadCachingJWKSetSource(JWKSetSource<C> jWKSetSource, long j, long j2, long j3, boolean z, ExecutorService executorService, boolean z2, EventListener<CachingJWKSetSource<C>, C> eventListener) {
        super(jWKSetSource, j, j2, eventListener);
        this.lazyLock = new ReentrantLock();
        if (j3 + j2 > j) {
            StringBuilder sbT = dj7.t("The sum of the refresh-ahead time (", "ms) and the cache refresh timeout (", j3);
            sbT.append(j2);
            sbT.append("ms) must not exceed the time-to-lived time (");
            sbT.append(j);
            sbT.append("ms)");
            throw new IllegalArgumentException(sbT.toString());
        }
        this.refreshAheadTime = j3;
        Objects.requireNonNull(executorService, "The executor service must not be null");
        this.executorService = executorService;
        this.shutdownExecutorOnClose = z2;
        if (z) {
            this.scheduledExecutorService = Executors.newSingleThreadScheduledExecutor();
        } else {
            this.scheduledExecutorService = null;
        }
        this.eventListener = eventListener;
    }

    @Override // com.nimbusds.jose.jwk.source.JWKSetSourceWrapper, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        ScheduledFuture<?> scheduledFuture = this.scheduledRefreshFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        super.close();
        boolean z = this.shutdownExecutorOnClose;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (z) {
            this.executorService.shutdownNow();
            try {
                this.executorService.awaitTermination(getCacheRefreshTimeout(), timeUnit);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        ScheduledExecutorService scheduledExecutorService = this.scheduledExecutorService;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
            try {
                this.scheduledExecutorService.awaitTermination(getCacheRefreshTimeout(), timeUnit);
            } catch (InterruptedException unused2) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public ExecutorService getExecutorService() {
        return this.executorService;
    }

    @Override // com.nimbusds.jose.jwk.source.CachingJWKSetSource, com.nimbusds.jose.jwk.source.JWKSetSource
    public JWKSet getJWKSet(JWKSetCacheRefreshEvaluator jWKSetCacheRefreshEvaluator, long j, C c) throws KeySourceException {
        CachedObject<JWKSet> cachedJWKSet = getCachedJWKSet();
        if (cachedJWKSet == null) {
            return loadJWKSetBlocking(JWKSetCacheRefreshEvaluator.noRefresh(), j, c);
        }
        JWKSet jWKSet = cachedJWKSet.get();
        if (jWKSetCacheRefreshEvaluator.requiresRefresh(jWKSet)) {
            return loadJWKSetBlocking(jWKSetCacheRefreshEvaluator, j, c);
        }
        if (cachedJWKSet.isExpired(j)) {
            return loadJWKSetBlocking(JWKSetCacheRefreshEvaluator.referenceComparison(jWKSet), j, c);
        }
        refreshAheadOfExpiration(cachedJWKSet, false, j, c);
        return cachedJWKSet.get();
    }

    public ReentrantLock getLazyLock() {
        return this.lazyLock;
    }

    public ScheduledFuture<?> getScheduledRefreshFuture() {
        return this.scheduledRefreshFuture;
    }

    @Override // com.nimbusds.jose.jwk.source.CachingJWKSetSource
    public CachedObject<JWKSet> loadJWKSetNotThreadSafe(JWKSetCacheRefreshEvaluator jWKSetCacheRefreshEvaluator, long j, C c) throws KeySourceException {
        CachedObject<JWKSet> cachedObjectLoadJWKSetNotThreadSafe = super.loadJWKSetNotThreadSafe(jWKSetCacheRefreshEvaluator, j, c);
        if (this.scheduledExecutorService != null) {
            scheduleRefreshAheadOfExpiration(cachedObjectLoadJWKSetNotThreadSafe, j, c);
        }
        return cachedObjectLoadJWKSetNotThreadSafe;
    }

    public void lockedRefresh(CachedObject<JWKSet> cachedObject, final long j, final C c) {
        if (this.cacheExpiration < cachedObject.getExpirationTime()) {
            this.cacheExpiration = cachedObject.getExpirationTime();
            this.executorService.execute(new Runnable() { // from class: com.nimbusds.jose.jwk.source.RefreshAheadCachingJWKSetSource.2
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                 */
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (RefreshAheadCachingJWKSetSource.this.eventListener != null) {
                            RefreshAheadCachingJWKSetSource.this.eventListener.notify(new ScheduledRefreshInitiatedEvent(this, c));
                        }
                        JWKSet jWKSetLoadJWKSetBlocking = RefreshAheadCachingJWKSetSource.this.loadJWKSetBlocking(JWKSetCacheRefreshEvaluator.forceRefresh(), j, c);
                        if (RefreshAheadCachingJWKSetSource.this.eventListener != null) {
                            RefreshAheadCachingJWKSetSource.this.eventListener.notify(new ScheduledRefreshCompletedEvent(this, jWKSetLoadJWKSetBlocking, c));
                        }
                    } catch (Throwable unused) {
                        RefreshAheadCachingJWKSetSource.this.cacheExpiration = -1L;
                        if (RefreshAheadCachingJWKSetSource.this.eventListener != null) {
                            RefreshAheadCachingJWKSetSource.this.eventListener.notify(new UnableToRefreshAheadOfExpirationEvent(this, c));
                        }
                    }
                }
            });
        }
    }

    public void refreshAheadOfExpiration(CachedObject<JWKSet> cachedObject, boolean z, long j, C c) {
        if ((cachedObject.isExpired(this.refreshAheadTime + j) || z) && this.cacheExpiration < cachedObject.getExpirationTime() && this.lazyLock.tryLock()) {
            try {
                lockedRefresh(cachedObject, j, c);
            } finally {
                this.lazyLock.unlock();
            }
        }
    }

    public void scheduleRefreshAheadOfExpiration(final CachedObject<JWKSet> cachedObject, long j, final C c) {
        ScheduledFuture<?> scheduledFuture = this.scheduledRefreshFuture;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        long expirationTime = ((cachedObject.getExpirationTime() - j) - this.refreshAheadTime) - getCacheRefreshTimeout();
        if (expirationTime <= 0) {
            EventListener<CachingJWKSetSource<C>, C> eventListener = this.eventListener;
            if (eventListener != null) {
                eventListener.notify(new RefreshNotScheduledEvent(this, c));
                return;
            }
            return;
        }
        this.scheduledRefreshFuture = this.scheduledExecutorService.schedule(new Runnable() { // from class: com.nimbusds.jose.jwk.source.RefreshAheadCachingJWKSetSource.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    RefreshAheadCachingJWKSetSource.this.refreshAheadOfExpiration(cachedObject, true, System.currentTimeMillis(), c);
                } catch (Exception e) {
                    if (RefreshAheadCachingJWKSetSource.this.eventListener != null) {
                        RefreshAheadCachingJWKSetSource.this.eventListener.notify(new ScheduledRefreshFailed(this, e, c));
                    }
                }
            }
        }, expirationTime, TimeUnit.MILLISECONDS);
        EventListener<CachingJWKSetSource<C>, C> eventListener2 = this.eventListener;
        if (eventListener2 != null) {
            eventListener2.notify(new RefreshScheduledEvent(this, c));
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class ScheduledRefreshInitiatedEvent<C extends SecurityContext> extends AbstractJWKSetSourceEvent<CachingJWKSetSource<C>, C> {
        @Override // com.nimbusds.jose.jwk.source.AbstractJWKSetSourceEvent, com.nimbusds.jose.util.events.Event
        public /* bridge */ /* synthetic */ SecurityContext getContext() {
            return super.getContext();
        }

        @Override // com.nimbusds.jose.jwk.source.AbstractJWKSetSourceEvent, com.nimbusds.jose.util.events.Event
        public /* bridge */ /* synthetic */ JWKSetSource getSource() {
            return super.getSource();
        }

        private ScheduledRefreshInitiatedEvent(CachingJWKSetSource<C> cachingJWKSetSource, C c) {
            super(cachingJWKSetSource, c);
        }
    }

    public RefreshAheadCachingJWKSetSource(JWKSetSource<C> jWKSetSource, long j, long j2, long j3, boolean z, EventListener<CachingJWKSetSource<C>, C> eventListener) {
        this(jWKSetSource, j, j2, j3, z, Executors.newSingleThreadExecutor(), true, eventListener);
    }
}
