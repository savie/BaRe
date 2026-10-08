package defpackage;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fh {
    public static final fh g;
    public final ByteBuffer a;
    public final int b;
    public final int c;
    public final int[] d;
    public final boolean e;
    public final String[] f;

    static {
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(0).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.getClass();
        g = new fh(byteBufferOrder, 0, 0, new int[0], true);
    }

    public fh(ByteBuffer byteBuffer, int i, int i2, int[] iArr, boolean z) {
        this.a = byteBuffer;
        this.b = i;
        this.c = i2;
        this.d = iArr;
        this.e = z;
        this.f = new String[iArr.length];
    }
}
