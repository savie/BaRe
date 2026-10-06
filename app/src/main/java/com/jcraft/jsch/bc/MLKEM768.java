package com.jcraft.jsch.bc;

import org.bouncycastle.crypto.params.MLKEMParameters;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class MLKEM768 extends MLKEM {
    public MLKEM768() {
        this.a = MLKEMParameters.ml_kem_768;
    }

    @Override // com.jcraft.jsch.bc.MLKEM, com.jcraft.jsch.KEM
    public final /* bridge */ /* synthetic */ byte[] decapsulate(byte[] bArr) throws Exception {
        return super.decapsulate(bArr);
    }

    @Override // com.jcraft.jsch.bc.MLKEM, com.jcraft.jsch.KEM
    public final /* bridge */ /* synthetic */ byte[] getPublicKey() throws Exception {
        super.getPublicKey();
        throw null;
    }

    @Override // com.jcraft.jsch.bc.MLKEM, com.jcraft.jsch.KEM
    public final /* bridge */ /* synthetic */ void init() throws Exception {
        super.init();
    }
}
