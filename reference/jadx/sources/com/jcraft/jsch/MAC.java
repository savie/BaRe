package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface MAC {
    void doFinal(byte[] bArr, int i);

    int getBlockSize();

    String getName();

    void init(byte[] bArr) throws Exception;

    default boolean isEtM() {
        return false;
    }

    void update(int i);

    void update(byte[] bArr, int i, int i2);
}
