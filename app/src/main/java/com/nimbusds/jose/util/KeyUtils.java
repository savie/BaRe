package com.nimbusds.jose.util;

import javax.crypto.SecretKey;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class KeyUtils {
    private KeyUtils() {
    }

    public static SecretKey toAESKey(final SecretKey secretKey) {
        return (secretKey == null || secretKey.getAlgorithm().equals("AES")) ? secretKey : new SecretKey() { // from class: com.nimbusds.jose.util.KeyUtils.1
            @Override // java.security.Key
            public String getAlgorithm() {
                return "AES";
            }

            @Override // java.security.Key
            public byte[] getEncoded() {
                return secretKey.getEncoded();
            }

            @Override // java.security.Key
            public String getFormat() {
                return secretKey.getFormat();
            }
        };
    }
}
