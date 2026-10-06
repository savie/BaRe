package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class CipherNone implements Cipher {
    @Override // com.jcraft.jsch.Cipher
    public final int getBlockSize() {
        return 16;
    }

    @Override // com.jcraft.jsch.Cipher
    public final int getIVSize() {
        return 8;
    }

    @Override // com.jcraft.jsch.Cipher
    public final boolean isCBC() {
        return false;
    }

    @Override // com.jcraft.jsch.Cipher
    public final void init(int i, byte[] bArr, byte[] bArr2) throws Exception {
    }

    @Override // com.jcraft.jsch.Cipher
    public final void update(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
    }
}
