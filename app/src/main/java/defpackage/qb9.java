package defpackage;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class qb9 extends db9 {
    public final transient bc9 c;
    public final transient Object[] d;
    public final transient int e;

    public qb9(bc9 bc9Var, Object[] objArr, int i) {
        this.c = bc9Var;
        this.d = objArr;
        this.e = i;
    }

    @Override // defpackage.ea9
    public final int c(Object[] objArr) {
        return f().c(objArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.c.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return f().listIterator(0);
    }

    @Override // defpackage.db9
    public final ma9 k() {
        return new ob9(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.e;
    }
}
