package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface Identity {
    void clear();

    @Deprecated
    default boolean decrypt() {
        throw new UnsupportedOperationException("not implemented");
    }

    String getAlgName();

    String getName();

    byte[] getPublicKeyBlob();

    byte[] getSignature(byte[] bArr);

    default byte[] getSignature(byte[] bArr, String str) {
        return getSignature(bArr);
    }

    boolean isEncrypted();

    boolean setPassphrase(byte[] bArr) throws JSchException;
}
