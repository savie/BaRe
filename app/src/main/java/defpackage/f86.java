package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import org.swiftapps.swiftbackup.common.Const;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class f86 extends OutputStream {
    public final OutputStream a;
    public final long b;
    public final qt3 c;
    public long d;
    public long e;

    public f86(OutputStream outputStream, long j, qt3 qt3Var) {
        outputStream.getClass();
        this.a = outputStream;
        this.b = j;
        this.c = qt3Var;
    }

    public final void a(int i) {
        this.d += (long) i;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.e >= 2000) {
            this.e = jCurrentTimeMillis;
            long j = this.d;
            this.c.invoke(Long.valueOf(j), Integer.valueOf(Const.r(j, this.b)));
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.a.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        this.a.flush();
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        bArr.getClass();
        this.a.write(bArr);
        a(bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        bArr.getClass();
        this.a.write(bArr, i, i2);
        a(i2);
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        this.a.write(i);
        a(1);
    }
}
