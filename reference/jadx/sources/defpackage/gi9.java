package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gi9 extends li9 {
    public static final Class c = Collections.unmodifiableList(Collections.EMPTY_LIST).getClass();

    @Override // defpackage.li9
    public final void a(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) fm9.d(obj, j);
        if (list instanceof ai9) {
            objUnmodifiableList = ((ai9) list).zze();
        } else if (c.isAssignableFrom(list.getClass())) {
            return;
        } else {
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        fm9.j(obj, j, objUnmodifiableList);
    }

    @Override // defpackage.li9
    public final void b(Object obj, long j, Object obj2) {
        List list;
        List list2;
        List list3 = (List) fm9.d(obj2, j);
        int size = list3.size();
        List list4 = (List) fm9.d(obj, j);
        if (list4.isEmpty()) {
            List zh9Var = list4 instanceof ai9 ? new zh9(size) : new ArrayList(size);
            fm9.j(obj, j, zh9Var);
            list2 = zh9Var;
        } else {
            if (c.isAssignableFrom(list4.getClass())) {
                ArrayList arrayList = new ArrayList(list4.size() + size);
                arrayList.addAll(list4);
                fm9.j(obj, j, arrayList);
                list = arrayList;
            } else if (list4 instanceof ql9) {
                list2 = list4;
                ql9 ql9Var = (ql9) list4;
                zh9 zh9Var2 = new zh9(ql9Var.size() + size);
                zh9Var2.addAll(zh9Var2.b.size(), ql9Var);
                fm9.j(obj, j, zh9Var2);
                list = zh9Var2;
            }
            list2 = list;
        }
        list2 = list4;
        int size2 = list2.size();
        int size3 = list3.size();
        if (size2 > 0 && size3 > 0) {
            list2.addAll(list3);
        }
        if (size2 > 0) {
            list3 = list2;
        }
        fm9.j(obj, j, list3);
    }
}
