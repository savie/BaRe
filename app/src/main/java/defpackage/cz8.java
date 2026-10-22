package defpackage;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class cz8 extends uu0 {
    public final FileChannel d;

    public cz8(long j, long j2, FileChannel fileChannel) {
        super(j, j2);
        this.d = fileChannel;
    }

    @Override // defpackage.uu0
    public final int a(long j, ByteBuffer byteBuffer) throws IOException {
        int i = this.d.read(byteBuffer, j);
        byteBuffer.flip();
        return i;
    }
}
