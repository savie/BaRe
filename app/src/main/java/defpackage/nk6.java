package defpackage;

import java.io.BufferedInputStream;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class nk6 extends RequestBody {
    public final /* synthetic */ long b;
    public final /* synthetic */ c62 c;
    public final /* synthetic */ mt3 d;

    public nk6(long j, c62 c62Var, mt3 mt3Var) {
        this.b = j;
        this.c = c62Var;
        this.d = mt3Var;
    }

    @Override // okhttp3.RequestBody
    public final long a() {
        return this.b;
    }

    @Override // okhttp3.RequestBody
    public final MediaType b() {
        return null;
    }

    @Override // okhttp3.RequestBody
    public final synchronized void d(yw0 yw0Var) {
        BufferedInputStream bufferedInputStreamA = this.c.a();
        f86 f86Var = new f86(yw0Var.n0(), this.b, new ss(this.d, 4));
        try {
            try {
                cy0.j(bufferedInputStreamA, f86Var, 262144);
                f86Var.close();
                bufferedInputStreamA.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    rs9.c(f86Var, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                rs9.c(bufferedInputStreamA, th3);
                throw th4;
            }
        }
    }
}
