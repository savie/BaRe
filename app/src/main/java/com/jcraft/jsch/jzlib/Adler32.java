package com.jcraft.jsch.jzlib;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class Adler32 implements Checksum {
    public long a = 1;
    public long b = 0;

    @Override // com.jcraft.jsch.jzlib.Checksum
    public final Adler32 copy() {
        Adler32 adler32 = new Adler32();
        adler32.a = this.a;
        adler32.b = this.b;
        return adler32;
    }

    @Override // com.jcraft.jsch.jzlib.Checksum
    public final long getValue() {
        return (this.b << 16) | this.a;
    }

    @Override // com.jcraft.jsch.jzlib.Checksum
    public final void reset(long j) {
        this.a = j & 65535;
        this.b = (j >> 16) & 65535;
    }

    @Override // com.jcraft.jsch.jzlib.Checksum
    public final void update(byte[] bArr, int i, int i2) {
        long j;
        if (i2 == 1) {
            long j2 = this.a + ((long) (bArr[i] & 255));
            long j3 = this.b + j2;
            this.a = j2 % 65521;
            this.b = j3 % 65521;
            return;
        }
        int i3 = i2 / 5552;
        int i4 = i2 % 5552;
        while (true) {
            int i5 = i3 - 1;
            if (i3 <= 0) {
                break;
            }
            int i6 = 5552;
            while (true) {
                int i7 = i6 - 1;
                j = this.a;
                if (i6 > 0) {
                    long j4 = j + ((long) (bArr[i] & 255));
                    this.a = j4;
                    this.b += j4;
                    i++;
                    i6 = i7;
                }
            }
            this.a = j % 65521;
            this.b %= 65521;
            i3 = i5;
        }
        while (true) {
            int i8 = i4 - 1;
            long j5 = this.a;
            if (i4 <= 0) {
                this.a = j5 % 65521;
                this.b %= 65521;
                return;
            }
            long j6 = j5 + ((long) (bArr[i] & 255));
            this.a = j6;
            this.b += j6;
            i++;
            i4 = i8;
        }
    }

    @Override // com.jcraft.jsch.jzlib.Checksum
    public final void reset() {
        this.a = 1L;
        this.b = 0L;
    }
}
