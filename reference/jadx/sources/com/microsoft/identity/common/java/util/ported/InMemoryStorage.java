package com.microsoft.identity.common.java.util.ported;

import com.microsoft.identity.common.java.interfaces.INameValueStorage;
import defpackage.f6;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class InMemoryStorage<T> implements INameValueStorage<T> {
    private final ConcurrentHashMap mMap = new ConcurrentHashMap();

    @Override // com.microsoft.identity.common.java.interfaces.INameValueStorage
    public final T get(String str) {
        if (str != null) {
            return (T) this.mMap.get(str);
        }
        f6.n("key is marked non-null but is null");
        return null;
    }

    @Override // com.microsoft.identity.common.java.interfaces.INameValueStorage
    public final Iterator<Map.Entry<String, T>> getAllFilteredByKey(Predicate<String> predicate) {
        HashMap map = new HashMap();
        for (Map.Entry entry : this.mMap.entrySet()) {
            if (predicate.test((String) entry.getKey())) {
                map.put((String) entry.getKey(), entry.getValue());
            }
        }
        return map.entrySet().iterator();
    }

    public final Set<String> keySet() {
        return this.mMap.keySet();
    }

    @Override // com.microsoft.identity.common.java.interfaces.INameValueStorage
    public final void put(Object obj, String str) {
        if (str == null) {
            f6.n("key is marked non-null but is null");
            return;
        }
        ConcurrentHashMap concurrentHashMap = this.mMap;
        if (obj == null) {
            concurrentHashMap.remove(str);
        } else {
            concurrentHashMap.put(str, obj);
        }
    }
}
