package defpackage;

import com.pcloud.sdk.internal.a;
import java.io.BufferedInputStream;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class nf6 extends RequestBody {
    public final /* synthetic */ e11 b;
    public final /* synthetic */ nv5 c;

    public nf6(a aVar, e11 e11Var, nv5 nv5Var) {
        this.b = e11Var;
        this.c = nv5Var;
    }

    @Override // okhttp3.RequestBody
    public final long a() {
        long j = this.c.b;
        if (j >= 0) {
            return j;
        }
        c6.f("Content length must be >= 0.");
        return 0L;
    }

    @Override // okhttp3.RequestBody
    public final MediaType b() {
        ai6 ai6Var = MediaType.d;
        try {
            return MediaType.Companion.a("multipart/form-data");
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @Override // okhttp3.RequestBody
    public final void d(yw0 yw0Var) throws IOException, b62 {
        nv5 nv5Var = this.c;
        c86 c86Var = new c86(yw0Var, nv5Var.b, this.b);
        rf6 rf6Var = new rf6(c86Var);
        nv5Var.a.add(rf6Var);
        BufferedInputStream bufferedInputStreamA = nv5Var.c.a();
        try {
            rf6Var.B(y13.G(bufferedInputStreamA));
            bufferedInputStreamA.close();
            if (rf6Var.c) {
                l0.e("closed");
                return;
            }
            nw0 nw0Var = rf6Var.b;
            long j = nw0Var.b;
            if (j > 0) {
                c86Var.f0(nw0Var, j);
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                rs9.c(bufferedInputStreamA, th);
                throw th2;
            }
        }
    }
}
