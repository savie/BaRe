package defpackage;

import java.io.DataInputStream;
import java.nio.ByteBuffer;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class pb4 {
    public final cy1 a;
    public long b;
    public long c;
    public long d;
    public long e;
    public final s51 f;

    public pb4() {
        cy1 cy1Var = new cy1();
        this.b = 0L;
        this.c = 0L;
        this.d = 0L;
        this.e = 0L;
        this.a = cy1Var;
        try {
            this.f = new gr6();
        } catch (NoSuchAlgorithmException unused) {
            this.f = new bz0();
        }
    }

    public final void a(long j, long j2) throws cy1 {
        this.b += (3 + j) & (-4);
        this.c += j2;
        this.d += (long) (bb9.v(j2) + bb9.v(j));
        long j3 = this.e + 1;
        this.e = j3;
        if (this.b >= 0 && this.c >= 0 && ((((long) (bb9.v(j3) + 1)) + this.d + 7) & (-4)) <= 17179869184L) {
            if (((((long) (bb9.v(this.e) + 1)) + this.d + 7) & (-4)) + this.b + 12 + 12 >= 0) {
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
                byteBufferAllocate.putLong(j);
                byteBufferAllocate.putLong(j2);
                byte[] bArrArray = byteBufferAllocate.array();
                s51 s51Var = this.f;
                s51Var.getClass();
                s51Var.d(bArrArray, 0, bArrArray.length);
                return;
            }
        }
        throw this.a;
    }

    public final void b(wu0 wu0Var) throws cy1 {
        CRC32 crc32 = new CRC32();
        crc32.update(0);
        CheckedInputStream checkedInputStream = new CheckedInputStream(wu0Var, crc32);
        if (bb9.r(checkedInputStream) != this.e) {
            throw new cy1("XZ Block Header or the start of XZ Index is corrupt");
        }
        pb4 pb4Var = new pb4();
        for (long j = 0; j < this.e; j++) {
            try {
                pb4Var.a(bb9.r(checkedInputStream), bb9.r(checkedInputStream));
                if (pb4Var.b > this.b || pb4Var.c > this.c || pb4Var.d > this.d) {
                    throw new cy1("XZ Index is corrupt");
                }
            } catch (ay8 unused) {
                throw new cy1("XZ Index is corrupt");
            }
        }
        if (pb4Var.b != this.b || pb4Var.c != this.c || pb4Var.d != this.d || !Arrays.equals(pb4Var.f.a(), this.f.a())) {
            throw new cy1("XZ Index is corrupt");
        }
        DataInputStream dataInputStream = new DataInputStream(checkedInputStream);
        for (int iV = (int) (3 & (4 - ((((long) (bb9.v(this.e) + 1)) + this.d) + 4))); iV > 0; iV--) {
            if (dataInputStream.readUnsignedByte() != 0) {
                throw new cy1("XZ Index is corrupt");
            }
        }
        long value = crc32.getValue();
        for (int i = 0; i < 4; i++) {
            if (((value >>> (i * 8)) & 255) != dataInputStream.readUnsignedByte()) {
                throw new cy1("XZ Index is corrupt");
            }
        }
    }
}
