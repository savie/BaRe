package defpackage;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class rt5 extends RequestBody {
    public final /* synthetic */ long b;
    public final /* synthetic */ InputStream c;
    public final /* synthetic */ vq5 d;

    public rt5(long j, InputStream inputStream, vq5 vq5Var) {
        this.b = j;
        this.c = inputStream;
        this.d = vq5Var;
    }

    @Override // okhttp3.RequestBody
    public final long a() {
        return this.b;
    }

    @Override // okhttp3.RequestBody
    public final MediaType b() {
        return st5.g;
    }

    @Override // okhttp3.RequestBody
    public final void d(yw0 yw0Var) throws IOException {
        byte[] bArr = new byte[262144];
        long j = this.b;
        while (j > 0) {
            int i = this.c.read(bArr, 0, (int) Math.min(262144L, j));
            if (i == -1) {
                throw new EOFException("Unexpected EOF while streaming OneDrive upload chunk");
            }
            yw0Var.write(bArr, 0, i);
            long j2 = i;
            j -= j2;
            this.d.invoke(Long.valueOf(j2));
        }
    }
}
