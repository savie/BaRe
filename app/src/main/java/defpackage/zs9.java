package defpackage;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zs9 {
    public static final d2a a = d2a.a(new byte[0]);

    public static final d2a a(int i) {
        return d2a.a(ByteBuffer.allocate(5).put((byte) 0).putInt(i).array());
    }

    public static final d2a b(int i) {
        return d2a.a(ByteBuffer.allocate(5).put((byte) 1).putInt(i).array());
    }
}
