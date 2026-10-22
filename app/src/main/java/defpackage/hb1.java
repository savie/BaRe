package defpackage;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class hb1 {
    public static final LinkedHashMap a;

    static {
        Set setA0 = x50.A0(new String[]{"apkLink", "splitsLink", "sharedLibsLink", "dataLink", "extDataLink", "mediaLink", "expLink", "specialDataLink"});
        pw5[] pw5VarArr = {new pw5("apps", setA0), new pw5("cloudBackupsList", setA0), new pw5("folders", x50.A0(new String[]{"backupLink", "manifestLink"}))};
        LinkedHashMap linkedHashMap = new LinkedHashMap(x65.q0(3));
        x65.s0(linkedHashMap, pw5VarArr);
        a = linkedHashMap;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003e  */
    public static String a(Object obj, Set set, LinkedHashSet linkedHashSet, String str) {
        String strA;
        String strA2;
        if (obj != null) {
            if (obj instanceof Map) {
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    if (!(key instanceof String)) {
                        strA2 = eq3.k("Cloud metadata key at '", str, "' is not a string");
                    } else if (set.contains(key)) {
                        if (value == null) {
                            strA2 = null;
                        } else if (value instanceof String) {
                            if (!nq7.j0((CharSequence) value)) {
                                linkedHashSet.add(value);
                            }
                            strA2 = null;
                        } else {
                            strA2 = "Cloud link '" + str + "/" + key + "' is not a string";
                        }
                    } else if ((value instanceof Map) || (value instanceof Iterable)) {
                        strA2 = a(value, set, linkedHashSet, str + "/" + key);
                    } else {
                        strA2 = null;
                    }
                    if (strA2 != null) {
                        return strA2;
                    }
                }
            } else {
                if (!(obj instanceof Iterable)) {
                    return eq3.k("Cloud metadata value at '", str, "' is not a container");
                }
                Iterator it = ((Iterable) obj).iterator();
                it.getClass();
                int i = 0;
                while (it.hasNext()) {
                    int i2 = i + 1;
                    if (i < 0) {
                        fl1.F0();
                        throw null;
                    }
                    ub4 ub4Var = new ub4(i, it.next());
                    Object obj2 = ub4Var.b;
                    if (obj2 == null) {
                        strA = null;
                    } else {
                        boolean z = obj2 instanceof Map;
                        int i3 = ub4Var.a;
                        strA = (z || (obj2 instanceof Iterable)) ? a(obj2, set, linkedHashSet, str + "/" + i3) : u48.m("Cloud metadata value at '", str, "/", i3, "' is not a container");
                    }
                    if (strA != null) {
                        return strA;
                    }
                    i = i2;
                }
            }
        }
        return null;
    }
}
