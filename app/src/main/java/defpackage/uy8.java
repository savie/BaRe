package defpackage;

import java.io.Serializable;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class uy8 implements Serializable {
    public static final uy8 b = new uy8(0);
    public final long a;

    static {
        BigInteger.ONE.shiftLeft(63);
    }

    public uy8(byte[] bArr, int i) {
        this.a = b(bArr, i);
    }

    public static long b(byte[] bArr, int i) {
        return ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN).getLong(i);
    }

    public final byte[] a() {
        return ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.a).array();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof uy8) {
            return this.a == ((uy8) obj).a;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return Long.toUnsignedString(this.a);
    }

    public uy8(long j) {
        this.a = j;
    }
}
