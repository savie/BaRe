package defpackage;

import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.Random;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dr8 {
    public final LinkedBlockingQueue a;
    public final Random b = new Random();
    public volatile boolean c = false;
    public boolean d = false;
    public final ar8 e;
    public WritableByteChannel f;
    public final Thread g;

    public dr8(ar8 ar8Var, int i) {
        Thread threadNewThread = ar8.n.newThread(new aq2(this, 4));
        this.g = threadNewThread;
        ar8.o.getClass();
        threadNewThread.setName("TubeSockWriter-" + i);
        this.e = ar8Var;
        this.a = new LinkedBlockingQueue();
    }

    public final ByteBuffer a(byte b, byte[] bArr) {
        int length = bArr.length;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length + (length < 126 ? 6 : length <= 65535 ? 8 : 14));
        byteBufferAllocate.put((byte) (b | (-128)));
        if (length < 126) {
            byteBufferAllocate.put((byte) (length | 128));
        } else if (length <= 65535) {
            byteBufferAllocate.put((byte) -2);
            byteBufferAllocate.putShort((short) length);
        } else {
            byteBufferAllocate.put((byte) -1);
            byteBufferAllocate.putInt(0);
            byteBufferAllocate.putInt(length);
        }
        byte[] bArr2 = new byte[4];
        this.b.nextBytes(bArr2);
        byteBufferAllocate.put(bArr2);
        for (int i = 0; i < bArr.length; i++) {
            byteBufferAllocate.put((byte) (bArr[i] ^ bArr2[i % 4]));
        }
        byteBufferAllocate.flip();
        return byteBufferAllocate;
    }

    public final synchronized void b(byte b, byte[] bArr) {
        try {
            ByteBuffer byteBufferA = a(b, bArr);
            if (this.c && (this.d || b != 8)) {
                throw new br8("Shouldn't be sending");
            }
            if (b == 8) {
                this.d = true;
            }
            this.a.add(byteBufferA);
        } catch (Throwable th) {
            throw th;
        }
    }
}
