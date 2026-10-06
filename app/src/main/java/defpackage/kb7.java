package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kb7 extends OutputStream {
    public final ByteBuffer a = ByteBuffer.allocate(8192);
    public final /* synthetic */ lb7 b;

    public kb7(lb7 lb7Var) {
        this.b = lb7Var;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        lb7 lb7Var = this.b;
        FileChannel fileChannel = lb7Var.a;
        if (i2 > 8192) {
            fileChannel.write(ByteBuffer.wrap(bArr, i, i2));
        } else {
            ByteBuffer byteBuffer = this.a;
            byteBuffer.clear();
            byteBuffer.put(bArr, i, i2).flip();
            fileChannel.write(byteBuffer);
        }
        lb7Var.e.update(bArr, i, i2);
        lb7Var.f += (long) i2;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        ByteBuffer byteBuffer = this.a;
        byteBuffer.clear();
        byteBuffer.put((byte) i).flip();
        lb7 lb7Var = this.b;
        lb7Var.a.write(byteBuffer);
        lb7Var.e.update(i);
        lb7Var.f++;
    }
}
