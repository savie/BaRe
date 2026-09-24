package defpackage;

import java.io.BufferedInputStream;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lk6 extends RequestBody {
    public final /* synthetic */ mt3 b;
    public final /* synthetic */ long c;
    public final /* synthetic */ c62 d;

    public lk6(long j, c62 c62Var, mt3 mt3Var) {
        this.b = mt3Var;
        this.c = j;
        this.d = c62Var;
    }

    @Override // okhttp3.RequestBody
    public final long a() {
        return this.c;
    }

    @Override // okhttp3.RequestBody
    public final MediaType b() {
        return null;
    }

    @Override // okhttp3.RequestBody
    public final void d(yw0 yw0Var) throws b62 {
        BufferedInputStream bufferedInputStreamA = this.d.a();
        mt3 mt3Var = this.b;
        rc4 rc4VarG = null;
        long j = 0;
        if (mt3Var != null) {
            try {
                mt3Var.invoke(0L);
            } finally {
                f13.a(rc4VarG);
                f13.a(bufferedInputStreamA);
            }
        }
        rc4VarG = y13.G(bufferedInputStreamA);
        nw0 nw0Var = new nw0();
        while (true) {
            long jH = rc4VarG.H(nw0Var, 262144L);
            if (jH == -1) {
                mk6.a.k("loaded: " + j);
                return;
            }
            yw0Var.f0(nw0Var, jH);
            j += jH;
            if (mt3Var != null) {
                mt3Var.invoke(Long.valueOf(j));
            }
        }
    }
}
