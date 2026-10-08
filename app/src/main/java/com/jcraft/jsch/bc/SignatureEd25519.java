package com.jcraft.jsch.bc;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SignatureEd25519 extends SignatureEdDSA {
    @Override // com.jcraft.jsch.bc.SignatureEdDSA
    public final String a() {
        return "Ed25519";
    }

    @Override // com.jcraft.jsch.bc.SignatureEdDSA
    public final String b() {
        return "ssh-ed25519";
    }

    @Override // com.jcraft.jsch.bc.SignatureEdDSA, com.jcraft.jsch.Signature
    public final /* bridge */ /* synthetic */ void init() throws Exception {
        super.init();
    }

    @Override // com.jcraft.jsch.bc.SignatureEdDSA, com.jcraft.jsch.SignatureEdDSA
    public final /* bridge */ /* synthetic */ void setPrvKey(byte[] bArr) throws Exception {
        super.setPrvKey(bArr);
    }

    @Override // com.jcraft.jsch.bc.SignatureEdDSA, com.jcraft.jsch.SignatureEdDSA
    public final /* bridge */ /* synthetic */ void setPubKey(byte[] bArr) throws Exception {
        super.setPubKey(bArr);
    }

    @Override // com.jcraft.jsch.bc.SignatureEdDSA, com.jcraft.jsch.Signature
    public final /* bridge */ /* synthetic */ byte[] sign() throws Exception {
        return super.sign();
    }

    @Override // com.jcraft.jsch.bc.SignatureEdDSA, com.jcraft.jsch.Signature
    public final /* bridge */ /* synthetic */ void update(byte[] bArr) throws Exception {
        super.update(bArr);
    }

    @Override // com.jcraft.jsch.bc.SignatureEdDSA, com.jcraft.jsch.Signature
    public final /* bridge */ /* synthetic */ boolean verify(byte[] bArr) throws Exception {
        return super.verify(bArr);
    }
}
