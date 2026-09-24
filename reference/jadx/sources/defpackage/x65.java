package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class x65 extends jb9 {
    public static Object p0(Map map, Object obj) {
        map.getClass();
        if (map instanceof r65) {
            return ((r65) map).c();
        }
        Object obj2 = map.get(obj);
        if (obj2 != null || map.containsKey(obj)) {
            return obj2;
        }
        throw new NoSuchElementException("Key " + obj + " is missing in the map.");
    }

    public static int q0(int i) {
        if (i < 0) {
            return i;
        }
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static Map r0(pw5... pw5VarArr) {
        if (pw5VarArr.length <= 0) {
            return pv2.a;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(q0(pw5VarArr.length));
        s0(linkedHashMap, pw5VarArr);
        return linkedHashMap;
    }

    public static final void s0(HashMap map, pw5[] pw5VarArr) {
        for (pw5 pw5Var : pw5VarArr) {
            map.put(pw5Var.a, pw5Var.b);
        }
    }

    public static Map t0(ArrayList arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return pv2.a;
        }
        if (size == 1) {
            pw5 pw5Var = (pw5) arrayList.get(0);
            pw5Var.getClass();
            Map mapSingletonMap = Collections.singletonMap(pw5Var.a, pw5Var.b);
            mapSingletonMap.getClass();
            return mapSingletonMap;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(q0(arrayList.size()));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            pw5 pw5Var2 = (pw5) it.next();
            linkedHashMap.put(pw5Var2.a, pw5Var2.b);
        }
        return linkedHashMap;
    }

    public static Map u0(Map map) {
        map.getClass();
        int size = map.size();
        if (size == 0) {
            return pv2.a;
        }
        if (size != 1) {
            return new LinkedHashMap(map);
        }
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        Map mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        mapSingletonMap.getClass();
        return mapSingletonMap;
    }
}
