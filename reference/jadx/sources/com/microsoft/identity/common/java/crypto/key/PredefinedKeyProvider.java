package com.microsoft.identity.common.java.crypto.key;

import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class PredefinedKeyProvider implements ISecretKeyProvider {
    private final SecretKeySpec mKey;

    public PredefinedKeyProvider(byte[] bArr) {
        bArr.getClass();
        this.mKey = new SecretKeySpec(bArr, "AES");
    }

    @Override // com.microsoft.identity.common.java.crypto.key.ISecretKeyProvider
    public final String getAlias() {
        return "USER_DEFINED_KEY";
    }

    @Override // com.microsoft.identity.common.java.crypto.key.ISecretKeyProvider
    public final SecretKey getKey() {
        return this.mKey;
    }

    @Override // com.microsoft.identity.common.java.crypto.key.ISecretKeyProvider
    public final String getKeyTypeIdentifier() {
        return "U001";
    }
}
