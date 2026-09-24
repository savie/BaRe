package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface KeyPairGenEdDSA {
    byte[] getPrv();

    byte[] getPub();

    void init(String str, int i) throws Exception;

    default void init(String str, byte[] bArr) throws Exception {
        throw new UnsupportedOperationException();
    }
}
