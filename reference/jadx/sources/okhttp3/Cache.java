package okhttp3;

import defpackage.ar3;
import defpackage.zq3;
import defpackage.zw0;
import java.io.Closeable;
import java.io.Flushable;
import okhttp3.internal.cache.CacheRequest;
import okhttp3.internal.platform.Platform;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Cache implements Closeable, Flushable {

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class CacheResponseBody extends ResponseBody {

        /* JADX INFO: renamed from: okhttp3.Cache$CacheResponseBody$1, reason: invalid class name */
        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public final class AnonymousClass1 extends ar3 {
            @Override // defpackage.ar3, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                throw null;
            }
        }

        @Override // okhttp3.ResponseBody
        public final long h() {
            return -1L;
        }

        @Override // okhttp3.ResponseBody
        public final MediaType j() {
            return null;
        }

        @Override // okhttp3.ResponseBody
        public final zw0 m() {
            return null;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Entry {

        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public static final class Companion {
        }

        static {
            Platform platform = Platform.a;
            Platform.a.getClass();
            Platform.a.getClass();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class RealCacheRequest implements CacheRequest {

        /* JADX INFO: renamed from: okhttp3.Cache$RealCacheRequest$1, reason: invalid class name */
        /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
        public final class AnonymousClass1 extends zq3 {
            @Override // defpackage.zq3, defpackage.nh7, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                throw null;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw null;
    }

    @Override // java.io.Flushable
    public final void flush() {
        throw null;
    }
}
