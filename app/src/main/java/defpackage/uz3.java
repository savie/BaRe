package defpackage;

import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class uz3 {
    public static final Set a = x50.A0(new String[]{"apkLink", "splitsLink", "sharedLibsLink", "dataLink", "extDataLink", "mediaLink", "expLink", "specialDataLink", "backupLink", "manifestLink", "driveId"});

    public static final void a(LinkedHashSet linkedHashSet, Object obj) {
        String string;
        if (linkedHashSet.size() >= 20) {
            return;
        }
        if (obj instanceof Map) {
            for (Map.Entry entry : ((Map) obj).entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                if (linkedHashSet.size() >= 20) {
                    return;
                }
                if (el1.M0(a, key instanceof String ? (String) key : null)) {
                    String str = value instanceof String ? (String) value : null;
                    if (str != null && (string = nq7.H0(str).toString()) != null) {
                        String str2 = string.length() > 0 ? string : null;
                        if (str2 != null) {
                            linkedHashSet.add(str2);
                        }
                    }
                } else {
                    a(linkedHashSet, value);
                }
            }
            return;
        }
        if (obj instanceof Iterable) {
            for (Object obj2 : (Iterable) obj) {
                if (linkedHashSet.size() >= 20) {
                    return;
                } else {
                    a(linkedHashSet, obj2);
                }
            }
            return;
        }
        if (obj instanceof Object[]) {
            for (Object obj3 : (Object[]) obj) {
                if (linkedHashSet.size() >= 20) {
                    return;
                }
                a(linkedHashSet, obj3);
            }
        }
    }
}
