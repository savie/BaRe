package com.microsoft.identity.common.internal.net.cache;

import android.net.http.HttpResponseCache;
import com.microsoft.identity.common.logging.Logger;
import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class HttpCache {

    /* JADX INFO: renamed from: com.microsoft.identity.common.internal.net.cache.HttpCache$1, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    final class AnonymousClass1 implements com.microsoft.identity.common.java.cache.HttpCache.IHttpCacheCallback {
        @Override // com.microsoft.identity.common.java.cache.HttpCache.IHttpCacheCallback
        public final void flush() {
            HttpResponseCache installed = HttpResponseCache.getInstalled();
            if (installed != null) {
                installed.flush();
            } else {
                int i = Logger.a;
                com.microsoft.identity.common.java.logging.Logger.warn("HttpCache:flush", "Unable to flush cache because none is installed.");
            }
        }
    }

    public static synchronized boolean initialize(File file) {
        boolean z = true;
        if (HttpResponseCache.getInstalled() != null) {
            return true;
        }
        try {
            HttpResponseCache.install(new File(file, "com.microsoft.identity.http-cache"), 10485760L);
        } catch (IOException e) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("HttpCache:initialize", "HTTP Response cache installation failed.", e);
            z = false;
        }
        com.microsoft.identity.common.java.cache.HttpCache.setHttpCache(new AnonymousClass1());
        return z;
    }

    public static synchronized boolean initialize$1(File file) {
        return initialize(file);
    }
}
