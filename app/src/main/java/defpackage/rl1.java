package defpackage;

import java.util.LinkedHashMap;
import com.bareapps.barebackup.BareApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class rl1 {
    public static final LinkedHashMap a(int i) {
        gv7 gv7Var = sl1.e;
        BareApp.Companion companion = BareApp.d;
        String[] stringArray = BareApp.Companion.c().getResources().getStringArray(i);
        stringArray.getClass();
        int iQ0 = x65.q0(stringArray.length);
        if (iQ0 < 16) {
            iQ0 = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iQ0);
        for (String str : stringArray) {
            str.getClass();
            linkedHashMap.put(ai8.g(str, "#"), "#".concat(ai8.d(str, "#")));
        }
        return linkedHashMap;
    }
}
