package defpackage;

import java.util.LinkedHashMap;
import java.util.List;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistData;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ds0 {
    public static BlacklistData a(List list) {
        LinkedHashMap linkedHashMap;
        if (list != null) {
            int iQ0 = x65.q0(hl1.G0(list, 10));
            if (iQ0 < 16) {
                iQ0 = 16;
            }
            linkedHashMap = new LinkedHashMap(iQ0);
            for (Object obj : list) {
                g00 g00Var = g00.a;
                linkedHashMap.put(g00.h(((BlacklistApp) obj).getPackageName()), obj);
            }
        } else {
            linkedHashMap = null;
        }
        return new BlacklistData(linkedHashMap);
    }
}
