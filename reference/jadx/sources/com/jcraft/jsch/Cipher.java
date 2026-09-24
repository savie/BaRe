package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface Cipher {
    public static final int DECRYPT_MODE = 1;
    public static final int ENCRYPT_MODE = 0;

    int getBlockSize();

    int getIVSize();

    default int getTagSize() {
        return 0;
    }

    void init(int i, byte[] bArr, byte[] bArr2) throws Exception;

    default boolean isAEAD() {
        return false;
    }

    boolean isCBC();

    default boolean isChaCha20() {
        return false;
    }

    void update(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception;

    default void update(int i) throws Exception {
    }

    default void updateAAD(byte[] bArr, int i, int i2) throws Exception {
    }

    default void doFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws Exception {
    }
}
