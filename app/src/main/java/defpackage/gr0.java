package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.UncheckedIOException;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class gr0 implements Closeable {
    public static final long[] e = new long[64];
    public final wu0 a;
    public final ByteOrder b;
    public long c;
    public int d;

    static {
        for (int i = 1; i <= 63; i++) {
            long[] jArr = e;
            jArr[i] = (jArr[i - 1] << 1) + 1;
        }
    }

    public gr0(InputStream inputStream, ByteOrder byteOrder) {
        vu0 vu0VarB = wu0.b();
        vu0VarB.J(inputStream);
        try {
            this.a = new wu0(vu0VarB);
            this.b = byteOrder;
        } catch (IOException e2) {
            throw new UncheckedIOException(e2);
        }
    }

    public final long a(int i) throws IOException {
        int i2;
        ByteOrder byteOrder;
        wu0 wu0Var;
        long j;
        if (i < 0 || i > 63) {
            y5.m("count must not be negative or greater than 63");
            return 0L;
        }
        while (true) {
            i2 = this.d;
            byteOrder = this.b;
            wu0Var = this.a;
            if (i2 >= i || i2 >= 57) {
                break;
            }
            long j2 = wu0Var.read();
            if (j2 < 0) {
                return -1L;
            }
            ByteOrder byteOrder2 = ByteOrder.LITTLE_ENDIAN;
            long j3 = this.c;
            if (byteOrder == byteOrder2) {
                this.c = (j2 << this.d) | j3;
            } else {
                this.c = (j3 << 8) | j2;
            }
            this.d += 8;
        }
        if (i2 >= i) {
            return b(i);
        }
        int i3 = i - i2;
        int i4 = 8 - i3;
        long j4 = wu0Var.read();
        if (j4 < 0) {
            return j4;
        }
        ByteOrder byteOrder3 = ByteOrder.LITTLE_ENDIAN;
        long[] jArr = e;
        if (byteOrder == byteOrder3) {
            this.c = ((jArr[i3] & j4) << this.d) | this.c;
            j = (j4 >>> i3) & jArr[i4];
        } else {
            long j5 = this.c << i3;
            this.c = j5;
            this.c = j5 | ((j4 >>> i4) & jArr[i3]);
            j = jArr[i4] & j4;
        }
        long j6 = jArr[i] & this.c;
        this.c = j;
        this.d = i4;
        return j6;
    }

    public final long b(int i) {
        long j;
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        long j2 = this.c;
        long[] jArr = e;
        if (this.b == byteOrder) {
            j = j2 & jArr[i];
            this.c = j2 >>> i;
        } else {
            j = (j2 >> (this.d - i)) & jArr[i];
        }
        this.d -= i;
        return j;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.a.close();
    }
}
