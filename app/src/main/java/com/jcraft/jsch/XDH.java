package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface XDH {
    byte[] getQ() throws Exception;

    byte[] getSecret(byte[] bArr) throws Exception;

    void init(String str, int i) throws Exception;

    boolean validate(byte[] bArr) throws Exception;
}
