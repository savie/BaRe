package com.microsoft.identity.common.crypto.wrappedsecretkey;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class WrappedSecretKeyLegacySerializer implements IWrappedSecretKeySerializer {
    @Override // com.microsoft.identity.common.crypto.wrappedsecretkey.IWrappedSecretKeySerializer
    public final WrappedSecretKey deserialize(byte[] bArr) {
        return new WrappedSecretKey("AES", "RSA/ECB/PKCS1Padding", bArr);
    }

    @Override // com.microsoft.identity.common.crypto.wrappedsecretkey.IWrappedSecretKeySerializer
    public final byte[] serialize(WrappedSecretKey wrappedSecretKey) {
        return wrappedSecretKey.getWrappedKeyData();
    }
}
