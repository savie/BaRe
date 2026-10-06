package com.microsoft.identity.common.internal.util;

import com.microsoft.identity.common.internal.cache.SharedPreferencesFileManager;
import com.microsoft.identity.common.java.util.StringUtil;
import com.microsoft.identity.common.java.util.ported.Predicate;
import defpackage.f6;
import defpackage.m0;
import java.util.AbstractMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class SharedPreferenceLongStorage extends AbstractSharedPrefNameValueStorage<Long> {
    @Override // com.microsoft.identity.common.java.interfaces.INameValueStorage
    public final Object get(String str) {
        if (str != null) {
            String string = this.mManager.getString(str);
            return Long.valueOf(!StringUtil.isNullOrEmpty(string) ? Long.parseLong(string) : 0L);
        }
        f6.n("name is marked non-null but is null");
        return null;
    }

    @Override // com.microsoft.identity.common.java.interfaces.INameValueStorage
    public final Iterator<Map.Entry<String, Long>> getAllFilteredByKey(Predicate<String> predicate) {
        return new Iterator<Map.Entry<String, Long>>(this, predicate) { // from class: com.microsoft.identity.common.internal.util.SharedPreferenceLongStorage.1
            final Iterator<Map.Entry<String, String>> iterator;
            AbstractMap.SimpleEntry nextEntry = null;

            {
                this.iterator = this.mManager.getAllFilteredByKey(predicate);
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
                    try {
                        this.nextEntry = new AbstractMap.SimpleEntry(next.getKey(), Long.valueOf(Long.parseLong(next.getValue())));
                    } catch (NumberFormatException unused) {
                        this.nextEntry = null;
                    }
                    if (this.nextEntry != null) {
                        break;
                    }
                } while (it.hasNext());
                return this.nextEntry != null;
            }

            @Override // java.util.Iterator
            public final Map.Entry<String, Long> next() {
                if (this.nextEntry == null && !hasNext()) {
                    m0.d();
                    return null;
                }
                AbstractMap.SimpleEntry simpleEntry = this.nextEntry;
                this.nextEntry = null;
                return simpleEntry;
            }

            @Override // java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException("Removal of elements is not supported");
            }
        };
    }

    @Override // com.microsoft.identity.common.java.interfaces.INameValueStorage
    public final void put(Object obj, String str) {
        Long l = (Long) obj;
        SharedPreferencesFileManager sharedPreferencesFileManager = this.mManager;
        if (l == null) {
            sharedPreferencesFileManager.putString(str, null);
            return;
        }
        long jLongValue = l.longValue();
        sharedPreferencesFileManager.getClass();
        sharedPreferencesFileManager.putString(str, String.valueOf(jLongValue));
    }
}
