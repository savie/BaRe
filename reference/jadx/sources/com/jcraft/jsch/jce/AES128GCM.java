package com.jcraft.jsch.jce;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class AES128GCM extends AESGCM {
    @Override // com.jcraft.jsch.jce.AESGCM, com.jcraft.jsch.Cipher
    public final /* bridge */ /* synthetic */ void doFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        super.doFinal(bArr, i, i2, bArr2, i3);
    }

    @Override // com.jcraft.jsch.Cipher
    public final int getBlockSize() {
        return 16;
    }

    @Override // com.jcraft.jsch.jce.AESGCM, com.jcraft.jsch.Cipher
    public final /* bridge */ /* synthetic */ int getIVSize() {
        return 16;
    }

    @Override // com.jcraft.jsch.jce.AESGCM, com.jcraft.jsch.Cipher
    public final /* bridge */ /* synthetic */ int getTagSize() {
        return 16;
    }

    @Override // com.jcraft.jsch.jce.AESGCM, com.jcraft.jsch.Cipher
    public final /* bridge */ /* synthetic */ void init(int i, byte[] bArr, byte[] bArr2) throws Exception {
        super.init(i, bArr, bArr2);
    }

    @Override // com.jcraft.jsch.jce.AESGCM, com.jcraft.jsch.Cipher
    public final /* bridge */ /* synthetic */ boolean isAEAD() {
        return true;
    }

    @Override // com.jcraft.jsch.jce.AESGCM, com.jcraft.jsch.Cipher
    public final /* bridge */ /* synthetic */ boolean isCBC() {
        return false;
    }

    @Override // com.jcraft.jsch.jce.AESGCM, com.jcraft.jsch.Cipher
    public final /* bridge */ /* synthetic */ void update(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
        super.update(bArr, i, i2, bArr2, i3);
    }

    @Override // com.jcraft.jsch.jce.AESGCM, com.jcraft.jsch.Cipher
    public final /* bridge */ /* synthetic */ void updateAAD(byte[] bArr, int i, int i2) throws Exception {
        super.updateAAD(bArr, i, i2);
    }
}
