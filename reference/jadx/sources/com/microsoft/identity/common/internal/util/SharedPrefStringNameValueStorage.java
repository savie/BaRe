package com.microsoft.identity.common.internal.util;

import com.microsoft.identity.common.java.util.ported.Predicate;
import defpackage.f6;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SharedPrefStringNameValueStorage extends AbstractSharedPrefNameValueStorage<String> {
    @Override // com.microsoft.identity.common.java.interfaces.INameValueStorage
    public final Object get(String str) {
        if (str != null) {
            return this.mManager.getString(str);
        }
        f6.n("name is marked non-null but is null");
        return null;
    }

    @Override // com.microsoft.identity.common.java.interfaces.INameValueStorage
    public final Iterator<Map.Entry<String, String>> getAllFilteredByKey(Predicate<String> predicate) {
        return this.mManager.getAllFilteredByKey(predicate);
    }

    @Override // com.microsoft.identity.common.java.interfaces.INameValueStorage
    public final void put(Object obj, String str) {
        this.mManager.putString(str, (String) obj);
    }
}
