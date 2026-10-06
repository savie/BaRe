package com.jcraft.jsch.jce;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class HMACMD5 extends HMAC {
    public HMACMD5() {
        this.a = "hmac-md5";
        this.b = 16;
        this.c = "HmacMD5";
    }

    @Override // com.jcraft.jsch.jce.HMAC, com.jcraft.jsch.MAC
    public /* bridge */ /* synthetic */ void doFinal(byte[] bArr, int i) {
        super.doFinal(bArr, i);
    }

    @Override // com.jcraft.jsch.jce.HMAC, com.jcraft.jsch.MAC
    public int getBlockSize() {
        return this.b;
    }

    @Override // com.jcraft.jsch.jce.HMAC, com.jcraft.jsch.MAC
    public final String getName() {
        return this.a;
    }

    @Override // com.jcraft.jsch.jce.HMAC, com.jcraft.jsch.MAC
    public final /* bridge */ /* synthetic */ void init(byte[] bArr) throws Exception {
        super.init(bArr);
    }

    @Override // com.jcraft.jsch.jce.HMAC, com.jcraft.jsch.MAC
    public final boolean isEtM() {
        return this.d;
    }

    @Override // com.jcraft.jsch.jce.HMAC, com.jcraft.jsch.MAC
    public final /* bridge */ /* synthetic */ void update(int i) {
        super.update(i);
    }

    @Override // com.jcraft.jsch.jce.HMAC, com.jcraft.jsch.MAC
    public final /* bridge */ /* synthetic */ void update(byte[] bArr, int i, int i2) {
        super.update(bArr, i, i2);
    }
}
