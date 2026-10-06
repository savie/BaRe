package defpackage;

import java.util.zip.CRC32;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class bz0 extends s51 {
    public final CRC32 d = new CRC32();

    public bz0() {
        this.b = 4;
        this.c = "CRC32";
    }

    @Override // defpackage.s51
    public final byte[] a() {
        byte[] bArr = new byte[4];
        CRC32 crc32 = this.d;
        pe4.C(bArr, 0, (int) crc32.getValue());
        crc32.reset();
        return bArr;
    }

    @Override // defpackage.s51
    public final void d(byte[] bArr, int i, int i2) {
        this.d.update(bArr, i, i2);
    }
}
