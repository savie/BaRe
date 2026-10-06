package com.jcraft.jsch.jce;

import com.jcraft.jsch.KEM;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
abstract class MLKEM implements KEM {
    public MLKEM() {
        throw new UnsupportedOperationException("MLKEM requires Java24+.");
    }

    @Override // com.jcraft.jsch.KEM
    public byte[] decapsulate(byte[] bArr) throws Exception {
        throw new UnsupportedOperationException("MLKEM requires Java24+.");
    }

    @Override // com.jcraft.jsch.KEM
    public byte[] getPublicKey() throws Exception {
        throw new UnsupportedOperationException("MLKEM requires Java24+.");
    }

    @Override // com.jcraft.jsch.KEM
    public void init() throws Exception {
        throw new UnsupportedOperationException("MLKEM requires Java24+.");
    }
}
