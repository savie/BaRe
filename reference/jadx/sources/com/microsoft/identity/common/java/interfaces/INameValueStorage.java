package com.microsoft.identity.common.java.interfaces;

import com.microsoft.identity.common.java.util.ported.Predicate;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface INameValueStorage<T> {
    T get(String str);

    Iterator<Map.Entry<String, T>> getAllFilteredByKey(Predicate<String> predicate);

    void put(Object obj, String str);
}
