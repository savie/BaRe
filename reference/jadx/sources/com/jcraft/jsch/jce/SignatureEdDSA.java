package com.jcraft.jsch.jce;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class SignatureEdDSA implements com.jcraft.jsch.SignatureEdDSA {
    public SignatureEdDSA() {
        throw new UnsupportedOperationException("SignatureEdDSA requires Java15+.");
    }

    @Override // com.jcraft.jsch.Signature
    public void init() throws Exception {
        throw new UnsupportedOperationException("SignatureEdDSA requires Java15+.");
    }

    @Override // com.jcraft.jsch.SignatureEdDSA
    public void setPrvKey(byte[] bArr) throws Exception {
        throw new UnsupportedOperationException("SignatureEdDSA requires Java15+.");
    }

    @Override // com.jcraft.jsch.SignatureEdDSA
    public void setPubKey(byte[] bArr) throws Exception {
        throw new UnsupportedOperationException("SignatureEdDSA requires Java15+.");
    }

    @Override // com.jcraft.jsch.Signature
    public byte[] sign() throws Exception {
        throw new UnsupportedOperationException("SignatureEdDSA requires Java15+.");
    }

    @Override // com.jcraft.jsch.Signature
    public void update(byte[] bArr) throws Exception {
        throw new UnsupportedOperationException("SignatureEdDSA requires Java15+.");
    }

    @Override // com.jcraft.jsch.Signature
    public boolean verify(byte[] bArr) throws Exception {
        throw new UnsupportedOperationException("SignatureEdDSA requires Java15+.");
    }
}
