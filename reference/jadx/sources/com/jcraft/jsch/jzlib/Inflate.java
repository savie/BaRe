package com.jcraft.jsch.jzlib;

import java.io.ByteArrayOutputStream;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class Inflate {
    public int a;
    public long c;
    public int d;
    public int e;
    public InfBlocks f;
    public final ZStream g;
    public int h;
    public long b = -1;
    public int i = -1;
    public final byte[] j = new byte[4];
    public GZIPHeader k = null;
    public ByteArrayOutputStream l = null;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public static class Return extends Exception {
        public final int a;

        public Return(int i) {
            this.a = i;
        }
    }

    public Inflate(ZStream zStream) {
        this.g = zStream;
    }

    public final void a(int i, long j) {
        int i2 = 0;
        while (true) {
            byte[] bArr = this.j;
            if (i2 >= i) {
                this.g.l.update(bArr, 0, i);
                return;
            } else {
                bArr[i2] = (byte) (255 & j);
                j >>= 8;
                i2++;
            }
        }
    }

    public final int b(int i, int i2) throws Return {
        if (this.l == null) {
            this.l = new ByteArrayOutputStream();
        }
        while (this.c > 0) {
            ZStream zStream = this.g;
            int i3 = zStream.c;
            if (i3 == 0) {
                throw new Return(i);
            }
            zStream.c = i3 - 1;
            zStream.d++;
            byte[] bArr = zStream.a;
            int i4 = zStream.b;
            byte b = bArr[i4];
            this.l.write(bArr, i4, 1);
            zStream.l.update(zStream.a, zStream.b, 1);
            zStream.b++;
            this.c--;
            i = i2;
        }
        return i;
    }

    public final int c(int i, int i2, int i3) throws Return {
        if (this.i == -1) {
            this.i = i;
            this.c = 0L;
        }
        while (true) {
            int i4 = this.i;
            if (i4 <= 0) {
                if (i == 2) {
                    this.c &= 65535;
                } else if (i == 4) {
                    this.c &= 4294967295L;
                }
                this.i = -1;
                return i2;
            }
            ZStream zStream = this.g;
            int i5 = zStream.c;
            if (i5 == 0) {
                throw new Return(i2);
            }
            zStream.c = i5 - 1;
            zStream.d++;
            long j = this.c;
            byte[] bArr = zStream.a;
            int i6 = zStream.b;
            zStream.b = i6 + 1;
            this.c = j | ((long) ((bArr[i6] & 255) << ((i - i4) * 8)));
            this.i = i4 - 1;
            i2 = i3;
        }
    }

    public final void d(int i, int i2) throws Return {
        if (this.l == null) {
            this.l = new ByteArrayOutputStream();
        }
        while (true) {
            ZStream zStream = this.g;
            int i3 = zStream.c;
            if (i3 == 0) {
                throw new Return(i);
            }
            zStream.c = i3 - 1;
            zStream.d++;
            byte[] bArr = zStream.a;
            int i4 = zStream.b;
            byte b = bArr[i4];
            if (b != 0) {
                this.l.write(bArr, i4, 1);
            }
            zStream.l.update(zStream.a, zStream.b, 1);
            zStream.b++;
            if (b == 0) {
                return;
            } else {
                i = i2;
            }
        }
    }
}
