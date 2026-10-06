package com.microsoft.identity.common.internal.util;

import com.microsoft.identity.common.internal.cache.SharedPreferencesFileManager;
import com.microsoft.identity.common.java.interfaces.INameValueStorage;
import defpackage.f6;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractSharedPrefNameValueStorage<T> implements INameValueStorage<T> {
    protected final SharedPreferencesFileManager mManager;

    public AbstractSharedPrefNameValueStorage(SharedPreferencesFileManager sharedPreferencesFileManager) {
        this.mManager = sharedPreferencesFileManager;
    }

    public final Set<String> keySet() {
        return this.mManager.getAll().keySet();
    }

    public final void remove(String str) {
        if (str != null) {
            this.mManager.remove(str);
        } else {
            f6.n("name is marked non-null but is null");
        }
    }
}
