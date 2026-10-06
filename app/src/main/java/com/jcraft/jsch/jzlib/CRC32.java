package com.jcraft.jsch.jzlib;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
final class CRC32 implements Checksum {
    public static final int[] b = new int[256];
    public int a = 0;

    static {
        for (int i = 0; i < 256; i++) {
            int i2 = 8;
            int i3 = i;
            while (true) {
                i2--;
                if (i2 >= 0) {
                    i3 = (i3 & 1) != 0 ? (i3 >>> 1) ^ (-306674912) : i3 >>> 1;
                }
            }
            b[i] = i3;
        }
    }

    @Override // com.jcraft.jsch.jzlib.Checksum
    public final CRC32 copy() {
        CRC32 crc32 = new CRC32();
        crc32.a = this.a;
        return crc32;
    }

    @Override // com.jcraft.jsch.jzlib.Checksum
    public final long getValue() {
        return ((long) this.a) & 4294967295L;
    }

    @Override // com.jcraft.jsch.jzlib.Checksum
    public final void reset(long j) {
        this.a = (int) (j & 4294967295L);
    }

    @Override // com.jcraft.jsch.jzlib.Checksum
    public final void update(byte[] bArr, int i, int i2) {
        int i3 = ~this.a;
        while (true) {
            i2--;
            if (i2 < 0) {
                this.a = ~i3;
                return;
            }
            int i4 = i + 1;
            i3 = (i3 >>> 8) ^ b[(bArr[i] ^ i3) & 255];
            i = i4;
        }
    }

    @Override // com.jcraft.jsch.jzlib.Checksum
    public final void reset() {
        this.a = 0;
    }
}
