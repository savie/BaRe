package com.jcraft.jsch;

import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface KDF {
    byte[] getKey(byte[] bArr, int i);

    default void initWithASN1(byte[] bArr) throws Exception {
        throw new JSchException("initWithASN1() not supported");
    }

    default void initWithOpenSSHv1KDFOptions(byte[] bArr) throws Exception {
        throw new JSchException("initWithOpenSSHv1KDFOptions() not supported");
    }

    default void initWithPPKv3Header(Map<String, String> map) throws Exception {
        throw new JSchException("initWithPPKv3Header() not supported");
    }
}
