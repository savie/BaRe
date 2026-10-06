package defpackage;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class vs0 {
    public static final char[] e = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final int[] f = {1779033703, -1150833019, 1013904242, -1521486534, 1359893119, -1694144372, 528734635, 1541459225};
    public static final int[] g = {2, 6, 3, 10, 7, 0, 4, 13, 1, 11, 12, 5, 9, 14, 15, 8};
    public ts0 a;
    public final int[] b;
    public final int[][] c = new int[54][];
    public byte d = 0;

    public vs0() {
        int[] iArr = f;
        this.a = new ts0(iArr, 0L);
        this.b = iArr;
    }

    public static int[] a(int[] iArr, int[] iArr2, long j, int i, int i2) {
        int[] iArr3 = new int[16];
        iArr3[0] = iArr[0];
        iArr3[1] = iArr[1];
        iArr3[2] = iArr[2];
        iArr3[3] = iArr[3];
        iArr3[4] = iArr[4];
        iArr3[5] = iArr[5];
        iArr3[6] = iArr[6];
        iArr3[7] = iArr[7];
        int[] iArr4 = f;
        iArr3[8] = iArr4[0];
        iArr3[9] = iArr4[1];
        iArr3[10] = iArr4[2];
        iArr3[11] = iArr4[3];
        iArr3[12] = (int) (j & 4294967295L);
        iArr3[13] = (int) ((j >> 32) & 4294967295L);
        iArr3[14] = i;
        iArr3[15] = i2;
        f(iArr3, iArr2);
        int[] iArrE = e(iArr2);
        f(iArr3, iArrE);
        int[] iArrE2 = e(iArrE);
        f(iArr3, iArrE2);
        int[] iArrE3 = e(iArrE2);
        f(iArr3, iArrE3);
        int[] iArrE4 = e(iArrE3);
        f(iArr3, iArrE4);
        int[] iArrE5 = e(iArrE4);
        f(iArr3, iArrE5);
        f(iArr3, e(iArrE5));
        for (int i3 = 0; i3 < 8; i3++) {
            int i4 = i3 + 8;
            iArr3[i3] = iArr3[i3] ^ iArr3[i4];
            iArr3[i4] = iArr3[i4] ^ iArr[i3];
        }
        return iArr3;
    }

    public static void b(int[] iArr, int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = iArr[i] + iArr[i2] + i5;
        iArr[i] = i7;
        int i8 = iArr[i4] ^ i7;
        int i9 = (i8 << 16) | (i8 >>> 16);
        iArr[i4] = i9;
        int i10 = iArr[i3] + i9;
        iArr[i3] = i10;
        int i11 = iArr[i2] ^ i10;
        int i12 = (i11 << 20) | (i11 >>> 12);
        iArr[i2] = i12;
        int i13 = iArr[i] + i12 + i6;
        iArr[i] = i13;
        int i14 = iArr[i4] ^ i13;
        int i15 = (i14 << 24) | (i14 >>> 8);
        iArr[i4] = i15;
        int i16 = iArr[i3] + i15;
        iArr[i3] = i16;
        int i17 = iArr[i2] ^ i16;
        iArr[i2] = (i17 << 25) | (i17 >>> 7);
    }

    public static us0 d(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] iArr4 = new int[16];
        int i = 0;
        for (int i2 : iArr) {
            iArr4[i] = i2;
            i++;
        }
        for (int i3 : iArr2) {
            iArr4[i] = i3;
            i++;
        }
        return new us0(iArr3, iArr4, 0L, 64, 4);
    }

    public static int[] e(int[] iArr) {
        int[] iArr2 = new int[16];
        for (int i = 0; i < 16; i++) {
            iArr2[i] = iArr[g[i]];
        }
        return iArr2;
    }

    public static void f(int[] iArr, int[] iArr2) {
        b(iArr, 0, 4, 8, 12, iArr2[0], iArr2[1]);
        b(iArr, 1, 5, 9, 13, iArr2[2], iArr2[3]);
        b(iArr, 2, 6, 10, 14, iArr2[4], iArr2[5]);
        b(iArr, 3, 7, 11, 15, iArr2[6], iArr2[7]);
        b(iArr, 0, 5, 10, 15, iArr2[8], iArr2[9]);
        b(iArr, 1, 6, 11, 12, iArr2[10], iArr2[11]);
        b(iArr, 2, 7, 8, 13, iArr2[12], iArr2[13]);
        b(iArr, 3, 4, 9, 14, iArr2[14], iArr2[15]);
    }

    public final String c() {
        ts0 ts0Var = this.a;
        int[] iArr = ts0Var.a;
        byte[] bArr = ts0Var.c;
        int length = bArr.length / 4;
        int[] iArr2 = new int[length];
        ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        for (int i = 0; i < length; i++) {
            iArr2[i] = byteBufferOrder.getInt();
        }
        us0 us0Var = new us0(iArr, iArr2, ts0Var.b, ts0Var.d, (ts0Var.e == 0 ? 1 : 0) | 2);
        int i2 = this.d;
        while (i2 > 0) {
            i2--;
            us0Var = d(this.c[i2], us0.a(us0Var), this.b);
        }
        int iFloorDiv = Math.floorDiv(32, 64) + 1;
        byte[] bArr2 = new byte[32];
        int i3 = 0;
        for (int i4 = 0; i4 < iFloorDiv; i4++) {
            int[] iArrA = a(us0Var.a, us0Var.b, i4, us0Var.d, us0Var.e | 8);
            for (int i5 = 0; i5 < 16; i5++) {
                for (byte b : ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(iArrA[i5]).array()) {
                    bArr2[i3] = b;
                    i3++;
                    if (i3 == 32) {
                        char[] cArr = new char[64];
                        for (int i6 = 0; i6 < 32; i6++) {
                            byte b2 = bArr2[i6];
                            int i7 = i6 * 2;
                            char[] cArr2 = e;
                            cArr[i7] = cArr2[(b2 & 255) >>> 4];
                            cArr[i7 + 1] = cArr2[b2 & 15];
                        }
                        return new String(cArr);
                    }
                }
            }
        }
        l0.e("Uh oh something has gone horribly wrong. Please create an issue on https://github.com/rctcwyvrn/blake3");
        return null;
    }

    public final void g(byte[] bArr) {
        int i;
        byte b;
        int[] iArr;
        int[][] iArr2;
        int i2 = 0;
        while (i2 < bArr.length) {
            ts0 ts0Var = this.a;
            if ((ts0Var.e * 64) + ts0Var.d == 1024) {
                int[] iArr3 = ts0Var.a;
                byte[] bArr2 = ts0Var.c;
                int length = bArr2.length / 4;
                int[] iArr4 = new int[length];
                ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr2).order(ByteOrder.LITTLE_ENDIAN);
                for (int i3 = 0; i3 < length; i3++) {
                    iArr4[i3] = byteBufferOrder.getInt();
                }
                int[] iArrCopyOfRange = Arrays.copyOfRange(a(iArr3, iArr4, ts0Var.b, ts0Var.d, (ts0Var.e == 0 ? 1 : 0) | 2), 0, 8);
                long j = 1;
                long j2 = this.a.b + 1;
                long j3 = j2;
                while (true) {
                    long j4 = j3 & j;
                    i = 1;
                    b = this.d;
                    iArr = this.b;
                    iArr2 = this.c;
                    if (j4 != 0) {
                        break;
                    }
                    byte b2 = (byte) (b - 1);
                    this.d = b2;
                    iArrCopyOfRange = us0.a(d(iArr2[b2], iArrCopyOfRange, iArr));
                    j3 >>= 1;
                    j = 1;
                }
                iArr2[b] = iArrCopyOfRange;
                this.d = (byte) (b + 1);
                this.a = new ts0(iArr, j2);
            } else {
                i = 1;
            }
            ts0 ts0Var2 = this.a;
            int iMin = Math.min(1024 - ((ts0Var2.e * 64) + ts0Var2.d), bArr.length - i2);
            ts0 ts0Var3 = this.a;
            int i4 = iMin + i2;
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i2, i4);
            int i5 = 0;
            while (i5 < bArrCopyOfRange.length) {
                if (ts0Var3.d == 64) {
                    byte[] bArr3 = ts0Var3.c;
                    int length2 = bArr3.length / 4;
                    int[] iArr5 = new int[length2];
                    ByteBuffer byteBufferOrder2 = ByteBuffer.wrap(bArr3).order(ByteOrder.LITTLE_ENDIAN);
                    for (int i6 = 0; i6 < length2; i6++) {
                        iArr5[i6] = byteBufferOrder2.getInt();
                    }
                    ts0Var3.a = Arrays.copyOfRange(a(ts0Var3.a, iArr5, ts0Var3.b, 64, ts0Var3.e == 0 ? i : 0), 0, 8);
                    ts0Var3.e = (byte) (ts0Var3.e + 1);
                    ts0Var3.c = new byte[64];
                    ts0Var3.d = (byte) 0;
                }
                int iMin2 = Math.min(64 - ts0Var3.d, bArrCopyOfRange.length - i5);
                System.arraycopy(bArrCopyOfRange, i5, ts0Var3.c, ts0Var3.d, iMin2);
                ts0Var3.d = (byte) (ts0Var3.d + iMin2);
                i5 += iMin2;
            }
            i2 = i4;
        }
    }
}
