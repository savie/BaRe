package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class yu0 extends InputStream {
    public final ByteBuffer a;
    public final SeekableByteChannel b;
    public long c;

    public yu0(SeekableByteChannel seekableByteChannel, long j) {
        this.b = seekableByteChannel;
        this.c = j;
        this.a = ByteBuffer.allocate((j >= 8192 || j <= 0) ? 8192 : (int) j);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (i2 == 0) {
            return 0;
        }
        long j = this.c;
        if (j <= 0) {
            return -1;
        }
        if (i2 > j) {
            i2 = (int) j;
        }
        ByteBuffer byteBufferAllocate = this.a;
        int iCapacity = byteBufferAllocate.capacity();
        SeekableByteChannel seekableByteChannel = this.b;
        if (i2 <= iCapacity) {
            byteBufferAllocate.rewind().limit(i2);
            i3 = seekableByteChannel.read(byteBufferAllocate);
            byteBufferAllocate.flip();
        } else {
            byteBufferAllocate = ByteBuffer.allocate(i2);
            i3 = seekableByteChannel.read(byteBufferAllocate);
            byteBufferAllocate.flip();
        }
        if (i3 >= 0) {
            byteBufferAllocate.get(bArr, i, i3);
            this.c -= (long) i3;
        }
        return i3;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        long j = this.c;
        if (j <= 0) {
            return -1;
        }
        this.c = j - 1;
        ByteBuffer byteBuffer = this.a;
        byteBuffer.rewind().limit(1);
        int i = this.b.read(byteBuffer);
        byteBuffer.flip();
        return i < 0 ? i : byteBuffer.get() & 255;
    }
}
