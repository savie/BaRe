package okhttp3.internal.cache2;

import defpackage.f48;
import defpackage.ge;
import defpackage.hy0;
import defpackage.ij7;
import defpackage.nw0;
import okhttp3.internal.concurrent.Lockable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class Relay implements Lockable {

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    static {
        hy0 hy0Var = hy0.d;
        ge.v("OkHttp cache v1\n");
        ge.v("OkHttp DIRTY :(\n");
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class RelaySource implements ij7 {
        @Override // defpackage.ij7
        public final long H(nw0 nw0Var, long j) {
            nw0Var.getClass();
            throw new IllegalStateException("Check failed.");
        }

        @Override // defpackage.ij7
        public final f48 d() {
            return null;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }
    }
}
