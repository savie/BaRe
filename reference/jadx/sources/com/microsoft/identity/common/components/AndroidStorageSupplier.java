package com.microsoft.identity.common.components;

import android.content.Context;
import com.microsoft.identity.common.crypto.AndroidAuthSdkStorageEncryptionManager;
import com.microsoft.identity.common.internal.util.AbstractSharedPrefNameValueStorage;
import com.microsoft.identity.common.java.telemetry.Telemetry;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AndroidStorageSupplier {
    private final Context context;
    private final AndroidAuthSdkStorageEncryptionManager storageEncryptionManager;

    public AndroidStorageSupplier(Context context, AndroidAuthSdkStorageEncryptionManager androidAuthSdkStorageEncryptionManager) {
        context.getClass();
        this.context = context;
        this.storageEncryptionManager = androidAuthSdkStorageEncryptionManager;
    }

    public final AbstractSharedPrefNameValueStorage getEncryptedNameValueStore(String str) {
        return Telemetry.Builder.access$getNameValueStore(this.context, str, this.storageEncryptionManager);
    }

    public final AbstractSharedPrefNameValueStorage getUnencryptedNameValueStore(String str) {
        return Telemetry.Builder.access$getNameValueStore(this.context, str, null);
    }
}
