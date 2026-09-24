package com.microsoft.identity.common.internal.cache;

import android.content.Context;
import android.content.SharedPreferences;
import com.microsoft.identity.common.java.crypto.KeyAccessorStringAdapter;
import com.microsoft.identity.common.java.crypto.StorageEncryptionManager;
import com.microsoft.identity.common.java.exception.ClientException;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.java.util.ported.Predicate;
import com.microsoft.identity.common.logging.Logger;
import defpackage.fz5;
import defpackage.m0;
import java.util.AbstractMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SharedPreferencesFileManager {
    public static final /* synthetic */ int a = 0;
    private static final ConcurrentHashMap objectCache = new ConcurrentHashMap(16, 0.75f, 1);
    private final KeyAccessorStringAdapter mEncryptionManager;
    private final SharedPreferences mSharedPreferences;

    public SharedPreferencesFileManager(Context context, String str, StorageEncryptionManager storageEncryptionManager) {
        if (storageEncryptionManager == null) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose("SharedPreferencesFileManager", "Init: ");
        } else {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.verbose("SharedPreferencesFileManager", "Init with storage helper:  SharedPreferencesFileManager");
        }
        this.mSharedPreferences = context.getSharedPreferences(str, 0);
        if (storageEncryptionManager != null) {
            this.mEncryptionManager = new KeyAccessorStringAdapter(storageEncryptionManager);
        } else {
            this.mEncryptionManager = null;
        }
    }

    public static SharedPreferencesFileManager getSharedPreferences(Context context, String str, StorageEncryptionManager storageEncryptionManager) {
        StringBuilder sbN = fz5.n(str, "/");
        sbN.append(context.getPackageName());
        sbN.append("/0/");
        sbN.append(storageEncryptionManager == null ? "clear" : storageEncryptionManager.getClass().getCanonicalName());
        String string = sbN.toString();
        ConcurrentHashMap concurrentHashMap = objectCache;
        SharedPreferencesFileManager sharedPreferencesFileManager = (SharedPreferencesFileManager) concurrentHashMap.get(string);
        if (sharedPreferencesFileManager != null) {
            return sharedPreferencesFileManager;
        }
        SharedPreferencesFileManager sharedPreferencesFileManager2 = (SharedPreferencesFileManager) concurrentHashMap.putIfAbsent(string, new SharedPreferencesFileManager(context, str, storageEncryptionManager));
        return sharedPreferencesFileManager2 == null ? (SharedPreferencesFileManager) concurrentHashMap.get(string) : sharedPreferencesFileManager2;
    }

    public final void clear() {
        this.mSharedPreferences.edit().clear().apply();
    }

    public final Map<String, String> getAll() {
        Map all = this.mSharedPreferences.getAll();
        KeyAccessorStringAdapter keyAccessorStringAdapter = this.mEncryptionManager;
        if (keyAccessorStringAdapter != null) {
            for (Map.Entry entry : all.entrySet()) {
                String str = (String) entry.getValue();
                if (!StringUtil.isNullOrEmpty(str)) {
                    try {
                        String strDecrypt = keyAccessorStringAdapter.decrypt(str);
                        if (!StringUtil.isNullOrEmpty(strDecrypt)) {
                            entry.setValue(strDecrypt);
                        }
                    } catch (ClientException unused) {
                        int i = Logger.a;
                        com.microsoft.identity.common.java.logging.Logger.error("SharedPreferencesFileManager:getAll", "Failed to decrypt value", null);
                    }
                }
            }
        }
        return all;
    }

    public final Iterator<Map.Entry<String, String>> getAllFilteredByKey(Predicate<String> predicate) {
        return new Iterator<Map.Entry<String, String>>(this.mSharedPreferences.getAll(), predicate) { // from class: com.microsoft.identity.common.internal.cache.SharedPreferencesFileManager.1
            final Iterator<Map.Entry<String, String>> iterator;
            Map.Entry<String, String> nextEntry = null;
            final /* synthetic */ Predicate val$keyFilter;

            {
                this.val$keyFilter = predicate;
                this.iterator = map.entrySet().iterator();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                if (this.nextEntry != null) {
                    return true;
                }
                Iterator<Map.Entry<String, String>> it = this.iterator;
                if (!it.hasNext()) {
                    return false;
                }
                do {
                    Map.Entry<String, String> next = it.next();
                    if (this.val$keyFilter.test(next.getKey())) {
                        SharedPreferencesFileManager sharedPreferencesFileManager = SharedPreferencesFileManager.this;
                        if (sharedPreferencesFileManager.mEncryptionManager != null) {
                            String value = next.getValue();
                            if (!StringUtil.isNullOrEmpty(value)) {
                                try {
                                    String strDecrypt = sharedPreferencesFileManager.mEncryptionManager.decrypt(value);
                                    if (!StringUtil.isNullOrEmpty(strDecrypt)) {
                                        this.nextEntry = new AbstractMap.SimpleEntry(next.getKey(), strDecrypt);
                                    }
                                } catch (ClientException unused) {
                                    int i = SharedPreferencesFileManager.a;
                                    int i2 = Logger.a;
                                    com.microsoft.identity.common.java.logging.Logger.error("SharedPreferencesFileManager:getAllFilteredByKey", "Failed to decrypt value", null);
                                }
                            }
                        } else {
                            this.nextEntry = next;
                        }
                    }
                    if (this.nextEntry != null) {
                        break;
                    }
                } while (it.hasNext());
                return this.nextEntry != null;
            }

            @Override // java.util.Iterator
            public final Map.Entry<String, String> next() {
                if (this.nextEntry == null && !hasNext()) {
                    m0.d();
                    return null;
                }
                Map.Entry<String, String> entry = this.nextEntry;
                this.nextEntry = null;
                return entry;
            }

            @Override // java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException("Removal is not supported");
            }
        };
    }

    public final String getString(String str) {
        String string = this.mSharedPreferences.getString(str, null);
        if (StringUtil.isNullOrEmpty(string)) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.info("SharedPreferencesFileManager:getString", "Data associated to the given key is null or empty", null);
            return null;
        }
        KeyAccessorStringAdapter keyAccessorStringAdapter = this.mEncryptionManager;
        if (keyAccessorStringAdapter == null) {
            return string;
        }
        try {
            return keyAccessorStringAdapter.decrypt(string);
        } catch (ClientException unused) {
            int i2 = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("SharedPreferencesFileManager:getString", "Failed to decrypt value", null);
            return null;
        }
    }

    public final void putString(String str, String str2) {
        String strEncrypt;
        SharedPreferences.Editor editorEdit = this.mSharedPreferences.edit();
        KeyAccessorStringAdapter keyAccessorStringAdapter = this.mEncryptionManager;
        if (keyAccessorStringAdapter == null || StringUtil.isNullOrEmpty(str2)) {
            editorEdit.putString(str, str2).apply();
            return;
        }
        try {
            strEncrypt = keyAccessorStringAdapter.encrypt(str2);
        } catch (ClientException unused) {
            int i = Logger.a;
            com.microsoft.identity.common.java.logging.Logger.error("SharedPreferencesFileManager:putString", "Failed to store encrypted value", null);
            strEncrypt = null;
        }
        editorEdit.putString(str, strEncrypt).apply();
    }

    public final void remove(String str) {
        int i = Logger.a;
        com.microsoft.identity.common.java.logging.Logger.info("SharedPreferencesFileManager:remove", "Removing cache key");
        this.mSharedPreferences.edit().remove(str).apply();
        com.microsoft.identity.common.java.logging.Logger.infoPII("SharedPreferencesFileManager:remove", "Removed cache key [" + str + "]");
    }
}
