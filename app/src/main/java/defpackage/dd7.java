package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class dd7 extends ws7 implements rt3 {
    public /* synthetic */ gd7 a;
    public /* synthetic */ ij5 b;

    @Override // defpackage.rt3
    public final Object a(Object obj, Object obj2, Object obj3) {
        dd7 dd7Var = new dd7(3, (jv1) obj3);
        dd7Var.a = (gd7) obj;
        dd7Var.b = (ij5) obj2;
        return dd7Var.invokeSuspend(be8.a);
    }

    @Override // defpackage.ml0
    public final Object invokeSuspend(Object obj) {
        lg7.H(obj);
        gd7 gd7Var = this.a;
        ij5 ij5Var = this.b;
        Set setKeySet = ij5Var.a().keySet();
        ArrayList arrayList = new ArrayList(hl1.G0(setKeySet, 10));
        Iterator it = setKeySet.iterator();
        while (it.hasNext()) {
            arrayList.add(((l46) it.next()).a);
        }
        Map<String, ?> all = gd7Var.a.getAll();
        all.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<String, ?>> it2 = all.entrySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Map.Entry<String, ?> next = it2.next();
            String key = next.getKey();
            Set set = gd7Var.b;
            if (set != null ? set.contains(key) : true) {
                linkedHashMap.put(next.getKey(), next.getValue());
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(x65.q0(linkedHashMap.size()));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Object key2 = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof Set) {
                value = el1.z1((Iterable) value);
            }
            linkedHashMap2.put(key2, value);
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
            if (!arrayList.contains((String) entry2.getKey())) {
                linkedHashMap3.put(entry2.getKey(), entry2.getValue());
            }
        }
        ij5 ij5Var2 = new ij5(new LinkedHashMap(ij5Var.a()), false);
        for (Map.Entry entry3 : linkedHashMap3.entrySet()) {
            String str = (String) entry3.getKey();
            Object value2 = entry3.getValue();
            if (value2 instanceof Boolean) {
                str.getClass();
                ij5Var2.d(new l46(str), value2);
            } else if (value2 instanceof Float) {
                str.getClass();
                ij5Var2.d(new l46(str), value2);
            } else if (value2 instanceof Integer) {
                str.getClass();
                ij5Var2.d(new l46(str), value2);
            } else if (value2 instanceof Long) {
                str.getClass();
                ij5Var2.d(new l46(str), value2);
            } else if (value2 instanceof String) {
                str.getClass();
                ij5Var2.d(new l46(str), value2);
            } else if (value2 instanceof Set) {
                str.getClass();
                ij5Var2.d(new l46(str), (Set) value2);
            }
        }
        return new ij5(new LinkedHashMap(ij5Var2.a()), true);
    }
}
