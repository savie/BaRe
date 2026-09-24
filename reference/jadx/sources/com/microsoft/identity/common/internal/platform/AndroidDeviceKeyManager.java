package com.microsoft.identity.common.internal.platform;

import com.microsoft.identity.common.java.platform.AbstractKeyStoreKeyManager;
import defpackage.dj7;
import defpackage.f6;
import java.security.KeyStore;
import java.security.KeyStore.Entry;
import java.security.KeyStoreException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class AndroidDeviceKeyManager<K extends KeyStore.Entry> extends AbstractKeyStoreKeyManager<K> {
    public static final /* synthetic */ int b = 0;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public final class AndroidDeviceKeyManagerBuilder<K extends KeyStore.Entry> {
        private String keyAlias;
        private KeyStore keyStore;

        public final AndroidDeviceKeyManager<K> build() throws KeyStoreException {
            return new AndroidDeviceKeyManager<>(this.keyAlias, this.keyStore);
        }

        public final void keyAlias(String str) {
            if (str != null) {
                this.keyAlias = str;
            } else {
                f6.n("keyAlias is marked non-null but is null");
            }
        }

        public final void keyStore(KeyStore keyStore) {
            this.keyStore = keyStore;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("AndroidDeviceKeyManager.AndroidDeviceKeyManagerBuilder(keyStore=");
            sb.append(this.keyStore);
            sb.append(", keyAlias=");
            return dj7.n(sb, this.keyAlias, ")");
        }
    }
}
