package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class c04 extends RequestBody {
    public final /* synthetic */ long b;
    public final /* synthetic */ InputStream c;
    public final /* synthetic */ e04 d;

    public c04(long j, InputStream inputStream, e04 e04Var) {
        this.b = j;
        this.c = inputStream;
        this.d = e04Var;
    }

    @Override // okhttp3.RequestBody
    public final long a() {
        return this.b;
    }

    @Override // okhttp3.RequestBody
    public final MediaType b() {
        return d04.k;
    }

    @Override // okhttp3.RequestBody
    public final boolean c() {
        return true;
    }

    @Override // okhttp3.RequestBody
    public final void d(yw0 yw0Var) throws IOException {
        byte[] bArr = new byte[262144];
        long j = this.b;
        while (j > 0) {
            int i = this.c.read(bArr, 0, (int) Math.min(262144L, j));
            if (i == -1) {
                throw new EOFException("Unexpected EOF while streaming Google Drive upload chunk");
            }
            yw0Var.write(bArr, 0, i);
            long j2 = i;
            this.d.invoke(Long.valueOf(j2));
            j -= j2;
        }
    }
}
