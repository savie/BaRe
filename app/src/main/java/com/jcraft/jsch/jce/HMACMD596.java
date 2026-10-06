package com.jcraft.jsch.jce;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class HMACMD596 extends HMACMD5 {
    public final byte[] g = new byte[16];

    public HMACMD596() {
        this.a = "hmac-md5-96";
    }

    @Override // com.jcraft.jsch.jce.HMACMD5, com.jcraft.jsch.jce.HMAC, com.jcraft.jsch.MAC
    public final void doFinal(byte[] bArr, int i) {
        byte[] bArr2 = this.g;
        super.doFinal(bArr2, 0);
        System.arraycopy(bArr2, 0, bArr, i, 12);
    }

    @Override // com.jcraft.jsch.jce.HMACMD5, com.jcraft.jsch.jce.HMAC, com.jcraft.jsch.MAC
    public final int getBlockSize() {
        return 12;
    }
}
