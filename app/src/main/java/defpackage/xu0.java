package defpackage;

import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class xu0 extends uu0 {
    public final SeekableByteChannel d;

    public xu0(long j, long j2, SeekableByteChannel seekableByteChannel) {
        super(j, j2);
        this.d = seekableByteChannel;
    }

    @Override // defpackage.uu0
    public final int a(long j, ByteBuffer byteBuffer) {
        int i;
        synchronized (this.d) {
            this.d.position(j);
            i = this.d.read(byteBuffer);
        }
        byteBuffer.flip();
        return i;
    }
}
