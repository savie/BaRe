package okhttp3;

import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme;
import defpackage.f48;
import defpackage.ge;
import defpackage.hy0;
import defpackage.ij7;
import defpackage.nw0;
import defpackage.u48;
import defpackage.wx3;
import java.io.Closeable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class MultipartReader implements Closeable {

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Companion {
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static final class Part implements Closeable {
        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            throw null;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class PartSource implements ij7 {
        @Override // defpackage.ij7
        public final long H(nw0 nw0Var, long j) {
            nw0Var.getClass();
            if (j >= 0) {
                throw null;
            }
            throw new IllegalArgumentException(u48.l(j, "byteCount < 0: ").toString());
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            throw null;
        }

        @Override // defpackage.ij7
        public final f48 d() {
            return null;
        }
    }

    static {
        hy0 hy0Var = hy0.d;
        wx3.w(ge.v("\r\n"), ge.v("--"), ge.v(TokenAuthenticationScheme.SCHEME_DELIMITER), ge.v("\t"));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
