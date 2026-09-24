package defpackage;

import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class uu0 extends InputStream {
    public final long a;
    public ByteBuffer b;
    public long c;

    public uu0(long j, long j2) {
        long j3 = j + j2;
        this.a = j3;
        if (j3 >= j) {
            this.c = j;
        } else {
            StringBuilder sbT = dj7.t("Invalid length of stream at offset=", ", length=", j);
            sbT.append(j2);
            throw new IllegalArgumentException(sbT.toString());
        }
    }

    public abstract int a(long j, ByteBuffer byteBuffer);

    @Override // java.io.InputStream
    public final synchronized int read(byte[] bArr, int i, int i2) {
        long j = this.c;
        long j2 = this.a;
        if (j >= j2) {
            return -1;
        }
        long jMin = Math.min(i2, j2 - j);
        if (jMin <= 0) {
            return 0;
        }
        if (i < 0 || i > bArr.length || jMin > bArr.length - i) {
            throw new IndexOutOfBoundsException("offset or len are out of bounds");
        }
        int iA = a(this.c, ByteBuffer.wrap(bArr, i, (int) jMin));
        if (iA > 0) {
            this.c += (long) iA;
        }
        return iA;
    }

    @Override // java.io.InputStream
    public final synchronized int read() {
        try {
            if (this.c >= this.a) {
                return -1;
            }
            ByteBuffer byteBuffer = this.b;
            if (byteBuffer == null) {
                this.b = ByteBuffer.allocate(1);
            } else {
                byteBuffer.rewind();
            }
            if (a(this.c, this.b) < 1) {
                return -1;
            }
            this.c++;
            return this.b.get() & 255;
        } catch (Throwable th) {
            throw th;
        }
    }
}
