package com.jcraft.jsch.jce;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class HMACSHA256SSHCOM extends HMAC {
    public HMACSHA256SSHCOM() {
        this.a = "hmac-sha256@ssh.com";
        this.b = 16;
        this.c = "HmacSHA256";
    }

    @Override // com.jcraft.jsch.jce.HMAC, com.jcraft.jsch.MAC
    public final /* bridge */ /* synthetic */ void doFinal(byte[] bArr, int i) {
        super.doFinal(bArr, i);
    }

    @Override // com.jcraft.jsch.jce.HMAC, com.jcraft.jsch.MAC
    public final int getBlockSize() {
        return 32;
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
