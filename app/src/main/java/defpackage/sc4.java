package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sc4 implements ae7 {
    public final InputStream a;

    public sc4(InputStream inputStream) {
        this.a = inputStream;
    }

    @Override // defpackage.ae7, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            this.a.close();
        } catch (IOException unused) {
        }
    }

    @Override // defpackage.ae7
    public final void d0(OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[65536];
        while (true) {
            InputStream inputStream = this.a;
            int i = inputStream.read(bArr);
            if (i <= 0) {
                inputStream.close();
                outputStream.write(10);
                return;
            }
            outputStream.write(bArr, 0, i);
        }
    }
}
