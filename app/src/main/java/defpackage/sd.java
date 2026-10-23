package defpackage;

import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class sd implements Iterable {
    public LinkedHashMap a;

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        LinkedHashMap linkedHashMap = this.a;
        return linkedHashMap == null ? Collections.emptyIterator() : linkedHashMap.values().iterator();
    }
}
