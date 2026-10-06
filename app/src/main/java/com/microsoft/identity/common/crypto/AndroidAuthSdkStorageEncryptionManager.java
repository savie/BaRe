package com.microsoft.identity.common.crypto;

import android.content.Context;
import com.microsoft.identity.common.adal.internal.AuthenticationSettings;
import com.microsoft.identity.common.java.crypto.StorageEncryptionManager;
import com.microsoft.identity.common.java.crypto.key.ISecretKeyProvider;
import com.microsoft.identity.common.java.crypto.key.PredefinedKeyProvider;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.flighting.CommonFlight;
import com.microsoft.identity.common.java.flighting.CommonFlightsManager;
import com.microsoft.identity.common.logging.Logger;
import defpackage.f6;
import defpackage.q;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AndroidAuthSdkStorageEncryptionManager extends StorageEncryptionManager {
    private final ISecretKeyProvider mKeyStoreKeyProvider;
    private final PredefinedKeyProvider mPredefinedKeyProvider;

    public AndroidAuthSdkStorageEncryptionManager(Context context) {
        if (context == null) {
            f6.n("context is marked non-null but is null");
            throw null;
        }
        AuthenticationSettings authenticationSettings = AuthenticationSettings.INSTANCE;
        if (authenticationSettings.getSecretKeyData() == null) {
            this.mPredefinedKeyProvider = null;
        } else {
            this.mPredefinedKeyProvider = new PredefinedKeyProvider(authenticationSettings.getSecretKeyData());
        }
        this.mKeyStoreKeyProvider = CommonFlightsManager.DefaultValueFlightsProvider.INSTANCE.isFlightEnabled(CommonFlight.ENABLE_KEYSTORE_BACKED_SECRET_KEY_PROVIDER) ? new KeyStoreBackedSecretKeyProvider(context) : new AndroidWrappedKeyProvider(context);
    }

    @Override // com.microsoft.identity.common.java.crypto.StorageEncryptionManager
    public final List<ISecretKeyProvider> getKeyProviderForDecryption(byte[] bArr) throws ClientException {
        String keyIdentifierFromCipherText = StorageEncryptionManager.getKeyIdentifierFromCipherText(bArr);
        if ("U001".equalsIgnoreCase(keyIdentifierFromCipherText)) {
            PredefinedKeyProvider predefinedKeyProvider = this.mPredefinedKeyProvider;
            if (predefinedKeyProvider != null) {
                return Collections.singletonList(predefinedKeyProvider);
            }
            q.i("decryption_failed", "Cipher Text is encrypted by USER_PROVIDED_KEY_IDENTIFIER, but mPredefinedKeyProvider is null.", null);
            return null;
        }
        ISecretKeyProvider iSecretKeyProvider = this.mKeyStoreKeyProvider;
        if (iSecretKeyProvider.getKeyTypeIdentifier().equalsIgnoreCase(keyIdentifierFromCipherText)) {
            return Collections.singletonList(iSecretKeyProvider);
        }
        String strConcat = "Cannot find a matching key to decrypt the given blob. Key Identifier = ".concat(keyIdentifierFromCipherText);
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.warn("AndroidAuthSdkStorageEncryptionManager:getKeyProviderForDecryption", strConcat);
        return Collections.EMPTY_LIST;
    }

    @Override // com.microsoft.identity.common.java.crypto.StorageEncryptionManager
    public final ISecretKeyProvider getKeyProviderForEncryption() {
        PredefinedKeyProvider predefinedKeyProvider = this.mPredefinedKeyProvider;
        return predefinedKeyProvider != null ? predefinedKeyProvider : this.mKeyStoreKeyProvider;
    }
}
