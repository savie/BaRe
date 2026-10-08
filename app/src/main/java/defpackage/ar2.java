package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ar2 extends RequestBody {
    public final /* synthetic */ long b;
    public final /* synthetic */ mt3 c;
    public final /* synthetic */ InputStream d;

    public ar2(long j, mt3 mt3Var, InputStream inputStream) {
        this.b = j;
        this.c = mt3Var;
        this.d = inputStream;
    }

    @Override // okhttp3.RequestBody
    public final long a() {
        return this.b;
    }

    @Override // okhttp3.RequestBody
    public final MediaType b() {
        return br2.h;
    }

    @Override // okhttp3.RequestBody
    public final boolean c() {
        return true;
    }

    @Override // okhttp3.RequestBody
    public final void d(yw0 yw0Var) throws IOException {
        byte[] bArr = new byte[262144];
        mt3 mt3Var = this.c;
        mt3Var.invoke(0L);
        long j = this.b;
        long j2 = 0;
        while (j > 0) {
            int i = this.d.read(bArr, 0, (int) Math.min(262144L, j));
            if (i == -1) {
                throw new EOFException("Unexpected EOF while streaming Dropbox request body");
            }
            yw0Var.write(bArr, 0, i);
            long j3 = i;
            j2 += j3;
            j -= j3;
            mt3Var.invoke(Long.valueOf(j2));
        }
    }
}
