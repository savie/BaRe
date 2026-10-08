package defpackage;

import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class q14 extends LinkedHashMap implements Iterable {
    public final uq4 d(Class cls) {
        while (cls != null) {
            uq4 uq4Var = (uq4) get(cls);
            if (uq4Var != null) {
                return uq4Var;
            }
            cls = cls.getSuperclass();
        }
        return null;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return values().iterator();
    }
}
