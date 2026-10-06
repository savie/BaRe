package defpackage;

import java.io.BufferedInputStream;
import java.io.EOFException;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class g08 extends RequestBody {
    public final /* synthetic */ long b;
    public final /* synthetic */ BufferedInputStream c;
    public final /* synthetic */ mm d;

    public g08(long j, BufferedInputStream bufferedInputStream, mm mmVar) {
        this.b = j;
        this.c = bufferedInputStream;
        this.d = mmVar;
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
    public final void d(yw0 yw0Var) throws IOException {
        byte[] bArr = new byte[8192];
        long j = this.b;
        while (j > 0) {
            int i = this.c.read(bArr, 0, (int) Math.min(8192L, j));
            if (i == -1) {
                throw new EOFException("Unexpected EOF while uploading TeraBox chunk.");
            }
            yw0Var.write(bArr, 0, i);
            long j2 = i;
            j -= j2;
            this.d.invoke(Long.valueOf(j2));
        }
    }
}
