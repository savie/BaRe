package defpackage;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class eb8 {
    public final HashMap a = new HashMap();
    public Object b;

    public final String a(String str) {
        StringBuilder sbN = fz5.n(str, "<value>: ");
        sbN.append(this.b);
        sbN.append("\n");
        String string = sbN.toString();
        HashMap map = this.a;
        if (map.isEmpty()) {
            return dj7.k(string, str, "<empty>");
        }
        for (Map.Entry entry : map.entrySet()) {
            StringBuilder sbN2 = fz5.n(string, str);
            sbN2.append(entry.getKey());
            sbN2.append(":\n");
            sbN2.append(((eb8) entry.getValue()).a(str.concat("\t")));
            sbN2.append("\n");
            string = sbN2.toString();
        }
        return string;
    }
}
