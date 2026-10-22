package defpackage;

import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ra4 implements Iterable {
    public final oa4 a;

    public ra4(List list, Comparator comparator) {
        oa4 oa4VarB;
        Map map = Collections.EMPTY_MAP;
        if (list.size() < 25) {
            Collections.sort(list, comparator);
            int size = list.size();
            Object[] objArr = new Object[size];
            Object[] objArr2 = new Object[size];
            int i = 0;
            for (Object obj : list) {
                objArr[i] = obj;
                objArr2[i] = map.get(obj);
                i++;
            }
            oa4VarB = new r50(comparator, objArr, objArr2);
        } else {
            oa4VarB = x91.b(list, map, comparator);
        }
        this.a = oa4VarB;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ra4) {
            return this.a.equals(((ra4) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new qa4(this.a.iterator());
    }

    public ra4(oa4 oa4Var) {
        this.a = oa4Var;
    }
}
