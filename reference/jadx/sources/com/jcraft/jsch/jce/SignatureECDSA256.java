package com.jcraft.jsch.jce;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SignatureECDSA256 extends SignatureECDSAN {
    @Override // com.jcraft.jsch.jce.SignatureECDSAN
    public final String a() {
        return "ecdsa-sha2-nistp256";
    }

    @Override // com.jcraft.jsch.jce.SignatureECDSAN, com.jcraft.jsch.Signature
    public final /* bridge */ /* synthetic */ void init() throws Exception {
        super.init();
    }

    @Override // com.jcraft.jsch.jce.SignatureECDSAN, com.jcraft.jsch.SignatureECDSA
    public final /* bridge */ /* synthetic */ void setPrvKey(byte[] bArr) throws Exception {
        super.setPrvKey(bArr);
    }

    @Override // com.jcraft.jsch.jce.SignatureECDSAN, com.jcraft.jsch.SignatureECDSA
    public final /* bridge */ /* synthetic */ void setPubKey(byte[] bArr, byte[] bArr2) throws Exception {
        super.setPubKey(bArr, bArr2);
    }

    @Override // com.jcraft.jsch.jce.SignatureECDSAN, com.jcraft.jsch.Signature
    public final /* bridge */ /* synthetic */ byte[] sign() throws Exception {
        return super.sign();
    }

    @Override // com.jcraft.jsch.jce.SignatureECDSAN, com.jcraft.jsch.Signature
    public final /* bridge */ /* synthetic */ void update(byte[] bArr) throws Exception {
        super.update(bArr);
    }

    @Override // com.jcraft.jsch.jce.SignatureECDSAN, com.jcraft.jsch.Signature
    public final /* bridge */ /* synthetic */ boolean verify(byte[] bArr) throws Exception {
        return super.verify(bArr);
    }
}
