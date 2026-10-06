package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface DH {
    void checkRange() throws Exception;

    byte[] getE() throws Exception;

    byte[] getK() throws Exception;

    void init() throws Exception;

    void setF(byte[] bArr);

    void setG(byte[] bArr);

    void setP(byte[] bArr);
}
