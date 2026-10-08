package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class IdentityFile implements Identity {
    public KeyPair a;
    public final String b;

    private IdentityFile(String str, KeyPair keyPair) {
        this.b = str;
        this.a = keyPair;
    }

    public static IdentityFile a(JSch.InstanceLogger instanceLogger, String str, String str2) {
        return new IdentityFile(str, KeyPair.o(instanceLogger, str, str2));
    }

    public static IdentityFile b(String str, byte[] bArr, byte[] bArr2, JSch.InstanceLogger instanceLogger) {
        return new IdentityFile(str, KeyPair.p(instanceLogger, bArr, bArr2));
    }

    @Override // com.jcraft.jsch.Identity
    public final void clear() {
        this.a.dispose();
        this.a = null;
    }

    @Override // com.jcraft.jsch.Identity
    public final String getAlgName() {
        return this.a.getKeyTypeString();
    }

    public final KeyPair getKeyPair() {
        return this.a;
    }

    @Override // com.jcraft.jsch.Identity
    public final String getName() {
        return this.b;
    }

    @Override // com.jcraft.jsch.Identity
    public final byte[] getPublicKeyBlob() {
        return this.a.getPublicKeyBlob();
    }

    @Override // com.jcraft.jsch.Identity
    public final byte[] getSignature(byte[] bArr) {
        return this.a.getSignature(bArr);
    }

    @Override // com.jcraft.jsch.Identity
    public final boolean isEncrypted() {
        return this.a.i;
    }

    @Override // com.jcraft.jsch.Identity
    public final boolean setPassphrase(byte[] bArr) throws JSchException {
        return this.a.decrypt(bArr);
    }

    @Override // com.jcraft.jsch.Identity
    public final byte[] getSignature(byte[] bArr, String str) {
        return this.a.getSignature(bArr, str);
    }
}
