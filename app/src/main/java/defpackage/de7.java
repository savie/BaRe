package defpackage;

import java.util.LinkedHashMap;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class de7 {
    public static final LinkedHashMap a = new LinkedHashMap();

    public static boolean a(String str) {
        String string;
        LinkedHashMap linkedHashMap = a;
        Boolean bool = (Boolean) linkedHashMap.get(str);
        if (bool != null) {
            return bool.booleanValue();
        }
        String str2 = (String) el1.U0(mp6.a.h(new String[]{"service check ".concat(str)}, ip6.SHIZUKU));
        boolean z = false;
        if (str2 != null && (string = nq7.H0(str2).toString()) != null && uq7.O(string, ": found", false)) {
            z = true;
        }
        linkedHashMap.put(str, Boolean.valueOf(z));
        return z;
    }
}
