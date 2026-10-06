package defpackage;

import java.nio.ByteBuffer;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class l79 {
    public static final byte[] a;

    static {
        byte[] bArr = new byte[0];
        a = bArr;
        ByteBuffer.wrap(bArr);
        gk1.E(bArr, 0, 0);
    }

    public static int a(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    public static int b(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static void c() {
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
