package defpackage;

import java.io.IOException;
import java.io.InputStream;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class d86 extends InputStream {
    public final InputStream a;
    public final long b;
    public final qt3 c;
    public long d;
    public long e;

    public d86(InputStream inputStream, long j, qt3 qt3Var) {
        this.a = inputStream;
        this.b = j;
        this.c = qt3Var;
    }

    public final void a(int i) {
        long j = this.d;
        this.d = ((long) i) + j;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.e >= 2000) {
            this.e = jCurrentTimeMillis;
            int iR = Const.r(j, this.b);
            this.c.invoke(Long.valueOf(j), Integer.valueOf(iR));
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.a.close();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        bArr.getClass();
        int i3 = this.a.read(bArr, i, i2);
        a(i3);
        return i3;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        int i = this.a.read();
        a(1);
        return i;
    }
}
