package defpackage;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class hw0 extends InputStream {
    public final /* synthetic */ jw0 a;

    public hw0(jw0 jw0Var) {
        this.a = jw0Var;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.a.a();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        try {
            return this.a.n() & 255;
        } catch (iw0 e) {
            throw new IOException(e);
        }
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        this.a.c = (int) j;
        return j;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        try {
            this.a.o(bArr, bArr.length);
            return bArr.length;
        } catch (iw0 e) {
            throw new IOException(e);
        }
    }
}
