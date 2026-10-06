package okhttp3.internal.cache;

import defpackage.f48;
import defpackage.ij7;
import defpackage.nw0;
import java.io.IOException;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import okhttp3.internal._UtilJvmKt;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class CacheInterceptor$cacheWritingResponse$cacheWritingSource$1 implements ij7 {
    public boolean a;

    @Override // defpackage.ij7
    public final long H(nw0 nw0Var, long j) {
        nw0Var.getClass();
        throw null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        boolean zG;
        if (this.a) {
            throw null;
        }
        TimeZone timeZone = _UtilJvmKt.a;
        TimeUnit.MILLISECONDS.getClass();
        try {
            zG = _UtilJvmKt.g(this, 100);
        } catch (IOException unused) {
            zG = false;
        }
        if (zG) {
            throw null;
        }
        this.a = true;
        throw null;
    }

    @Override // defpackage.ij7
    public final f48 d() {
        throw null;
    }
}
