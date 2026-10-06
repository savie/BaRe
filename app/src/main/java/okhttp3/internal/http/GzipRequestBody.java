package okhttp3.internal.http;

import defpackage.d24;
import defpackage.rf6;
import defpackage.rs9;
import defpackage.yw0;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class GzipRequestBody extends RequestBody {
    @Override // okhttp3.RequestBody
    public final long a() {
        return -1L;
    }

    @Override // okhttp3.RequestBody
    public final MediaType b() {
        throw null;
    }

    @Override // okhttp3.RequestBody
    public final boolean c() {
        throw null;
    }

    @Override // okhttp3.RequestBody
    public final void d(yw0 yw0Var) {
        rf6 rf6Var = new rf6(new d24(yw0Var));
        try {
            throw null;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(rf6Var, th);
                throw th2;
            }
        }
    }
}
