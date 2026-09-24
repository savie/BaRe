package com.microsoft.identity.common.java.crypto;

import com.microsoft.identity.common.java.AuthenticationConstants;
import com.microsoft.identity.common.java.exception.ClientException;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class KeyAccessorStringAdapter {
    private final StorageEncryptionManager mKeyAccessor;

    public KeyAccessorStringAdapter(StorageEncryptionManager storageEncryptionManager) {
        storageEncryptionManager.getClass();
        this.mKeyAccessor = storageEncryptionManager;
    }

    public final String decrypt(String str) throws ClientException {
        str.getClass();
        Charset charset = AuthenticationConstants.CHARSET_UTF8;
        charset.getClass();
        byte[] bytes = str.getBytes(charset);
        bytes.getClass();
        byte[] bArrDecrypt = this.mKeyAccessor.decrypt(bytes);
        bArrDecrypt.getClass();
        return new String(bArrDecrypt, charset);
    }

    public final String encrypt(String str) throws ClientException {
        str.getClass();
        Charset charset = AuthenticationConstants.CHARSET_UTF8;
        charset.getClass();
        byte[] bytes = str.getBytes(charset);
        bytes.getClass();
        byte[] bArrEncrypt = this.mKeyAccessor.encrypt(bytes);
        bArrEncrypt.getClass();
        return new String(bArrEncrypt, charset);
    }
}
