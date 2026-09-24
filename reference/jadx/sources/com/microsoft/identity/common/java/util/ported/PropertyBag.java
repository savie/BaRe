package com.microsoft.identity.common.java.util.ported;

import defpackage.f6;
import java.io.Serializable;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class PropertyBag {
    private final InMemoryStorage mMap = new InMemoryStorage();

    public final <T extends Serializable> T get(String str) {
        if (str == null) {
            f6.n("name is marked non-null but is null");
            return null;
        }
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (T) obj;
        } catch (ClassCastException unused) {
            return null;
        }
    }

    public final <T extends Serializable> T getOrDefault(String str, T t) {
        Object obj = this.mMap.get(str);
        if (obj == null) {
            return t;
        }
        try {
            return (T) obj;
        } catch (ClassCastException unused) {
            return t;
        }
    }

    public final Set<String> keySet() {
        return this.mMap.keySet();
    }

    public final <T extends Serializable> void put(String str, T t) {
        if (str != null) {
            this.mMap.put(t, str);
        } else {
            f6.n("name is marked non-null but is null");
        }
    }
}
