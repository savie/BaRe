package com.microsoft.identity.common.java.cache;

import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class HttpCache {
    private static IHttpCacheCallback sHttpCache;
    private static final ReentrantReadWriteLock sLock = new ReentrantReadWriteLock();

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public interface IHttpCacheCallback {
        void flush();
    }

    public static void flush() {
        ReentrantReadWriteLock reentrantReadWriteLock = sLock;
        reentrantReadWriteLock.readLock().lock();
        try {
            IHttpCacheCallback iHttpCacheCallback = sHttpCache;
            if (iHttpCacheCallback != null) {
                iHttpCacheCallback.flush();
            }
        } finally {
            reentrantReadWriteLock.readLock().unlock();
        }
    }

    public static void setHttpCache(IHttpCacheCallback iHttpCacheCallback) {
        ReentrantReadWriteLock reentrantReadWriteLock = sLock;
        reentrantReadWriteLock.writeLock().lock();
        try {
            sHttpCache = iHttpCacheCallback;
        } finally {
            reentrantReadWriteLock.writeLock().unlock();
        }
    }
}
